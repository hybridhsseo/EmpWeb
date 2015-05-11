package com.webapp.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="/file")
public class ImageController {
	
	static Log log = LogFactory.getLog(ImageController.class);
	
	@RequestMapping(value="upload", method = RequestMethod.POST)
	public String upload(String title, MultipartFile image) {
		log.info("##############################");
		log.info("title = " + title);
		log.info("image size= " + image.getSize());
		log.info("image original file name= " + image.getOriginalFilename());
		log.info("##############################");
		
		return "";
	}
	
	@RequestMapping(value="download", method = RequestMethod.POST)
	public String download() {
		
		
		return "";
	}

}
