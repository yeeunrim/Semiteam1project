package notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class NReplyDAO {
	Connection conn = null;				//db연결 및 종료
	PreparedStatement pstmt = null;		//sql 처리
	ResultSet rs = null;				//검색한 데이터셋
	
	
	//댓글 목록
	public List<NReply> getNReplyList(int nno) {
		List<NReply> nreplyList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM nreply WHERE nno = ? ORDER BY nrdate";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			
			//sql 처리
			rs = pstmt.executeQuery();
			while(rs.next()) {
				NReply nr = new NReply();
				nr.setNrno(rs.getInt("nrno"));
				nr.setNno(rs.getInt("nno"));
				nr.setNrcontent(rs.getString("nrcontent"));
				nr.setNreplyer(rs.getString("nreplyer"));
				nr.setNrdate(rs.getTimestamp("nrdate"));
				nr.setNrupdate(rs.getTimestamp("nrupdate"));

				
				nreplyList.add(nr);	//어레이리스트에 객체 1명 저장
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return nreplyList;
	}
	
	//댓글 등록
	public void insertnreply(NReply nr) {
	
		try {
			conn = JDBCUtil.getConnection();
			String sql = "INSERT INTO reply(nrno, nno, nrcontent, nreplyer) "
					+ "VALUES (seq_nrno.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nr.getNno());
			pstmt.setString(2, nr.getNrcontent());
			pstmt.setString(3, nr.getNreplyer());
	
			//sql 처리
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 삭제
	public void deletenreply(int nrno) {
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "DELETE FROM nreply WHERE nrno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nrno);
			//sql 실행
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}	
	}
	
	//댓글 수정
	public void updatenreply(NReply nr) {
		//현재 날짜와 시간 객체 생성
		Timestamp now = new Timestamp(System.currentTimeMillis());
		try {
			//db연결
			conn = JDBCUtil.getConnection();
			//sql 처리 : 수정일 처리는 현재 날짜와 시간을 입력함
			String sql = "UPDATE nreply SET "
					+ "nrcontent = ?, nrupdate= ? WHERE nrno = ?";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장
			pstmt.setString(1, nr.getNrcontent());
			pstmt.setTimestamp(2, now);
			pstmt.setInt(3, nr.getNrno());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//댓글 1개만 보기(수정시)
	public NReply getNReply(int nrno) {
		NReply nr = new NReply();	//빈 객체 생성
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM nreply WHERE nno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nrno);
			//id에 일치하는 1개의 주소 가져옴
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //검색 결과가 있으면
				nr.setNno(rs.getInt("nno"));
				nr.setNrno(rs.getInt("nrno"));
				nr.setNrcontent(rs.getString("nrcontent"));
				nr.setNrdate(rs.getTimestamp("nrdate"));
				nr.setNrupdate(rs.getTimestamp("nrupdate"));
				nr.setNreplyer(rs.getString("nreplyer"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		//db종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return nr;
		
	}
	
	//댓글 개수
	public int getNReplyCountByBno(int nno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int nreplyCount = 0;

        try {
            conn = JDBCUtil.getConnection();
            String sql = "SELECT COUNT(*) as nreply_count FROM nreply WHERE nno = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, nno);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                nreplyCount = rs.getInt("nreply_count");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(conn, pstmt, rs);
        }

        return nreplyCount;
    }	
	
	
}
