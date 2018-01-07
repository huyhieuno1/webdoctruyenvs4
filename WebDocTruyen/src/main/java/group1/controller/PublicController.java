package group1.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.service.jta.platform.internal.SynchronizationRegistryBasedSynchronizationStrategy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group1.model.Chap;
import group1.model.Comment;
import group1.model.Images;
import group1.model.Truyen;
import group1.service.ChapServiceimpl;
import group1.service.ImagesServiceIpml;
import group1.service.TruyenServiceimpl;
import group1.util.HibernateUtil;
import group1.util.Stringmd5;


@Controller
public class PublicController {

	private ArrayList<Comment> listCmt;
	 public PublicController() {
	        super();
	        listCmt = new ArrayList<>();
	    }
	@RequestMapping(value="/" , method = RequestMethod.GET)
	public ModelAndView displayIndex(){
//		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//		Session session = sessionFactory.openSession();
//		session.beginTransaction();
//		session.getTransaction().commit();
//		session.close();
//		sessionFactory.close();
		return new ModelAndView("index");
	}
	@RequestMapping(value="/category" , method = RequestMethod.GET)
	public ModelAndView displayCategory(){
		
		return new ModelAndView("category");
	}
	@RequestMapping(value="/preview" , method = RequestMethod.GET)
	public ModelAndView displayDetail(){
		
		return new ModelAndView("preview");
	}
	@RequestMapping(value="/chap-detail" , method = RequestMethod.GET)
	public ModelAndView displayChapDetail(){
		
		return new ModelAndView("chap-detail");
	}
	@RequestMapping(value = "/handlingpreview", method=RequestMethod.GET)
	public String handlingLogin(HttpServletRequest arg0, HttpServletResponse arg1m,RedirectAttributes redirectAttributes,
	@RequestParam(value="id") int id, HttpSession session){
			TruyenServiceimpl truyenServiceimpl = new TruyenServiceimpl();
			ChapServiceimpl chapServiceimpl = new ChapServiceimpl();
			List<Chap> listChap = chapServiceimpl.getListChap(id);
			Truyen truyen = truyenServiceimpl.preview(id);
			session.setAttribute("truyen", truyen);
			session.setAttribute("listChap", listChap);
			System.out.println("list Chap"+listChap.size());
			return "redirect:preview";
	}
	@RequestMapping(value = "/handlingchap-detail", method=RequestMethod.GET)
	public String handlingChapDetail(HttpServletRequest arg0, HttpServletResponse arg1m,RedirectAttributes redirectAttributes,
	@RequestParam(value="id") int id, HttpSession session){
			ImagesServiceIpml imagesServiceIpml = new ImagesServiceIpml();
			List<Images> listImg = imagesServiceIpml.getList(id);
			session.setAttribute("listImg", listImg);
			System.out.println(" listImg"+listImg.size());
			return "redirect:chap-detail";
	}
	
	@RequestMapping(value="/register" , method = RequestMethod.GET)
	public ModelAndView displayRegister(){
		
		return new ModelAndView("register");
	}
	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public ModelAndView displayLogin(){
		
		return new ModelAndView("login");
	}
	@RequestMapping(value="/comment" , method = RequestMethod.POST)
	public void comment(HttpServletRequest arg0, HttpServletResponse arg1m,RedirectAttributes redirectAttributes,
	@RequestParam(value="acmt") String cmt, HttpSession session) throws IOException{
		
		//ArrayList<Comment> listCmt = new ArrayList<>();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String date = sdf.format(new Date());
		Comment objComment = new Comment("",cmt ,date);
		System.out.println(objComment.getComment() + objComment.getDate());
		listCmt.add(objComment);
		session.setAttribute("listCmt", listCmt);
		System.out.println(listCmt.size());
		for (Comment objCmt : listCmt) {
		arg1m.getWriter().print(
				"<div class=\"item-cmt\">" +
				"<p class=\"name-cmt\">"+objCmt.getFullName()+"</p>"+
				"<p class=\"content-cmt\">"+objCmt.getComment()+"</p>"+
				"<p class=\"time-cmt\">"+objCmt.getDate()+"</p>"+
			"</div>"		
		);
		
	   }
		//return "redirect:chap-detail";
	}
}
