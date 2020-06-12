package com.control;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.pojo.Giveuser;
import com.pojo.User;
import com.service.GiveuserService;

@Controller
@RequestMapping("/give")
public class GiveuserControl {

	
	@Autowired
	private  GiveuserService  gs;
	
	
	//判断是否已经是 个人供应商或者公司供应商
	@RequestMapping(value="pdgs",method=RequestMethod.GET)
	public String pdGiver(Giveuser give,HttpSession session,PrintWriter out,HttpServletRequest  request,HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		//request.setCharacterEncoding(env);
		//request.setCharacterEncoding("utf-8");
		User user = (User) session.getAttribute("myuser");
		 Integer userid=  user.getUserid();
		 System.out.println(userid);
		 Giveuser  gsu=  gs.findgid(userid);
		 System.out.println(gsu);
		
		  String path = request.getContextPath();
		 System.out.println(path);
		if( gsu!=null ) {
			out.print("<script type='text/javascript'>alert('您已经成为供应商,无须再次升级');location.href='"+path+"/member-sj.jsp';</script>");
			return  null;
		}
		return "member-sjgy";
	}
	
	
	
	
	
	
	
	//账号升级为供应商---个人
	@RequestMapping(value="gradd",method=RequestMethod.POST)
	public String   addGivegr(Giveuser give,@RequestParam MultipartFile pic,HttpServletRequest request ,HttpSession session) {
		User user = (User) session.getAttribute("myuser");
		give.setUserid(user.getUserid());
		System.out.println(give.getUserid()+""+give.getJudge());
		System.out.println(give.getRname()+" "+give.getAddress());
		//获取文件夹的真实绝对路径
		String realpath=request.getSession().getServletContext().getRealPath("/upload");
		System.out.println(realpath);
		String uuid=UUID.randomUUID().toString();
		System.out.println(uuid);
		//原始文件名
		String oldname=pic.getOriginalFilename();
		File file = new File(realpath+"/"+uuid+oldname);
		System.out.println(file);
		//输入流读取内容
		InputStream is;
		try {
			
			is = pic.getInputStream();
			OutputStream os= new FileOutputStream(file);
			FileCopyUtils.copy(is, os);
			give.setSpath("upload/"+uuid+oldname);
			
			System.out.println("vvv:"+give.getSpath());
			int giveuser=gs.findAddgr(give);
			System.out.println(giveuser);
			session.setAttribute("giveuser", give);
		} catch (IOException e) {
			e.printStackTrace();
		}	
			return "member-tjcg";
	
	}
	
	
	//账号升级为供应商---个人
	@RequestMapping(value="gsadd", method=RequestMethod.POST)
	public String   addGivegs(Giveuser give,@RequestParam MultipartFile pic,HttpServletRequest request ,HttpSession session) {
		User user = (User) session.getAttribute("myuser");
		give.setUserid(user.getUserid());
		System.out.println(give.getUserid()+""+give.getJudge());
		System.out.println(give.getRname()+" "+give.getAddress());
		//获取文件夹的真实绝对路径
		String realpath=request.getSession().getServletContext().getRealPath("/upload");
		System.out.println(realpath);
		String uuid=UUID.randomUUID().toString();
		System.out.println(uuid);
		//原始文件名
		String oldname=pic.getOriginalFilename();
		File file = new File(realpath+"/"+uuid+oldname);
		System.out.println(file);
		//输入流读取内容
		InputStream is;
		try {
			
			is = pic.getInputStream();
			OutputStream os= new FileOutputStream(file);
			FileCopyUtils.copy(is, os);
			give.setSpath("upload/"+uuid+oldname);
			
			System.out.println("vvv:"+give.getSpath());
			int giveuser=gs.findAddgs(give);
		
			//int giveuser=gs.findAddgr(give);
			System.out.println(giveuser);
			session.setAttribute("giveuser", give);
		} catch (IOException e) {
			e.printStackTrace();
		}	
			return "member-tjcg";
	
	}
	
	
	
	
	
	
}
