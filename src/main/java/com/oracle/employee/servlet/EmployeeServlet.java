package com.oracle.employee.servlet;

import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Enumeration;

import static jdk.nashorn.internal.runtime.regexp.joni.Config.log;

/**
 * Created by taewan on 2016. 12. 26..
 */
@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {
    private static DataSource datasource = null;

    /**
     * Setup our connection pool when this servlet is started.
     * Note that this servlet must be started before any other servlet that tries to
     * use our database connections.
     */
    public void init() throws ServletException {
        try {
            InitialContext initialContext = new InitialContext();
            if (initialContext == null) {
                String message = "There was no InitialContext in DBBroker. We're about to have some problems.";
                System.err.println("*** " + message);
                throw new Exception(message);
            }

            // actual jndi name is "jdbc/postgres"
            datasource = (DataSource) initialContext.lookup("java:/comp/env/jdbc/opcdemo");

            if (datasource == null) {
                String message = "Could not find our DataSource in DBBroker. We're about to have problems.";
                System.err.println("*** " + message);
                throw new Exception(message);
            }
        } catch (Exception e) {
            throw new ServletException(e.getMessage());
        }
    }

    /**
     * Dole out the connections here.
     */
    public static synchronized Connection getConnection()
            throws SQLException {
        return datasource.getConnection();
    }

    /**
     * Must close the database connection to return it to the pool.
     */
    public static synchronized void freeConnection(Connection connection) {
        try {
            connection.close();
        } catch (Exception e) {
            System.err.println("DBBroker: Threw an exception closing a database connection");
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nextJSP = "/employee.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Enumeration e = req.getParameterNames();
        for (; e.hasMoreElements(); ) {
            // Get the name of the request parameter
            String name = (String) e.nextElement();
            System.out.println(name);

            // Get the value of the request parameter
            String value = req.getParameter(name);
            System.out.println(value);
            // If the request parameter can appear more than once in the query string, get all values
            String[] values = req.getParameterValues(name);

            for (int i =
                 0; i < values.length; i++) {
                System.out.println("    " + values[i]);
            }
        }

        Connection conn = null;                                        // null로 초기화 한다.
        PreparedStatement pstmt = null;
        String sql = "insert into applicants (name, email, department, sex, birth, phone, address) values(?,?,?,?,?,?,?)";

        try {
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, req.getParameter("name"));
            pstmt.setString(2, req.getParameter("email"));
            pstmt.setString(3, req.getParameter("department"));
            pstmt.setString(4, req.getParameter("sex"));
            pstmt.setString(5, req.getParameter("birth"));
            pstmt.setString(6, req.getParameter("phone"));
            pstmt.setString(7, req.getParameter("address"));


            pstmt.executeUpdate();

        } catch (SQLException ea) {
            ea.printStackTrace();
        }finally{
            if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
            if(conn != null) try{conn.close();}catch(SQLException sqle){}
        }


        resp.sendRedirect("employee");
    }
}