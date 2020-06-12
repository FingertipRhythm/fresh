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
import com.pojo.Puruser;
import com.pojo.User;
import com.service.PuruserService;

@Controller
@RequestMapping("/pur")
public class PuruserControl {
	
	@Autowired
	private PuruserService ps;
	
	//�ж��Ƿ��Ѿ��� ���˲ɹ��̻��߹�˾�ɹ���
		@RequestMapping(value="pdgs",method=RequestMethod.GET)
		public String pdGiver(HttpSession session,PrintWriter out,HttpServletRequest  request,HttpServletResponse response) {
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("utf-8");
			
			//request.setCharacterEncoding("utf-8");
			User user = (User) session.getAttribute("myuser");
			 Integer userid=  user.getUserid();
			 System.out.println(userid);
			 Puruser  puser= ps.findgid(userid);
			 
			/* Giveuser  gsu=  gs.findgid(userid);*/
			 System.out.println(puser);
			
			  String path = request.getContextPath();
			 System.out.println(path);
			if( puser!=null ) {
				out.print("<script type='text/javascript'>alert('���Ѿ���Ϊ��Ӧ��,�����ٴ�����');location.href='"+path+"/member-sj.jsp';</script>");
				return  null;
			}
			return "member-sjcj";
		}
		
	
		//�˺�����Ϊ��Ӧ��---����
		@RequestMapping(value="gradd",method=RequestMethod.POST)
		public String   addGivegr(Puruser puruser,@RequestParam MultipartFile pic,HttpServletRequest request ,HttpSession session) {
			User user = (User) session.getAttribute("myuser");
			puruser.setUserid(user.getUserid());
			System.out.println(puruser.getUserid()+""+puruser.getJudge());
			System.out.println(puruser.getSname()+" "+puruser.getAddress());
			//��ȡ�ļ��е���ʵ����·��
			String realpath=request.getSession().getServletContext().getRealPath("/upload");
			System.out.println(realpath);
			String uuid=UUID.randomUUID().toString();
			System.out.println(uuid);
			//ԭʼ�ļ���
			String oldname=pic.getOriginalFilename();
			File file = new File(realpath+"/"+uuid+oldname);
			System.out.println(file);
			//��������ȡ����
			InputStream is;
			try {
				
				is = pic.getInputStream();
				OutputStream os= new FileOutputStream(file);
				FileCopyUtils.copy(is, os);
				puruser.setSpath("upload/"+uuid+oldname);
				
				System.out.println("vvv:"+puruser.getSpath());
				int  pu= ps.findAddgr(puruser);
				
				
				System.out.println(pu);
				session.setAttribute("puruser", pu);
			} catch (IOException e) {
				e.printStackTrace();
			}	
				return "member-tjcg";
		
		}
		

		//�˺�����Ϊ��Ӧ��---����
		@RequestMapping(value="gsadd", method=RequestMethod.POST)
		public String   addGivegs(Puruser puruser ,@RequestParam MultipartFile pic,HttpServletRequest request ,HttpSession session) {
			User user = (User) session.getAttribute("myuser");
			puruser.setUserid(user.getUserid());
			System.out.println(puruser.getUserid()+""+puruser.getJudge());
			System.out.println(puruser.getSname()+" "+puruser.getAddress());
			//��ȡ�ļ��е���ʵ����·��
			String realpath=request.getSession().getServletContext().getRealPath("/upload");
			System.out.println(realpath);
			String uuid=UUID.randomUUID().toString();
			System.out.println(uuid);
			//ԭʼ�ļ���
			String oldname=pic.getOriginalFilename();
			File file = new File(realpath+"/"+uuid+oldname);
			System.out.println(file);
			//��������ȡ����
			InputStream is;
			try {
				
				is = pic.getInputStream();
				OutputStream os= new FileOutputStream(file);
				FileCopyUtils.copy(is, os);
				puruser.setSpath("upload/"+uuid+oldname);
				
				System.out.println("vvv:"+puruser.getSpath());
				int giveuser=ps.findAddgs(puruser);
			
				//int giveuser=gs.findAddgr(give);
				System.out.println(giveuser);
				session.setAttribute("giveuser", puruser);
			} catch (IOException e) {
				e.printStackTrace();
			}	
				return "member-tjcg";
		
		}
	
	
	

}
