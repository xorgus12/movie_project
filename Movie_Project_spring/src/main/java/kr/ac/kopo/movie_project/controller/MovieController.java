package kr.ac.kopo.movie_project.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.ac.kopo.movie_project.model.Kofic;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;
@Controller
public class MovieController {
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@PostMapping("/koficmovie")
	public Object kobisMovie(@RequestBody Kofic item) throws OpenAPIFault, Exception{
		String key="52ed877329884c9bcff27fca7daf01d0";
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		cal.add(Calendar.DATE, -1);
		String date = sdf.format(cal.getTime());
		
		
		String itemPerPage=item.getRank();
		
		KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
		String daliydata=service.getDailyBoxOffice(true,date,itemPerPage,"","","");

		ObjectMapper mapper = new ObjectMapper();
		HashMap<String,Object> data =mapper.readValue(daliydata,HashMap.class);
		System.out.println("데이터"+data);
		HashMap<String,Object> boxOfficeResult=(HashMap<String, Object>) data.get("boxOfficeResult");
		List<Kofic> dailyBoxOfficeList=(List<Kofic>) boxOfficeResult.get("dailyBoxOfficeList");
		int resultnum=Integer.parseInt(item.getRnum())-1;
		System.out.println(dailyBoxOfficeList.get(resultnum)+"범위 안벗어남..");
		return dailyBoxOfficeList.get(resultnum);
	}
	@ResponseBody
	@PostMapping("/navermovie")
	public Object naverMovie(@RequestBody Kofic moviedata) {
		System.out.println("나 왔데이!"+moviedata.getMovieNm());
		String clientID = "VqLhQsyK7_jem5SPZGte"; 
		String clientSecret = "z73KtTgaHW";
        try {
        	String text;
    		try {
    			text = URLEncoder.encode(moviedata.getMovieNm(), "UTF-8");
    		} catch (UnsupportedEncodingException e) {
    			throw new RuntimeException("검색어 인코딩 실패", e);
    		}
            
            String apiURL = "https://openapi.naver.com/v1/search/movie";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-Naver-Client-Id", clientID);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            // post request
            String postParams ="query="+text;
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println(response.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return "";
	}
	
	/*
	 * 

		
		String responseBody = get(apiURL, requestHeaders); 
		System.out.println("귀한 정보"+responseBody);
		
		
		return "";*/
}
