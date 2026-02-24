package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.DBConnectionMgr;

@WebServlet("/register")
public class register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ✅ 한글 처리
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String userid = request.getParameter("userid");
        String userpw = request.getParameter("userpw");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBConnectionMgr.getConnection();

            String sql = "INSERT INTO users (userid, userpw) VALUES (?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            pstmt.setString(2, userpw);

            int result = pstmt.executeUpdate();

            PrintWriter out = response.getWriter();

            if (result > 0) {
                out.println("<h2>회원가입 성공</h2>");
            } else {
                out.println("<h2>회원가입 실패</h2>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}