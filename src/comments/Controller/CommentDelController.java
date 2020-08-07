package comments.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comments.Service.CommentService;
import comments.Service.CommentServiceImpl;


/**
 * Servlet implementation class CommentDelController
 */
@WebServlet("/CommentDelController")
public class CommentDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentDelController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=EUC-KR");
		response.setCharacterEncoding("euc-kr");

		// 疫꿸퀡�뮟占쎌뱽 占쎌젫�⑤벏釉� 占쎄퐣�뜮袁⑸뮞 揶쏆빘猿� 占쎄문占쎄쉐
		CommentService service = new CommentServiceImpl();

		// 占쎌뒄筌ｏ옙 占쎈솁占쎌뵬筌롫�苑� 揶쏉옙 占쎌뵭疫뀐옙
		int comment_Num = Integer.parseInt(request.getParameter("comment_Num"));

		// 占쎄퐣�뜮袁⑸뮞占쎌벥 疫뀐옙占쎄텣占쎌젫 疫꿸퀡�뮟 占쎈뼄占쎈뻬
		service.DelComment(comment_Num);

		
		// 疫뀐옙筌뤴뫖以됵옙�몵嚥∽옙 占쎌뵠占쎈짗
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ListController");
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
