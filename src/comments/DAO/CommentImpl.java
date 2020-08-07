package comments.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DB.DBConnect;
import VO.CommentVO;


public class CommentImpl implements CommentDAO {
	private DBConnect db;

	public CommentImpl() {
		db = DBConnect.getInstance();
	}
	
	@Override
	public void insert(CommentVO c) {
		// TODO Auto-generated method stub
		Connection conn = null;

		// db占쎈퓠 占쎈립 餓ο옙 �빊遺쏙옙占쎈릭占쎈뮉 sql
		String sql = "insert into comment3 values(comment_seq.nextval, ?,?,?)";

		PreparedStatement pstmt = null;
		try {
			// �뚣끇苑뽳옙�� 揶쏆빘猿� 占쎌돴占쎈굣
			conn = db.getConnection();

			// java占쎈퓠占쎄퐣 sql占쎌뱽 占쎈뼄占쎈뻬占쎈릭占쎈뮉 PreparedStatement揶쏆빘猿� 占쎄문占쎄쉐
			pstmt = conn.prepareStatement(sql);

			// sql占쎌벥 ?占쎈솁占쎌뵬筌롫�苑� 筌띲끉臾�
			pstmt.setString(1, c.getComment_ID());
			pstmt.setString(2, c.getComment_Content());
			pstmt.setInt(3, c.getComment_Bnum());

			// sql占쎈뼄占쎈뻬
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				// 占쎌쁽占쎌뜚 獄쏆꼹�넎
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}
	
	@Override
	public List CommentSelect(CommentVO c) {
		// TODO Auto-generated method stub

		Connection conn = null;
		ResultSet rs = null;

		// 占쎌읈筌ｏ옙 野껓옙占쎄퉳占쎈릭占쎈뮉 sql�눧占�
		String sql = "select c.* from live b , comment3 c where b.num=? and c.comment_bnum= ?  order by c.comment_bnum desc";
		
		ArrayList<CommentVO> list = new ArrayList<CommentVO>();
		
		PreparedStatement pstmt = null;
		try {
			// �뚣끇苑뽳옙�� 揶쏆빘猿� 占쎌돴占쎈굣
			
			conn = db.getConnection();

			// java占쎈퓠占쎄퐣 sql占쎌뱽 占쎈뼄占쎈뻬占쎈릭占쎈뮉 PreparedStatement揶쏆빘猿� 占쎄문占쎄쉐
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, c.getComment_Bnum());
			pstmt.setInt(2, c.getComment_Bnum());

			// sql占쎈뼄占쎈뻬占쎈릭占쎈연 野껓옙占쎄퉳占쎈쭆 野껉퀗�궢�몴占� ResultSet占쎈퓠 占쏙옙占쎌삢
			rs = pstmt.executeQuery();

			// 野껓옙占쎄퉳 野껉퀗�궢揶쏉옙 占쎌뿳占쎈뼄筌롳옙 �뚎됱쓥 揶쏉옙 占쎈릭占쎄돌占쎈뎃 占쎌뵭占쎈선占쎄퐣 Board 揶쏆빘猿쒐몴占� 占쎄문占쎄쉐占쎈릭占쎈연 獄쏆꼹�넎
			while (rs.next()) {
list.add(new CommentVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				// 占쎌쁽占쎌뜚 獄쏆꼹�넎
				if (rs != null) {
					rs.close();
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		// 野껓옙占쎄퉳 野껉퀗�궢揶쏉옙 占쏙옙占쎌삢占쎈쭆 list 獄쏆꼹�넎
		return list;
	}
	@Override
	public void CommentDelete(int comment_Num) {
		// TODO Auto-generated method stub

		Connection conn = null;

		// db占쎈퓠 占쎈립 餓ο옙 占쎄텣占쎌젫占쎈릭占쎈뮉 sql
		String sql = "delete comment3 where comment_Num=?";

		PreparedStatement pstmt = null;
		try {
			// �뚣끇苑뽳옙�� 揶쏆빘猿� 占쎌돴占쎈굣
			conn = db.getConnection();

			// java占쎈퓠占쎄퐣 sql占쎌뱽 占쎈뼄占쎈뻬占쎈릭占쎈뮉 PreparedStatement揶쏆빘猿� 占쎄문占쎄쉐
			pstmt = conn.prepareStatement(sql);

			// sql占쎌벥 ?占쎈솁占쎌뵬筌롫�苑� 筌띲끉臾�
			pstmt.setInt(1, comment_Num );

			// sql占쎈뼄占쎈뻬
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				// 占쎌쁽占쎌뜚 獄쏆꼹�넎
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}
}
