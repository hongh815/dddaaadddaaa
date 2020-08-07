package follow.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.FollowVO;
import VO.LiveVO;
import follow.Service.followService;
import follow.Service.followServiceImpl;
import live.Service.liveService;
import live.Service.liveServiceImpl;
import sign.Service.signService;
import sign.Service.signServiceImpl;

/**
 * Servlet implementation class unFollowController
 */
@WebServlet("/unFollowController")
public class unFollowController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public unFollowController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		followService service = new followServiceImpl();
		liveService lservice = new liveServiceImpl();
		signService sservice = new signServiceImpl();
		
		HttpSession session = request.getSession(false);
		String id = request.getParameter("id");
		ArrayList<LiveVO> list = (ArrayList<LiveVO>) lservice.getAll(id);
		
		String myid = request.getParameter("myid");
		
		
		service.unFollow(id, myid);
		
		// ----------------------- �ȷο� ����Ʈ ------------------------------------------------------
				ArrayList<FollowVO> followinglist = (ArrayList<FollowVO>) service.listFollowing(id);
						
				if(followinglist != null) {
					request.setAttribute("followinglist", followinglist);
					request.setAttribute("listsize", followinglist.size());
				} else {
					request.setAttribute("followinglist", "�ȷο츮��Ʈ�� �����ϴ�.");
					request.setAttribute("listsize", "0");
				}
				// -----------------------------------------------------------------------------------------
				
				//------------------------ �ȷ��� ����Ʈ �����ִ� �� ------------------------------------------------------
				ArrayList<FollowVO> followerlist = (ArrayList<FollowVO>) service.listFollower(id);
				
				if(followerlist != null) {
					request.setAttribute("followerlist", followerlist);
					request.setAttribute("followerlistsize", followerlist.size());
				} else {
					request.setAttribute("followerlist", "�ȷ��׸���Ʈ�� �����ϴ�.");
					request.setAttribute("followerlistsize", "0");
				}
				// ------------------------------------------------------------------------------------------------

				// ----------------------- ���� �ȷο� Ȥ�� �˻��� ����� �ȷο��� ����Ʈ ------------------------------------------------------
						ArrayList<FollowVO> myfollowinglist = (ArrayList<FollowVO>) service.mylistFollowing(id);
								
						if(followinglist != null) {
							request.setAttribute("myfollowinglist", myfollowinglist);
							request.setAttribute("mylistsize", myfollowinglist.size());
						} else {
							request.setAttribute("myfollowinglist", "�ȷο츮��Ʈ�� �����ϴ�.");
							request.setAttribute("mylistsize", "0");
						}
				// -----------------------------------------------------------------------------------------
						
				request.setAttribute("list", list);
				request.setAttribute("size", list.size());

		String path = "/confirm/list.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		if(dispatcher != null) {
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
