package G04;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import G04.ckeditor;
import G04.ckeditorDao;

import java.awt.Dialog.ModalExclusionType;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;

@Controller
public class FileUploadController {


    
    @Autowired
    ckeditorService webInfoService;
    
    
  

 
    
    
    @RequestMapping("/")
    public String listUploadedFiles(Model model) throws IOException
    {
        return "jsp/home";
    }
    
    @RequestMapping("/admin")
    public String admin(Model model) throws IOException
    {
    	List<ckeditor> webpages=webInfoService.findAllWebPages();
    	model.addAttribute("webpages",webpages);

        return "jsp/example";
    }
    
    @RequestMapping(value = { "/about_page" }, method = RequestMethod.GET)
    public String about(Model model){
    
    	ckeditor callpaper=webInfoService.findById(1);
    	model.addAttribute("callpaper",callpaper);
		return "jsp/Default789b";
    }
    
    @RequestMapping(value = { "/callpaper" }, method = RequestMethod.GET)
    public String callpaper(Model model){
    
    	ckeditor callpaper=webInfoService.findById(1);
    	model.addAttribute("callpaper",callpaper);
		return "jsp/Default789b";
    }
    
    @RequestMapping(value = { "/submission" }, method = RequestMethod.GET)
    public String submission(Model model){
    	ckeditor submission=webInfoService.findById(2);
    	model.addAttribute("submission",submission);
		return "jsp/Defaultd478";
    	
    	
    }
    
    @RequestMapping(value = { "/registation" }, method = RequestMethod.GET)
    public String registation(Model model)
    {
    	
    	ckeditor registration=webInfoService.findById(3);
    	model.addAttribute("registration",registration);
		return "jsp/Defaulta8ef";	
    }
    
    @RequestMapping(value = { "/keynotespeaker" }, method = RequestMethod.GET)
    public String keynotespeaker(Model model){
    	ckeditor keynotespeaker=webInfoService.findById(4);
    	model.addAttribute("keynotespeaker",keynotespeaker);
		return "jsp/Default6b73";	
    }
    
    @RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
    public String contact(Model model){
    	ckeditor contact=webInfoService.findById(7);
    	model.addAttribute("contact",contact);
		return "jsp/Default84ba";	
    }
    
    @RequestMapping(value = { "/home_page" }, method = RequestMethod.GET)
    public String homepage(Model model){
    	
		return "jsp/Default71a5.jsp?PageId=8cb7e0c5-10f3-438b-8881-a74c24b373e3";	
    }
    @RequestMapping(value = { "/venuehotel" }, method = RequestMethod.GET)
    public String hotelmapping(Model model){
    	ckeditor venuehotel=webInfoService.findById(5);
    	model.addAttribute("venuehotel",venuehotel);
		return "jsp/Venue_Hotel";	
    }
    
    @RequestMapping(value = { "/latestnewsFirst" }, method = RequestMethod.GET)
    public String latestnewsFirst(Model model){
		return "jsp/index52be.jsp?ArticleId=3af2fa01-2645-4516-a65a-67bfec768e13";	
    }
    
    
    @RequestMapping(value = { "/latestnewsSecond" }, method = RequestMethod.GET)
    public String latestnewsSecond(Model model){
		return "jsp/indexe41c.jsp?ArticleId=bc474489-26ce-4997-a1c0-b37dce27b202";	
    }
    
    
    @RequestMapping(value = { "/latestnewsThird" }, method = RequestMethod.GET)
    public String latestnewsThird(Model model){
		return "jsp/indexc489.jsp?ArticleId=f796f938-0681-4d25-b47e-6bcd24536152";	
    }
    
    
	@RequestMapping(value = { "/delete-page-{pageID}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String pageID) {
		int id=Integer.parseInt(pageID);
		webInfoService.deleteUserById(id);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = { "/new-webpage" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		ckeditor webInfo = new ckeditor();
		model.addAttribute("webInfo", webInfo);
		return "jsp/regist";
	}

	
	@RequestMapping(value = { "/new-webpage" }, method = RequestMethod.POST)
	public String saveUser(@Valid ckeditor webInfo, BindingResult result,
			ModelMap model) 
	{
		webInfoService.saveWebpage(webInfo);
		return "redirect:/";
	}
    
    
	@RequestMapping(value = { "/edit-webpage-{pageID}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String pageID, ModelMap model) {
		int id=Integer.parseInt(pageID);
		ckeditor webInfo = webInfoService.findById(id);
		model.addAttribute("webInfo", webInfo);
	
		return "jsp/regist";
	}
	
	@RequestMapping(value = { "/edit-webpage-{pageID}" }, method = RequestMethod.POST)
	public String updateUser(@Valid ckeditor webInfo, 
			ModelMap model, @PathVariable int pageID) {

	

		webInfoService.updateWebpage(webInfo);

		
		return "redirect:/";
	}

    

}
