package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import blike.Blike;
import blike.BlikeDAO;
import board.Board;
import board.BoardDAO;
import board1.Blike1;
import board1.Blike1DAO;
import board1.Board1;
import board1.Board1DAO;
import board1.Reply1;
import board1.Reply1DAO;
import board2.Blike2;
import board2.Blike2DAO;
import board2.Board2;
import board2.Board2DAO;
import board2.Reply2;
import board2.Reply2DAO;
import board3.Blike3;
import board3.Blike3DAO;
import board3.Board3;
import board3.Board3DAO;
import board3.Reply3;
import board3.Reply3DAO;
import notice.NLikeDAO;
import notice.NReply;
import notice.NReplyDAO;
import notice.Notice;
import notice.NoticeDAO;
import rate.ExchangeRate;
import reply.Reply;
import reply.ReplyDAO;
import users.Users;
import users.UsersDAO;

@WebServlet("*.do")	// "/" 이하의 경로에서 do로 끝나는 확장자는 모두 허용
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 10L;
	BoardDAO bDAO;
	ReplyDAO rDAO;
	BlikeDAO lDAO;
	Board1DAO b1DAO;
	Reply1DAO r1DAO;
	Blike1DAO l1DAO;
	Board2DAO b2DAO;
	Reply2DAO r2DAO;
	Blike2DAO l2DAO;
	Board3DAO b3DAO;
	Reply3DAO r3DAO;
	Blike3DAO l3DAO;
	NoticeDAO nDAO;
	NReplyDAO nrDAO;
	NLikeDAO nlDAO;
	UsersDAO uDAO;
	ExchangeRate rate;
       
    public MainController() {	//생성자
        bDAO = new BoardDAO();
        rDAO = new ReplyDAO();
        lDAO = new BlikeDAO();
        b1DAO = new Board1DAO();
        r1DAO = new Reply1DAO();
        l1DAO = new Blike1DAO();
        b2DAO = new Board2DAO();
        r2DAO = new Reply2DAO();
        l2DAO = new Blike2DAO();
        b3DAO = new Board3DAO();
        r3DAO = new Reply3DAO();
        l3DAO = new Blike3DAO();
        nDAO = new NoticeDAO();
        nrDAO = new NReplyDAO();
        nlDAO = new NLikeDAO();
        uDAO = new UsersDAO();
        rate = new ExchangeRate();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩
		request.setCharacterEncoding("utf-8");
		//응답할 컨텐츠 유형
		response.setContentType("text/html; charset=utf-8");
		
		//경로 설정
		//uri = 컨텍스트(/) + 파일(.do)
		String uri = request.getRequestURI();
		//커맨드 패턴
		String command = uri.substring(uri.lastIndexOf("/"));
		
		String nextPage = "";
		
		//세션 객체 생성
		HttpSession session = request.getSession();
		//view에 출력 객체 생성
		PrintWriter out = response.getWriter();
		

		if(command.equals("/main.do")){ //http://localhost:8080/
					
			
			//메인 페이지에 게시글 보내기
			List<Board> boardList = bDAO.getBoardList();
			request.setAttribute("boardList", boardList);			
			
			if(boardList.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board[] newBoards = {boardList.get(0), boardList.get(1), boardList.get(2)};
				
				request.setAttribute("boardList", newBoards);
			}
			
			//메인 페이지에 게시글 보내기
			List<Board> likeList = bDAO.getLikeList();
			request.setAttribute("likeList", likeList);			
			
			if(likeList.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board[] newLikes = {likeList.get(0), likeList.get(1), likeList.get(2)};
				
				request.setAttribute("likeList", newLikes);
			}
			
			
			//메인 페이지에 동행자 찾기글 보내기
			List<Board1> boardList1 = b1DAO.getBoardList1();
			request.setAttribute("boardList1", boardList1);			
			
			if(boardList1.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board1[] newBoards1 = {boardList1.get(0), boardList1.get(1), boardList1.get(2)};
				
				request.setAttribute("boardList1", newBoards1);
			}

			List<Board1> likeList1 = b1DAO.getLikeList1();
			request.setAttribute("likeList1", likeList1);			
			
			if(likeList1.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board1[] newLikes1 = {likeList1.get(0), likeList1.get(1), likeList1.get(2)};
				
				request.setAttribute("likeList1", newLikes1);
			}
			
			//메인 페이지에 나의 계획 보내기
			List<Board2> boardList2 = b2DAO.getBoardList2();
			request.setAttribute("boardList2", boardList2);			
			
			if(boardList2.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board2[] newBoards2 = {boardList2.get(0), boardList2.get(1), boardList2.get(2)};
				
				request.setAttribute("boardList2", newBoards2);
			}
			
			List<Board2> likeList2 = b2DAO.getLikeList2();
			request.setAttribute("likeList2", likeList2);			
			
			if(likeList2.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board2[] newLikes2 = {likeList2.get(0), likeList2.get(1), likeList2.get(2)};
				
				request.setAttribute("likeList2", newLikes2);
			}
			
			//환율정보 가져오기
			List<String> rateList = rate.getRateList();
			request.setAttribute("rateList", rateList);
			
			nextPage="/main.jsp";
		
		//찜한 목록
		}else if(command.equals("/wishlist.do")) {

			String id = "show3239";
			List<Board> boardList = bDAO.getBoardListBlike(id);
			
			request.setAttribute("boardList", boardList);	
			
			
			if(boardList.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board w1 = boardList.get(0);
				Board w2 = boardList.get(1);
				Board w3 = boardList.get(2);
				
				request.setAttribute("w1", w1);
				request.setAttribute("w2", w2);
				request.setAttribute("w3", w3);
			}else if(boardList.size() == 2) {
				Board w1 = boardList.get(0);
				Board w2 = boardList.get(1);

				request.setAttribute("w1", w1);
				request.setAttribute("w2", w2);
			}else if(boardList.size() == 1) {
				Board w1 = boardList.get(0);

				request.setAttribute("w1", w1);
			}
			
			
			List<Board1> boardList1 = b1DAO.getBoardListBlike1(id);
			
			request.setAttribute("boardList1", boardList1);	
			
			if(boardList1.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board1 w11 = boardList1.get(0);
				Board1 w21 = boardList1.get(1);
				Board1 w31 = boardList1.get(2);
				
				request.setAttribute("w11", w11);
				request.setAttribute("w21", w21);
				request.setAttribute("w31", w31);
				
			}else if(boardList1.size() == 2) {
				Board1 w11 = boardList1.get(0);
				Board1 w21 = boardList1.get(1);

				request.setAttribute("w11", w11);
				request.setAttribute("w21", w21);
				
			}else if(boardList1.size() == 1) {
				Board1 w11 = boardList1.get(0);

				request.setAttribute("w11", w11);
			}
			
			List<Board2> boardList2 = b2DAO.getBoardListBlike2(id);
			
			request.setAttribute("boardList2", boardList2);	
			
			if(boardList2.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board2 w12 = boardList2.get(0);
				Board2 w22 = boardList2.get(1);
				Board2 w32 = boardList2.get(2);
				
				request.setAttribute("w12", w12);
				request.setAttribute("w22", w22);
				request.setAttribute("w32", w32);
			}else if(boardList2.size() == 2) {
				Board2 w12 = boardList2.get(0);
				Board2 w22 = boardList2.get(1);

				request.setAttribute("w12", w12);
				request.setAttribute("w22", w22);
			}else if(boardList2.size() == 1) {
				Board2 w12 = boardList2.get(0);

				request.setAttribute("w12", w12);
			}
			
			List<Board3> boardList3 = b3DAO.getBoardListBlike3(id);
			
			request.setAttribute("boardList3", boardList3);	
			
			if(boardList3.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board3 w13 = boardList3.get(0);
				Board3 w23 = boardList3.get(1);
				Board3 w33 = boardList3.get(2);
				
				request.setAttribute("w13", w13);
				request.setAttribute("w23", w23);
				request.setAttribute("w33", w33);
				
			}else if(boardList3.size() == 2) {
				Board3 w13 = boardList3.get(0);
				Board3 w23 = boardList3.get(1);

				request.setAttribute("w13", w13);
				request.setAttribute("w23", w23);
				
			}else if(boardList3.size() == 1) {
				Board3 w13 = boardList3.get(0);

				request.setAttribute("w13", w13);
			}
			
			
			nextPage="/member/wishlist.jsp";
		}else if(command.equals("/mypage.do")) {
			// 현재 세션에서 세션 ID 가져오기
			String sessionId = (String) session.getAttribute("sessionId");
			//세션 ID에 대한 상세정보 가져오기
			Users usersList = uDAO.getUsers(sessionId);
			
			//user 정보를 보냄 (소개글 넣기 위해)
			request.setAttribute("user", usersList);
			
			nextPage="/member/mypage.jsp";
			
		//프로필 사진 변경
		}else if(command.equals("/editprofile_pic.do")) {
			Users u = new Users();
			
			// 현재 세션에서 세션 ID 가져오기
			String sessionId = (String) session.getAttribute("sessionId");
			
			//프로필 사진 추가
			String realFolder = "C:\\semi\\semi\\src\\main\\webapp\\upload\\profile_pic";
			int maxSize = 10*1024*1024; //10MB
			String encType = "utf-8";	//파일 이름 한글 인코딩
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			
			//5가지 인자
			MultipartRequest multi = 
					new MultipartRequest(request, realFolder, maxSize, 
							encType, policy);
			
			//file 파라미터 추출
			Enumeration<?> files = multi.getFileNames();
			String filename = "";
			while(files.hasMoreElements()) {	//파일 이름이 있는 동안 반복
				String userFilename = (String) files.nextElement();
				
				//실제 저장될 이름
				filename = multi.getFilesystemName(userFilename);		
			}
			//db에 저장
			u.setImage(filename);
			
			//파일 이름 확인
			System.out.println(filename);
			
			uDAO.updateProfilePic(u, sessionId);
			
			// 업데이트된 사용자 정보 다시 로드(리디렉트)
		    Users updatedUser = uDAO.getUsers(sessionId);
		    request.setAttribute("user", updatedUser);
			
			nextPage="/member/mypage.jsp";
			//프로필 수정
			}else if(command.equals("/editprofile.do")) {
				Users u = new Users();
				
				// 현재 세션에서 세션 ID 가져오기
				String sessionId = (String) session.getAttribute("sessionId");
			    
				//수정란에 입력한 닉네임, 소개글 가져오기
				String id = request.getParameter("id"); //변경 닉네임
				String introduction = request.getParameter("introduction");
				
				//수정 처리 메서드
				u.setIntroduction(introduction);
				u.setId(id);
				
				//데이터 들어오는 것 확인
				System.out.println(introduction);
				System.out.println(id);
				
				uDAO.editProfile(u, sessionId);
				
				// 업데이트된 사용자 정보 다시 로드(리디렉트)
			    //Users updatedUser = uDAO.getUsers(sessionId);
			    //request.setAttribute("user", updatedUser);
				
				nextPage="/member/mypage.jsp";
		    }else if(command.equals("/setting.do")) {
		        Users users = new Users();
		        
		        // 현재 세션에서 세션 ID 가져오기
		        String sessionId = (String) session.getAttribute("sessionId");
		         
		        //수정란에 입력한 닉네임, 소개글 가져오기
		        String pw = request.getParameter("pw");
		        String pw2 = request.getParameter("pw2");
		        String tel = request.getParameter("tel"); //변경 닉네임
		        String email = request.getParameter("email"); //변경 닉네임
		        
		        //수정 처리 메서드
		        users.setPw(pw);
		        users.setPw(pw2);
		        users.setTel(tel);
		        users.setEmail(email);
		        
		        uDAO.editProfile(users, sessionId);
		        
		        // 업데이트된 사용자 정보 다시 로드(리디렉트)
		         Users updatedUser = uDAO.getUsers(sessionId);
		         request.setAttribute("user", updatedUser);
		        
		        nextPage="/member/setting.jsp";
		     }else if(command.equals("/userslist.do")) {
			//회원 정보를 db에서 가져옴
			List<Users> usersList = uDAO.getUsersList();
			//모델 생성
			request.setAttribute("usersList", usersList);
			//이동할 페이지
			nextPage = "/member/userslist.jsp";
		}else if(command.equals("/joinform01.do")) {
			nextPage = "/member/joinform01.jsp";
		}else if(command.equals("/insertusers.do")) {
			//빈 회원 객체를 생성해서 데이터를 받아서 세팅
			//폼 데이터 받기
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String tel = request.getParameter("tel");
			String email = request.getParameter("email") + "@" + request.getParameter("domain-txt");
			int birth = Integer.parseInt(request.getParameter("birth-year") + request.getParameter("birth-month") + request.getParameter("birth-day"));
			String gender = request.getParameter("gender");
			
			Users u = new Users();
			//db에 저장
			u.setId(id);
			u.setPw(pw);
			u.setTel(tel);
			u.setEmail(email);
			u.setBirth(birth);
			u.setGender(gender);
			//db에 저장함
			uDAO.insertUsers(u);
			//자동 로그인
			session.setAttribute("sessionId", u.getId());	//아이디를 가져와서 sessionId(세션이름) 발급
			nextPage = "/index.jsp";
		}else if(command.equals("/usersview.do")) {
			String id = request.getParameter("id");
			Users users = uDAO.getUsers(id);
			//모델 생성
			request.setAttribute("users", users);
			nextPage = "/member/usersview.jsp";
		}else if(command.equals("/loginform.do")){	//로그인 폼 페이지 이동
			nextPage = "/member/loginform.jsp";
		}else if(command.equals("/login.do")) {	//로그인 처리
			//아이디와 비밀번호 파라미터 받기
			String email = request.getParameter("email");
			String pw = request.getParameter("pw");
			
			//빈 객체를 생성해서 아이디와 비번 세팅해줌
			Users u = new Users();
			u.setEmail(email);
			u.setPw(pw);
			
			//로그인 인증
			Users users = uDAO.checkLogin(u);
			String id = users.getId();
			if(id != null){
				session.setAttribute("sessionId", id);//아이디 세션 발급
				
				//로그인 후 페이지 이동
				//nextPage = "/index.jsp";			
				out.println("<script>");
				out.println("alert('로그인 되었습니다.')");
				out.println("location.href='../main.do'");
				out.println("</script>");
				out.flush();
				out.close();
			}else{
				//에러를 모델로 보내기
				out.println("<script>");
				out.println("alert('아이디나 비밀번호를 다시 확인해주세요.')");
				out.println("location.href='../loginform.do'");
				out.println("</script>");
				out.flush();
				out.close();
				//String error = "아이디나 비밀번호를 다시 확인해주세요.";
				//request.setAttribute("error", error);
				//에러 발생 후 페이지 이동
				//nextPage="/users/loginform.do";
			}
			
		}else if(command.equals("/logout.do")) {
			session.invalidate();	//모든 세션 삭제
			//nextPage = "/index.jsp";

			out.println("<script>");
			out.println("alert('로그아웃 되었습니다.')");
			out.println("location.href='../index.jsp'");
			out.println("</script>");
			out.flush();
			out.close();
		}
		
		//게시판
		if(command.equals("/boardlist.do")) {
			//페이지 처리
			String pageNum = request.getParameter("pageNum");
			if(pageNum == null) { //페이지 번호를 클릭하지 않았을때 기본값
				pageNum = "1";
			}
			
			//현재 페이지
			int currentPage = Integer.parseInt(pageNum);
			//페이지당 게시글 수 - 10(pageSize)
			int pageSize = 10;
			//1페이지의 첫번째행(startRow) : 1번, 2페이지 : 11번, 3페이지 : 21
			int startRow = (currentPage - 1) * pageSize + 1;
			
			//시작페이지(startPage) : 12행 - 2페이지, 22행 - 3페이지
			int startPage = startRow / pageSize + 1;
			
			//종료(끝) 페이지 : 전체 게시글총수 / 페이지당 개수
			int totalRow = bDAO.getBoardCount();
			int endPage = totalRow / pageSize;
			//페이지당 개수(10)로 나누어 떨어지지 않는 경우 코딩
			endPage = (totalRow % pageSize == 0) ? endPage : endPage + 1;
			
			//검색 처리
			String _field = request.getParameter("field"); //임시로 저장
			String _kw = request.getParameter("kw");
			
			String field = "";
			String kw = "";
			
			//null 처리
			if(_field != null) { //필드값이 있는 경우
				field = _field;
			}else { //필드값이 없는 경우(디폴트)
				field = "title";
			}
			
			if(_kw != null) { //검색어가 있는 경우
				kw = _kw;
			}else {  //검색어가 없는 경우
				kw = "";
			}
		
			List<Board> boardList = bDAO.getBoardList(field, kw, currentPage);
			
			//모델로 생성
			request.setAttribute("boardList", boardList);
			request.setAttribute("page", currentPage);    //현재 페이지
			request.setAttribute("startPage", startPage); //시작 페이지
			request.setAttribute("endPage", endPage);     //종료 페이지
			request.setAttribute("field", field);  //검색어
			request.setAttribute("kw", kw);  //검색어
			
			List<Board> likeList = bDAO.getLikeList();
			request.setAttribute("likeList", likeList);			
			
			if(likeList.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board l1 = likeList.get(0);
				Board l2 = likeList.get(1);
				Board l3 = likeList.get(2);
				
				request.setAttribute("l1", l1);
				request.setAttribute("l2", l2);
				request.setAttribute("l3", l3);
			}
			
			nextPage="/board/boardlist.jsp";
		}else if(command.equals("/writeform.do")) {
			nextPage="/board/writeform.jsp";
		}else if(command.equals("/write.do")) {
			
			String realFolder = "C:\\teamworks\\teamwork\\src\\main\\webapp\\upload";
			int maxSize = 10*1024*1024; //10MB
			String encType = "utf-8";	//파일 이름 한글 인코딩
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			
			//5가지 인자
			MultipartRequest multi = 
					new MultipartRequest(request, realFolder, maxSize, 
							encType, policy);
			
			
			//폼 데이터 받기
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");
			
			//세션 가져오기
			String id = (String) session.getAttribute("sessionId");
			
			//file 파라미터 추출
			Enumeration<?> files = multi.getFileNames();
			String filename = "";
			while(files.hasMoreElements()) {	//파일 이름이 있는 동안 반복
				String userFilename = (String) files.nextElement();
				
				//실제 저장될 이름
				filename = multi.getFilesystemName(userFilename);		
			}
			


			
			//db에 저장
			Board b = new Board();
			b.setTitle(title);
			b.setContent(content);
			b.setFilename(filename);
			b.setId(id);
			
			bDAO.write(b);
					
		}else if(command.equals("/boardview.do")){

			//글 제목에서 요청한 글 번호 받기
			int bno = Integer.parseInt(request.getParameter("bno"));
			
			//글 상세보기 처리
			Board board = bDAO.getBoard(bno);
			
			//댓글 목록 보기
			List<Reply> replyList = rDAO.getReplyList(bno);
			
			//모델 생성해서 뷰로 보내기
			request.setAttribute("board", board);
			request.setAttribute("replyList", replyList);
			String filename = board.getFilename();
			request.setAttribute("filename", filename);
			
			// 좋아요 개수 가져오기
			int likeCount = lDAO.getLikeCountByBno(bno);

			// 모델 생성해서 뷰로 보내기
			request.setAttribute("like_count", likeCount);

			lDAO.updateLikeCount(bno);
			bDAO.updateReplyCount(bno);
			
			nextPage="/board/boardview.jsp";
		}else if(command.equals("/deleteboard.do")) {
			int bno = Integer.parseInt(request.getParameter("bno"));
			
			bDAO.deleteboard(bno);
			
			nextPage="/boardlist.do";
		}else if(command.equals("/updateboardform.do")) {
			int bno = Integer.parseInt(request.getParameter("bno"));
			
			//글 상세보기 처리
			Board board = bDAO.getBoard(bno);
			
			//모델 생성해서 뷰로 보내기
			request.setAttribute("board", board);
			
			
			nextPage="/board/updateboardform.jsp";
		}else if(command.equals("/updateboard.do")) {
			//게시글 제목, 내용을 파라미터로 받음
			
			
			String realFolder = "C:\\teamworks\\teamwork\\src\\main\\webapp\\upload";
			int maxSize = 10*1024*1024; //10MB
			String encType = "utf-8";	//파일 이름 한글 인코딩
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			
			//5가지 인자
			MultipartRequest multi = 
					new MultipartRequest(request, realFolder, maxSize, 
							encType, policy);
			
			//폼 데이터 받기
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");
			int bno = Integer.parseInt(multi.getParameter("bno"));
			
			//file 파라미터 추출
			Enumeration<?> files = multi.getFileNames();
			String filename = "";
			while(files.hasMoreElements()) {	//파일 이름이 있는 동안 반복
				String userFilename = (String) files.nextElement();
				
				//실제 저장될 이름
				filename = multi.getFilesystemName(userFilename);		
			}
				
			//db에 저장
			Board b = new Board();
			b.setTitle(title);
			b.setContent(content);
			b.setFilename(filename);
			b.setBno(bno);
			
			bDAO.updateboard(b);
			
		}
		//댓글 구현
		if(command.equals("/insertreply.do")) {
			//댓글 폼 데이터 받기
			int bno = Integer.parseInt(request.getParameter("bno"));
			String rcontent = request.getParameter("rcontent");
			String replyer = request.getParameter("replyer");
			
			//댓글 등록 처리
			Reply r = new Reply();
			r.setBno(bno);
			r.setRcontent(rcontent);
			r.setReplyer(replyer);
			
			rDAO.insertreply(r);
			
		}else if(command.equals("/updatereplyform.do")) {
			int rno = Integer.parseInt(request.getParameter("rno"));
						
			//글 상세보기 처리
			Reply reply = rDAO.getReply(rno);
			
			//모델 생성해서 뷰로 보내기
			request.setAttribute("reply", reply);
			
			
			nextPage="/board/updatereplyform.jsp";
		}else if(command.equals("/updatereply.do")) {
			int rno = Integer.parseInt(request.getParameter("rno"));
			String rcontent = request.getParameter("rcontent");
			
			Reply r = new Reply();
			r.setRno(rno);
			r.setRcontent(rcontent);
			
			rDAO.updatereply(r);
			
		}
		
		
		if(command.equals("/deletereply.do")) {
			int rno = Integer.parseInt(request.getParameter("rno"));
			//삭제 처리 메서드 호출
			rDAO.deletereply(rno);	
			
			nextPage="/boardlist.do";
		}
		
		//좋아요
		if(command.equals("/like.do")) {
			int bno = Integer.parseInt(request.getParameter("bno"));
			String id = request.getParameter("id");
			List<Blike> likeList = lDAO.getLikeList(bno);
			
			
			//아이디가 중복되면 delete, 아니면 update
			if (lDAO.likeListContainsUser(likeList, id)) {	
				lDAO.deleteLike(id, bno);	
			} else {
				Blike l = new Blike();
				l.setBno(bno);
				l.setId(id);
			    lDAO.like(l);
			}	
			lDAO.updateLikeCount(bno);
			nextPage="boardview.do?bno=" + bno;
		}
		

		//공지사항 게시판
		//게시판
		if(command.equals("/noticelist.do")) {
			//페이지 처리
			String pageNum = request.getParameter("pageNum");
			if(pageNum == null) { //페이지 번호를 클릭하지 않았을때 기본값
				pageNum = "1";
			}
			
			//현재 페이지
			int currentPage = Integer.parseInt(pageNum);
			//페이지당 게시글 수 - 10(pageSize)
			int pageSize = 10;
			//1페이지의 첫번째행(startRow) : 1번, 2페이지 : 11번, 3페이지 : 21
			int startRow = (currentPage - 1) * pageSize + 1;
			System.out.println("페이지 첫행: " + startRow);
			
			//시작페이지(startPage) : 12행 - 2페이지, 22행 - 3페이지
			int startPage = startRow / pageSize + 1;
			
			//종료(끝) 페이지 : 전체 게시글총수 / 페이지당 개수
			int totalRow = nDAO.getNoticeCount();
			int endPage = totalRow / pageSize;
			//페이지당 개수(10)로 나누어 떨어지지 않는 경우 코딩
			endPage = (totalRow % pageSize == 0) ? endPage : endPage + 1;

			//검색 처리
			String _field = request.getParameter("field"); //임시로 저장
			String _kw = request.getParameter("kw");
			
			String field = "";
			String kw = "";
			
			//null 처리
			if(_field != null) { //필드값이 있는 경우
				field = _field;
			}else { //필드값이 없는 경우(디폴트)
				field = "title";
			}
			
			if(_kw != null) { //검색어가 있는 경우
				kw = _kw;
			}else {  //검색어가 없는 경우
				kw = "";
			}
		
			//페이지와 검색 처리
			List<Notice> noticeList = nDAO.getNoticeList(field, kw, currentPage);
			
			//모델로 생성
			request.setAttribute("noticeList", noticeList);
			request.setAttribute("page", currentPage);    //현재 페이지
			request.setAttribute("startPage", startPage); //시작 페이지
			request.setAttribute("endPage", endPage);     //종료 페이지
			request.setAttribute("field", field);  //검색어
			request.setAttribute("kw", kw);  //검색어
						
			nextPage="/notice/noticelist.jsp";
		}else if(command.equals("/noticewriteform.do")) {
			nextPage="/notice/noticewriteform.jsp";
		}else if(command.equals("/noticewrite.do")) {
			String realFolder = "C:\\teamworks\\teamwork\\src\\main\\webapp\\upload";
			int maxSize = 10*1024*1024; //10MB
			String encType = "utf-8";	//파일 이름 한글 인코딩
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			
			//5가지 인자
			MultipartRequest multi = 
					new MultipartRequest(request, realFolder, maxSize, 
							encType, policy);
			
			
			//폼 데이터 받기
			String title = multi.getParameter("ntitle");
			String content = multi.getParameter("ncontent");
			
			//세션 가져오기
			String id = (String) session.getAttribute("sessionId");
			
			//file 파라미터 추출
			Enumeration<?> files = multi.getFileNames();
			String filename = "";
			while(files.hasMoreElements()) {	//파일 이름이 있는 동안 반복
				String userFilename = (String) files.nextElement();
				
				//실제 저장될 이름
				filename = multi.getFilesystemName(userFilename);		
			}
			
			
			
			//db에 저장
			Notice n = new Notice();
			n.setNtitle(title);
			n.setNcontent(content);
			n.setNfilename(filename);
			n.setId(id);
			
			nDAO.nwrite(n);
					
		}else if(command.equals("/noticeview.do")){

			//글 제목에서 요청한 글 번호 받기
			int nno = Integer.parseInt(request.getParameter("nno"));
			
			//글 상세보기 처리
			Notice notice = nDAO.getNotice(nno);
			
			
			List<NReply> nreplyList = nrDAO.getNReplyList(nno);
			  
			request.setAttribute("notice", notice);
			request.setAttribute("nreplyList", nreplyList);
			  
			int nlikeCount = nlDAO.getNLikeCountByNno(nno);
			  
			request.setAttribute("nlike_count", nlikeCount);
			 

			nlDAO.updateNLikeCount(nno);
			nDAO.updateNReplyCount(nno);
			
			nextPage="/notice/noticeview.jsp";
		}else if(command.equals("/deletenotice.do")) {
			int nno = Integer.parseInt(request.getParameter("nno"));
			
			nDAO.deletenotice(nno);
			
			nextPage="/noticelist.do";
		}else if(command.equals("/updatenoticeform.do")) {
			int nno = Integer.parseInt(request.getParameter("nno"));
			
			//글 상세보기 처리
			Notice notice = nDAO.getNotice(nno);
			
			//모델 생성해서 뷰로 보내기
			request.setAttribute("notice", notice);
			
			
			nextPage="/notice/updatenoticeform.jsp";
		}else if(command.equals("/updatenotice.do")) {
			//게시글 제목, 내용을 파라미터로 받음
			int nno = Integer.parseInt(request.getParameter("nno"));
			String ntitle = request.getParameter("ntitle");
			String ncontent = request.getParameter("ncontent");
				
			//db에 저장
			Notice n = new Notice();
			n.setNtitle(ntitle);
			n.setNcontent(ncontent);
			n.setNno(nno);
			
			nDAO.updatenotice(n);

		}
			
	
		//notice 댓글 구현
		if(command.equals("/insertnreply.do")) {
			//댓글 폼 데이터 받기
			int nno = Integer.parseInt(request.getParameter("nno"));
			String nrcontent = request.getParameter("nrcontent");
			String nreplyer = request.getParameter("nreplyer");
			
			//댓글 등록 처리
			NReply nr = new NReply();
			nr.setNno(nno);
			nr.setNrcontent(nrcontent);
			nr.setNreplyer(nreplyer);
			
			nrDAO.insertnreply(nr);
			
		}else if(command.equals("/updatenreplyform.do")) {
			int nrno = Integer.parseInt(request.getParameter("nrno"));
						
			//글 상세보기 처리
			NReply nreply = nrDAO.getNReply(nrno);
			
			//모델 생성해서 뷰로 보내기
			request.setAttribute("nreply", nreply);
			
			
			nextPage="/board/updatenreplyform.jsp";
		}else if(command.equals("/updatenreply.do")) {
			int nrno = Integer.parseInt(request.getParameter("nrno"));
			String nrcontent = request.getParameter("nrcontent");
			
			NReply nr = new NReply();
			nr.setNrno(nrno);
			nr.setNrcontent(nrcontent);
			
			nrDAO.updatenreply(nr);
			
		}
		
		//동행자 찾기 게시판
		if(command.equals("/board1list.do")) {
			//페이지 처리
			String pageNum = request.getParameter("pageNum");
			if(pageNum == null) { //페이지 번호를 클릭하지 않았을때 기본값
				pageNum = "1";
			}
			
			//현재 페이지
			int currentPage = Integer.parseInt(pageNum);
			//페이지당 게시글 수 - 10(pageSize)
			int pageSize = 10;
			//1페이지의 첫번째행(startRow) : 1번, 2페이지 : 11번, 3페이지 : 21
			int startRow = (currentPage - 1) * pageSize + 1;
			
			//시작페이지(startPage) : 12행 - 2페이지, 22행 - 3페이지
			int startPage = startRow / pageSize + 1;
			
			//종료(끝) 페이지 : 전체 게시글총수 / 페이지당 개수
			int totalRow = b1DAO.getBoardCount1();
			int endPage = totalRow / pageSize;
			//페이지당 개수(10)로 나누어 떨어지지 않는 경우 코딩
			endPage = (totalRow % pageSize == 0) ? endPage : endPage + 1;
			
			//검색 처리
			String _field = request.getParameter("field"); //임시로 저장
			String _kw = request.getParameter("kw");
			
			String field = "";
			String kw = "";
			
			//null 처리
			if(_field != null) { //필드값이 있는 경우
				field = _field;
			}else { //필드값이 없는 경우(디폴트)
				field = "title1";
			}
			
			if(_kw != null) { //검색어가 있는 경우
				kw = _kw;
			}else {  //검색어가 없는 경우
				kw = "";
			}
		
			List<Board1> boardList1 = b1DAO.getBoardList1(field, kw, currentPage);
			
			//모델로 생성
			request.setAttribute("boardList1", boardList1);
			request.setAttribute("page", currentPage);    //현재 페이지
			request.setAttribute("startPage", startPage); //시작 페이지
			request.setAttribute("endPage", endPage);     //종료 페이지
			request.setAttribute("field", field);  //검색어
			request.setAttribute("kw", kw);  //검색어
			
			List<Board1> likeList1 = b1DAO.getLikeList1();
			request.setAttribute("likeList1", likeList1);			
			
			if(likeList1.size()>=3) {
				//게시글 3개를 저장할 배열 생성
				Board1 l1 = likeList1.get(0);
				Board1 l2 = likeList1.get(1);
				Board1 l3 = likeList1.get(2);
				
				request.setAttribute("l1", l1);
				request.setAttribute("l2", l2);
				request.setAttribute("l3", l3);
			}
			
			nextPage="/board1/board1list.jsp";
		}else if(command.equals("/write1form.do")) {
			nextPage="/board1/write1form.jsp";
		}else if(command.equals("/write1.do")) {
			String realFolder = "C:\\teamworks\\teamwork\\src\\main\\webapp\\upload";
			int maxSize = 10*1024*1024; //10MB
			String encType = "utf-8";	//파일 이름 한글 인코딩
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			
			//5가지 인자
			MultipartRequest multi = 
					new MultipartRequest(request, realFolder, maxSize, 
							encType, policy);
			
			
			//폼 데이터 받기
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");
			
			//세션 가져오기
			String id = (String) session.getAttribute("sessionId");
			
			//file 파라미터 추출
			Enumeration<?> files = multi.getFileNames();
			String filename = "";
			while(files.hasMoreElements()) {	//파일 이름이 있는 동안 반복
				String userFilename = (String) files.nextElement();
				
				//실제 저장될 이름
				filename = multi.getFilesystemName(userFilename);		
			}
			
			
			
			//db에 저장
			Board1 b = new Board1();
			b.setTitle1(title);
			b.setContent1(content);
			b.setFilename1(filename);
			b.setId(id);
			
			b1DAO.write1(b);
					
		}else if(command.equals("/board1view.do")){

			//글 제목에서 요청한 글 번호 받기
			int bno = Integer.parseInt(request.getParameter("bno1"));
			
			//글 상세보기 처리
			Board1 board1 = b1DAO.getBoard1(bno);
			
			//댓글 목록 보기
			List<Reply1> replyList1 = r1DAO.getReplyList1(bno);
			
			//모델 생성해서 뷰로 보내기
			request.setAttribute("board1", board1);
			request.setAttribute("replyList1", replyList1);
			
			// 좋아요 개수 가져오기
			int likeCount = l1DAO.getLikeCountByBno1(bno);

			// 모델 생성해서 뷰로 보내기
			request.setAttribute("like_count", likeCount);

			l1DAO.updateLikeCount1(bno);
			b1DAO.updateReplyCount1(bno);
			
			nextPage="/board1/board1view.jsp";
		}else if(command.equals("/deleteboard1.do")) {
			int bno = Integer.parseInt(request.getParameter("bno1"));
			
			b1DAO.deleteboard1(bno);
			
			nextPage="/board1list.do";
		}else if(command.equals("/updateboard1form.do")) {
			int bno = Integer.parseInt(request.getParameter("bno1"));
			
			//글 상세보기 처리
			Board1 board = b1DAO.getBoard1(bno);
			
			//모델 생성해서 뷰로 보내기
			request.setAttribute("board", board);
			
			
			nextPage="/board1/updateboard1form.jsp";
		}else if(command.equals("/updateboard1.do")) {
			//게시글 제목, 내용을 파라미터로 받음
			int bno = Integer.parseInt(request.getParameter("bno1"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
				
			//db에 저장
			Board1 b = new Board1();
			b.setTitle1(title);
			b.setContent1(content);
			b.setBno1(bno);
			
			b1DAO.updateboard1(b);
			
		}
		//댓글 구현
		if(command.equals("/insertreply1.do")) {
			//댓글 폼 데이터 받기
			int bno = Integer.parseInt(request.getParameter("bno"));
			String rcontent = request.getParameter("rcontent");
			String replyer = request.getParameter("replyer");
			
			//댓글 등록 처리
			Reply1 r = new Reply1();
			r.setBno1(bno);
			r.setRcontent1(rcontent);
			r.setReplyer1(replyer);
			
			r1DAO.insertreply1(r);
			
		}else if(command.equals("/updatereply1form.do")) {
			int rno = Integer.parseInt(request.getParameter("rno1"));
						
			//글 상세보기 처리
			Reply1 reply = r1DAO.getReply1(rno);
			
			//모델 생성해서 뷰로 보내기
			request.setAttribute("reply", reply);
			
			
			nextPage="/board1/updatereply1form.jsp";
		}else if(command.equals("/updatereply1.do")) {
			int rno = Integer.parseInt(request.getParameter("rno1"));
			String rcontent = request.getParameter("rcontent");
			
			Reply1 r = new Reply1();
			r.setRno1(rno);
			r.setRcontent1(rcontent);
			
			r1DAO.updatereply1(r);
			
		}
		
		
		if(command.equals("/deletereply1.do")) {
			int rno = Integer.parseInt(request.getParameter("rno1"));
			//삭제 처리 메서드 호출
			r1DAO.deletereply1(rno);	
			
			nextPage="/board1list.do";
		}
		
		//좋아요
		if(command.equals("/like1.do")) {
			int bno = Integer.parseInt(request.getParameter("bno1"));
			String id = request.getParameter("id");
			List<Blike1> likeList = l1DAO.getLikeList1(bno);
			
			
			//아이디가 중복되면 delete, 아니면 update
			if (l1DAO.likeListContainsUser1(likeList, id)) {	
				l1DAO.deleteLike1(id, bno);	
			} else {
				Blike1 l = new Blike1();
				l.setBno1(bno);
				l.setId(id);
			    l1DAO.like1(l);
			}	
			l1DAO.updateLikeCount1(bno);
			nextPage="board1view.do?bno1=" + bno;
		}
		
		
		
		
		
		//나의 계획 게시판
				if(command.equals("/board2list.do")) {
					//페이지 처리
					String pageNum = request.getParameter("pageNum");
					if(pageNum == null) { //페이지 번호를 클릭하지 않았을때 기본값
						pageNum = "1";
					}
					
					//현재 페이지
					int currentPage = Integer.parseInt(pageNum);
					//페이지당 게시글 수 - 10(pageSize)
					int pageSize = 10;
					//1페이지의 첫번째행(startRow) : 1번, 2페이지 : 11번, 3페이지 : 21
					int startRow = (currentPage - 1) * pageSize + 1;
					
					//시작페이지(startPage) : 12행 - 2페이지, 22행 - 3페이지
					int startPage = startRow / pageSize + 1;
					
					//종료(끝) 페이지 : 전체 게시글총수 / 페이지당 개수
					int totalRow = b2DAO.getBoardCount2();
					int endPage = totalRow / pageSize;
					//페이지당 개수(10)로 나누어 떨어지지 않는 경우 코딩
					endPage = (totalRow % pageSize == 0) ? endPage : endPage + 1;
					
					//검색 처리
					String _field = request.getParameter("field"); //임시로 저장
					String _kw = request.getParameter("kw");
					
					String field = "";
					String kw = "";
					
					//null 처리
					if(_field != null) { //필드값이 있는 경우
						field = _field;
					}else { //필드값이 없는 경우(디폴트)
						field = "title2";
					}
					
					if(_kw != null) { //검색어가 있는 경우
						kw = _kw;
					}else {  //검색어가 없는 경우
						kw = "";
					}
				
					List<Board2> boardList2 = b2DAO.getBoardList2(field, kw, currentPage);
					
					//모델로 생성
					request.setAttribute("boardList2", boardList2);
					request.setAttribute("page", currentPage);    //현재 페이지
					request.setAttribute("startPage", startPage); //시작 페이지
					request.setAttribute("endPage", endPage);     //종료 페이지
					request.setAttribute("field", field);  //검색어
					request.setAttribute("kw", kw);  //검색어
					
					List<Board2> likeList2 = b2DAO.getLikeList2();
					request.setAttribute("likeList2", likeList2);			
					
					if(likeList2.size()>=3) {
						//게시글 3개를 저장할 배열 생성
						Board2 l1 = likeList2.get(0);
						Board2 l2 = likeList2.get(1);
						Board2 l3 = likeList2.get(2);
						
						request.setAttribute("l1", l1);
						request.setAttribute("l2", l2);
						request.setAttribute("l3", l3);
					}
					
					nextPage="/board2/board2list.jsp";
				}else if(command.equals("/write2form.do")) {
					nextPage="/board2/write2form.jsp";
				}else if(command.equals("/write2.do")) {
					String realFolder = "C:\\teamworks\\teamwork\\src\\main\\webapp\\upload";
					int maxSize = 10*1024*1024; //10MB
					String encType = "utf-8";	//파일 이름 한글 인코딩
					DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
					
					//5가지 인자
					MultipartRequest multi = 
							new MultipartRequest(request, realFolder, maxSize, 
									encType, policy);
					
					
					//폼 데이터 받기
					String title = multi.getParameter("title");
					String content = multi.getParameter("content");
					
					//세션 가져오기
					String id = (String) session.getAttribute("sessionId");
					
					//file 파라미터 추출
					Enumeration<?> files = multi.getFileNames();
					String filename = "";
					while(files.hasMoreElements()) {	//파일 이름이 있는 동안 반복
						String userFilename = (String) files.nextElement();
						
						//실제 저장될 이름
						filename = multi.getFilesystemName(userFilename);		
					}
					
					
					
					//db에 저장
					Board2 b = new Board2();
					b.setTitle2(title);
					b.setContent2(content);
					b.setFilename2(filename);
					b.setId(id);
					
					b2DAO.write2(b);
							
				}else if(command.equals("/board2view.do")){

					//글 제목에서 요청한 글 번호 받기
					int bno = Integer.parseInt(request.getParameter("bno2"));
					
					//글 상세보기 처리
					Board2 board2 = b2DAO.getBoard2(bno);
					
					//댓글 목록 보기
					List<Reply2> replyList2 = r2DAO.getReplyList2(bno);
					
					//모델 생성해서 뷰로 보내기
					request.setAttribute("board2", board2);
					request.setAttribute("replyList2", replyList2);
					
					// 좋아요 개수 가져오기
					int likeCount = l2DAO.getLikeCountByBno2(bno);

					// 모델 생성해서 뷰로 보내기
					request.setAttribute("like_count", likeCount);

					l2DAO.updateLikeCount2(bno);
					b2DAO.updateReplyCount2(bno);
					
					nextPage="/board2/board2view.jsp";

					
				}else if(command.equals("/deleteboard2.do")) {
					int bno = Integer.parseInt(request.getParameter("bno2"));
					
					b2DAO.deleteboard2(bno);
					
					nextPage="/board2list.do";
				}else if(command.equals("/updateboard2form.do")) {
					int bno = Integer.parseInt(request.getParameter("bno2"));
					
					//글 상세보기 처리
					Board2 board = b2DAO.getBoard2(bno);
					
					//모델 생성해서 뷰로 보내기
					request.setAttribute("board", board);
					
					
					nextPage="/board2/updateboard2form.jsp";
				}else if(command.equals("/updateboard2.do")) {
					//게시글 제목, 내용을 파라미터로 받음
					int bno = Integer.parseInt(request.getParameter("bno2"));
					String title = request.getParameter("title");
					String content = request.getParameter("content");
						
					//db에 저장
					Board2 b = new Board2();
					b.setTitle2(title);
					b.setContent2(content);
					b.setBno2(bno);
					
					b2DAO.updateboard2(b);
					
				}
				//댓글 구현
				if(command.equals("/insertreply2.do")) {
					//댓글 폼 데이터 받기
					int bno = Integer.parseInt(request.getParameter("bno"));
					String rcontent = request.getParameter("rcontent");
					String replyer = request.getParameter("replyer");
					
					//댓글 등록 처리
					Reply2 r = new Reply2();
					r.setBno2(bno);
					r.setRcontent2(rcontent);
					r.setReplyer2(replyer);
					
					r2DAO.insertreply2(r);
					
				}else if(command.equals("/updatereply2form.do")) {
					int rno = Integer.parseInt(request.getParameter("rno2"));
								
					//글 상세보기 처리
					Reply2 reply = r2DAO.getReply2(rno);
					
					//모델 생성해서 뷰로 보내기
					request.setAttribute("reply", reply);
					
					
					nextPage="/board2/updatereply2form.jsp";
				}else if(command.equals("/updatereply2.do")) {
					int rno = Integer.parseInt(request.getParameter("rno2"));
					String rcontent = request.getParameter("rcontent");
					
					Reply2 r = new Reply2();
					r.setRno2(rno);
					r.setRcontent2(rcontent);
					
					r2DAO.updatereply2(r);
					
				}
				
				
				if(command.equals("/deletereply2.do")) {
					int rno = Integer.parseInt(request.getParameter("rno2"));
					//삭제 처리 메서드 호출
					r2DAO.deletereply2(rno);	
					
					nextPage="/board2list.do";
				}
				
				//좋아요
				if(command.equals("/like2.do")) {
					int bno = Integer.parseInt(request.getParameter("bno2"));
					String id = request.getParameter("id");
					List<Blike2> likeList = l2DAO.getLikeList2(bno);
					
					
					//아이디가 중복되면 delete, 아니면 update
					if (l2DAO.likeListContainsUser2(likeList, id)) {	
						l2DAO.deleteLike2(id, bno);	
					} else {
						Blike2 l = new Blike2();
						l.setBno2(bno);
						l.setId(id);
					    l2DAO.like2(l);
					}	
					l2DAO.updateLikeCount2(bno);
					nextPage="board2view.do?bno2=" + bno;

				}
				
		
		
				//Q&A 게시판
				if(command.equals("/board3list.do")) {
					//페이지 처리
					String pageNum = request.getParameter("pageNum");
					if(pageNum == null) { //페이지 번호를 클릭하지 않았을때 기본값
						pageNum = "1";
					}
					
					//현재 페이지
					int currentPage = Integer.parseInt(pageNum);
					//페이지당 게시글 수 - 10(pageSize)
					int pageSize = 10;
					//1페이지의 첫번째행(startRow) : 1번, 2페이지 : 11번, 3페이지 : 21
					int startRow = (currentPage - 1) * pageSize + 1;
					
					//시작페이지(startPage) : 12행 - 2페이지, 22행 - 3페이지
					int startPage = startRow / pageSize + 1;
					
					//종료(끝) 페이지 : 전체 게시글총수 / 페이지당 개수
					int totalRow = b3DAO.getBoardCount3();
					int endPage = totalRow / pageSize;
					//페이지당 개수(10)로 나누어 떨어지지 않는 경우 코딩
					endPage = (totalRow % pageSize == 0) ? endPage : endPage + 1;
					
					//검색 처리
					String _field = request.getParameter("field"); //임시로 저장
					String _kw = request.getParameter("kw");
					
					String field = "";
					String kw = "";
					
					//null 처리
					if(_field != null) { //필드값이 있는 경우
						field = _field;
					}else { //필드값이 없는 경우(디폴트)
						field = "title3";
					}
					
					if(_kw != null) { //검색어가 있는 경우
						kw = _kw;
					}else {  //검색어가 없는 경우
						kw = "";
					}
				
					List<Board3> boardList3 = b3DAO.getBoardList3(field, kw, currentPage);
					
					//모델로 생성
					request.setAttribute("boardList3", boardList3);
					request.setAttribute("page", currentPage);    //현재 페이지
					request.setAttribute("startPage", startPage); //시작 페이지
					request.setAttribute("endPage", endPage);     //종료 페이지
					request.setAttribute("field", field);  //검색어
					request.setAttribute("kw", kw);  //검색어
					
					List<Board3> likeList3 = b3DAO.getLikeList3();
					request.setAttribute("likeList3", likeList3);			
					
					if(likeList3.size()>=3) {
						//게시글 3개를 저장할 배열 생성
						Board3 l1 = likeList3.get(0);
						Board3 l2 = likeList3.get(1);
						Board3 l3 = likeList3.get(2);
						
						request.setAttribute("l1", l1);
						request.setAttribute("l2", l2);
						request.setAttribute("l3", l3);
					}
					
					nextPage="/board3/board3list.jsp";
				}else if(command.equals("/write3form.do")) {
					nextPage="/board3/write3form.jsp";
				}else if(command.equals("/write3.do")) {
					String realFolder = "C:\\teamworks\\teamwork\\src\\main\\webapp\\upload";
					int maxSize = 10*1024*1024; //10MB
					String encType = "utf-8";	//파일 이름 한글 인코딩
					DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
					
					//5가지 인자
					MultipartRequest multi = 
							new MultipartRequest(request, realFolder, maxSize, 
									encType, policy);
					
					
					//폼 데이터 받기
					String title = multi.getParameter("title");
					String content = multi.getParameter("content");
					
					//세션 가져오기
					String id = (String) session.getAttribute("sessionId");
					
					//file 파라미터 추출
					Enumeration<?> files = multi.getFileNames();
					String filename = "";
					while(files.hasMoreElements()) {	//파일 이름이 있는 동안 반복
						String userFilename = (String) files.nextElement();
						
						//실제 저장될 이름
						filename = multi.getFilesystemName(userFilename);		
					}
					
					
					
					//db에 저장
					Board3 b = new Board3();
					b.setTitle3(title);
					b.setContent3(content);
					b.setFilename3(filename);
					b.setId(id);
					
					b3DAO.write3(b);
							
				}else if(command.equals("/board3view.do")){

					//글 제목에서 요청한 글 번호 받기
					int bno = Integer.parseInt(request.getParameter("bno3"));
					
					//글 상세보기 처리
					Board3 board3 = b3DAO.getBoard3(bno);
					
					//댓글 목록 보기
					List<Reply3> replyList3 = r3DAO.getReplyList3(bno);
					
					//모델 생성해서 뷰로 보내기
					request.setAttribute("board3", board3);
					request.setAttribute("replyList3", replyList3);
					
					// 좋아요 개수 가져오기
					int likeCount = l3DAO.getLikeCountByBno3(bno);

					// 모델 생성해서 뷰로 보내기
					request.setAttribute("like_count", likeCount);

					l3DAO.updateLikeCount3(bno);
					b3DAO.updateReplyCount3(bno);
					
					nextPage="/board3/board3view.jsp";
				}else if(command.equals("/deleteboard3.do")) {
					int bno = Integer.parseInt(request.getParameter("bno3"));
					
					b3DAO.deleteboard3(bno);
					
					nextPage="/board3list.do";
				}else if(command.equals("/updateboard3form.do")) {
					int bno = Integer.parseInt(request.getParameter("bno3"));
					
					//글 상세보기 처리
					Board3 board = b3DAO.getBoard3(bno);
					
					//모델 생성해서 뷰로 보내기
					request.setAttribute("board", board);
					
					
					nextPage="/board3/updateboard3form.jsp";
				}else if(command.equals("/updateboard2.do")) {
					//게시글 제목, 내용을 파라미터로 받음
					int bno = Integer.parseInt(request.getParameter("bno3"));
					String title = request.getParameter("title");
					String content = request.getParameter("content");
						
					//db에 저장
					Board3 b = new Board3();
					b.setTitle3(title);
					b.setContent3(content);
					b.setBno3(bno);
					
					b3DAO.updateboard3(b);
					
				}
				//댓글 구현
				if(command.equals("/insertreply3.do")) {
					//댓글 폼 데이터 받기
					int bno = Integer.parseInt(request.getParameter("bno"));
					String rcontent = request.getParameter("rcontent");
					String replyer = request.getParameter("replyer");
					
					//댓글 등록 처리
					Reply3 r = new Reply3();
					r.setBno3(bno);
					r.setRcontent3(rcontent);
					r.setReplyer3(replyer);
					
					r3DAO.insertreply3(r);
					
				}else if(command.equals("/updatereply3form.do")) {
					int rno = Integer.parseInt(request.getParameter("rno3"));
								
					//글 상세보기 처리
					Reply3 reply = r3DAO.getReply3(rno);
					
					//모델 생성해서 뷰로 보내기
					request.setAttribute("reply", reply);
					
					
					nextPage="/board3/updatereply3form.jsp";
				}else if(command.equals("/updatereply3.do")) {
					int rno = Integer.parseInt(request.getParameter("rno3"));
					String rcontent = request.getParameter("rcontent");
					
					Reply3 r = new Reply3();
					r.setRno3(rno);
					r.setRcontent3(rcontent);
					
					r3DAO.updatereply3(r);
					
				}
				
				
				if(command.equals("/deletereply3.do")) {
					int rno = Integer.parseInt(request.getParameter("rno3"));
					//삭제 처리 메서드 호출
					r3DAO.deletereply3(rno);	
					
					nextPage="/board3list.do";
				}
				
				//좋아요
				if(command.equals("/like3.do")) {
					int bno = Integer.parseInt(request.getParameter("bno3"));
					String id = request.getParameter("id");
					List<Blike3> likeList = l3DAO.getLikeList3(bno);
					
					
					//아이디가 중복되면 delete, 아니면 update
					if (l3DAO.likeListContainsUser3(likeList, id)) {	
						l3DAO.deleteLike3(id, bno);	
					} else {
						Blike3 l = new Blike3();
						l.setBno3(bno);
						l.setId(id);
					    l3DAO.like3(l);
					}	
					l3DAO.updateLikeCount3(bno);
					nextPage="board3view.do?bno3=" + bno;
				}
		

		//redirect와 forward 구분하기
		//새로고침하면 게시글, 댓글 중복 생성 문제 해결
		if(command.equals("/write.do") || command.equals("/updateboard.do")) { 
			response.sendRedirect("boardlist.do");
		}else if (command.equals("/insertreply.do") || command.equals("/deletereply.do") || command.equals("/updatereply.do")) {
			int bno = Integer.parseInt(request.getParameter("bno"));
			response.sendRedirect("boardview.do?bno=" + bno);
			
			
		}else if(command.equals("/noticewrite.do") || command.equals("/updatenotice.do")) { 
			response.sendRedirect("noticelist.do");
		}else if (command.equals("/insertnreply.do") || command.equals("/deletenreply.do") || command.equals("/updatenreply.do")) {
			int nno = Integer.parseInt(request.getParameter("nno"));
			response.sendRedirect("noticeview.do?nno=" + nno);
			
			
		}else if(command.equals("/write1.do") || command.equals("/updateboard1.do")) { 
			response.sendRedirect("board1list.do");
		}else if (command.equals("/insertreply1.do") || command.equals("/deletereply1.do") || command.equals("/updatereply1.do")) {
			int bno = Integer.parseInt(request.getParameter("bno1"));
			response.sendRedirect("board1view.do?bno1=" + bno);
			
			
		}else if(command.equals("/write2.do") || command.equals("/updateboard2.do")) { 
			response.sendRedirect("board2list.do");
		}else if (command.equals("/insertreply2.do") || command.equals("/deletereply2.do") || command.equals("/updatereply2.do")) {
			int bno = Integer.parseInt(request.getParameter("bno2"));
			response.sendRedirect("board2view.do?bno2=" + bno);
			
			
		}else if(command.equals("/write3.do") || command.equals("/updateboard3.do")) { 
			response.sendRedirect("board3list.do");
		}else if (command.equals("/insertreply3.do") || command.equals("/deletereply3.do") || command.equals("/updatereply3.do")) {
			int bno = Integer.parseInt(request.getParameter("bno3"));
			response.sendRedirect("board3view.do?bno3=" + bno);
			
		}else if (command.equals("/editprofile_pic.do") || command.equals("/editprofile.do")){
			response.sendRedirect("/mypage.do");
			
		}else{
			RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
		}
		


	}
}
