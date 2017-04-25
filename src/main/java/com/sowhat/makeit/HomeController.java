package com.sowhat.makeit;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.*;
/*
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
*/

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "/KakaoLogin", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
	public String KakaoLogin(@RequestParam("code") String code , HttpServletRequest request, HttpServletResponse httpservlet)
	{
		System.out.println("code : "+code);
		
		JsonNode jsonToken = getAccessToken_Kakao(code);
		System.out.println("JSON 반환 : " + jsonToken.get("access_token"));
		return "KakaoLogin";
	}
	
	public static JsonNode getAccessToken_Kakao(String code){ 
	    final String RequestUrl = "https://kauth.kakao.com/oauth/token";

	    final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
	    postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
	    postParams.add(new BasicNameValuePair("client_id", "7e0540b264fec8a954659770843a3067"));    // REST API KEY
	    postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost:12219/makeit/KakaoLogin"));    // 리다이렉트 URI
	    postParams.add(new BasicNameValuePair("code", code));    // 로그인 과정중 얻은 code 값

	    final HttpClient client = HttpClientBuilder.create().build();
	    final HttpPost post = new HttpPost(RequestUrl);
	    JsonNode returnNode = null;
	
	    try {
	      post.setEntity(new UrlEncodedFormEntity(postParams));
	      final HttpResponse response = client.execute(post);
	      final int responseCode = response.getStatusLine().getStatusCode();

	      System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
	      System.out.println("Post parameters : " + postParams);
	      System.out.println("Response Code : " + responseCode);
	     
	      //JSON 형태 반환값 처리
	      ObjectMapper mapper = new ObjectMapper();
	      returnNode = mapper.readTree(response.getEntity().getContent());

	    } catch (UnsupportedEncodingException e) {
	      e.printStackTrace();
	    } catch (ClientProtocolException e) {
	      e.printStackTrace();
	    } catch (IOException e) {
	      e.printStackTrace();
	    } finally {
	        // clear resources
	    }
	    
	    return returnNode;
	}
	
	@RequestMapping(value = "/FacebookLogin", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
	public String FacebookLogin(@RequestParam("code") String code , HttpServletRequest request, HttpServletResponse httpservlet)
	{
		System.out.println("code : "+code);
		
		JsonNode jsonToken = getAccessToken_Facebook(code);
		System.out.println("JSON 반환 : " + jsonToken.get("access_token"));
		return "FacebookLogin";
	}
	
	public static JsonNode getAccessToken_Facebook(String code){ 
	    final String RequestUrl = "https://graph.facebook.com/v2.8/oauth/access_token";

	    final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
	    postParams.add(new BasicNameValuePair("client_id", "1227350160653331"));
	    postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost:12219/makeit/FacebookLogin"));    // REST API KEY
	    postParams.add(new BasicNameValuePair("client_secret", "7534e26b7b3c095610bd788ab419db93"));    // 리다이렉트 URI
	    postParams.add(new BasicNameValuePair("code", code));    // 로그인 과정중 얻은 code 값

	    final HttpClient client = HttpClientBuilder.create().build();
	    final HttpPost post = new HttpPost(RequestUrl);
	    JsonNode returnNode = null;
	
	    try {
	      post.setEntity(new UrlEncodedFormEntity(postParams));
	      final HttpResponse response = client.execute(post);
	      final int responseCode = response.getStatusLine().getStatusCode();

	      System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
	      System.out.println("Post parameters : " + postParams);
	      System.out.println("Response Code : " + responseCode);
	     
	      //JSON 형태 반환값 처리
	      ObjectMapper mapper = new ObjectMapper();
	      returnNode = mapper.readTree(response.getEntity().getContent());

	    } catch (UnsupportedEncodingException e) {
	      e.printStackTrace();
	    } catch (ClientProtocolException e) {
	      e.printStackTrace();
	    } catch (IOException e) {
	      e.printStackTrace();
	    } finally {
	        // clear resources
	    }
	    
	    return returnNode;
	}
	
	@RequestMapping(value = "/additionalInformation", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
	public String login01()
	{
		return "additionalInformation";
	}

	
}
