package rate;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class ExchangeRate {
	
	public List<String> getRateList() {
		
		List<String> rateList = new ArrayList<>();
		
		//접속 페이지의 데이터 가져오기
		try {
			//환율 정보를 가져올 웹 페이지 url
			String url= "https://finance.naver.com/marketindex/";
			
			//Connection 객체 생성
			Connection conn = Jsoup.connect(url); //import jsoup ~
			
			Document doc = conn.get(); //import jsoup ~
			
			//태그와 태그 선택자를 이용해서 데이터를 가져옴
			//<li> 데이터를 가져옴
			Elements contents = doc.select(".data_lst li"); //import jsoup ~ 
			//System.out.println(contents);
			
			for(Element element : contents) {//import jsoup ~
				//통화(currency), 환율 비율(rate)
				//selectFirst() 함수 사용 - class 이름인 blind 중 처음 값 만 필요함
				//String currency = elememt.select("span.blind").text(); 
				//나라이름 제외한 통화 이름만 출력 - split()
				String currency = element.selectFirst("span.blind").text(); //<span> 태그 중 class 속성이 blind 인 요소를 선택 및 text로 추출
				String rate = element.selectFirst("span.value").text();
				
				String[] currencyName = currency.split(" "); //" " 구분기호를 사용하여 각 단어 Array인 word에 저장
				//System.out.println(Arrays.toString(currencyName)); //currencyName 배열의 값 출력
				//System.out.println(currencyName[1] + ": " + rate); //currencyName 배열 중 통화를 나타내는 인덱스1의 값 출력
				//System.out.println(rate);
				
				//환율 정보를 리스트에 추가
				rateList.add(rate);					
				
				if(currency.equals("중국 CNY")) break;
				//if(currencyName[1].equals("CNY")) break;
			}
			
			// 리스트 출력
                //System.out.println("rateList : " + rateList);
            
		} catch (IOException e) {
			e.printStackTrace();
		}
		return rateList;
	}

}
