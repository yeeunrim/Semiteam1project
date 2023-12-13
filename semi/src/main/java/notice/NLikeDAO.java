package notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;


public class NLikeDAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	public void like(NLike l) {
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO nlike(nlikeno, nno, id) "
					+ "VALUES (seq_nlikeno.NEXTVAL, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, l.getNno());
			pstmt.setString(2, l.getId());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	
	public void updateNLikeCount(int nno){
		try {
			conn = JDBCUtil.getConnection();
			String sql = "UPDATE notice SET nlike_count = "
					+ "(SELECT count(nno) FROM nlike WHERE nno = ?) WHERE nno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			pstmt.setInt(2, nno);
			//sql 실행
			pstmt.executeUpdate();
			

		} catch (SQLException e) {	
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
	}
	
	public List<NLike> getLikeList(int nno) {
		List<NLike> nlikeList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM nlike WHERE nno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				NLike nl = new NLike();
				nl.setNlikeno(rs.getInt("nlikeno"));
				nl.setNno(rs.getInt("nno"));
				nl.setId(rs.getString("Id"));
				
				nlikeList.add(nl);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return nlikeList;
	}
	
	public boolean nlikeListContainsUser(List<NLike> nlikeList, String id) {
	    for (NLike nlike : nlikeList) {
	        if (nlike.getId().equals(id)) {
	            return true;
	        }
	    }
	    return false;
	}
	
	public void deleteLike(String id, int nno) {
			
		try {
			conn = JDBCUtil.getConnection();
			String sql = "DELETE FROM nlike WHERE id = ? and nno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, nno);
			
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}


	public int getNLikeCountByNno(int nno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int nlikeCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as nlike_count FROM nlike WHERE nno = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, nno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                nlikeCount = rs.getInt("nlike_count");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return nlikeCount;
    }	
	
}
