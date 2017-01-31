package com.oracle.employee.servlet;

/**
 * Created by taewan on 2016. 12. 26..
 */

import com.oracle.employee.beans.Applicant;

import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/applicant")
public class ApplicantServlet extends HttpServlet {
    private static DataSource datasource = null;

    public void init() throws ServletException
    {
        try
        {
            InitialContext initialContext = new InitialContext();
            if ( initialContext == null ) {
                String message = "There was no InitialContext in DBBroker. We're about to have some problems.";
                System.err.println("*** " + message);
                throw new Exception(message);
            }

            // actual jndi name is "jdbc/postgres"
            datasource = (DataSource) initialContext.lookup( "java:/comp/env/jdbc/opcdemo" );

            if ( datasource == null )
            {
                String message = "Could not find our DataSource in DBBroker. We're about to have problems.";
                System.err.println("*** " + message);
                throw new Exception(message);
            }
        }
        catch (Exception e)
        {
            throw new ServletException(e.getMessage());
        }
    }

    /**
     * Dole out the connections here.
     */
    public static synchronized Connection getConnection()
            throws SQLException
    {
        return datasource.getConnection();
    }

    /**
     * Must close the database connection to return it to the pool.
     */
    public static synchronized void freeConnection(Connection connection)
    {
        try
        {
            connection.close();
        }
        catch (Exception e)
        {
            System.err.println("DBBroker: Threw an exception closing a database connection");
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection conn = null;                                        // null로 초기화 한다.
        Statement stmt = null;
        ResultSet rs = null;
        String sql = "select * from applicants";

        List<Applicant> applicants = new ArrayList<Applicant>();

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while(rs.next()){
                Applicant applicant = new Applicant();
                applicant.setAddress(rs.getString("address"));
                applicant.setBirth(rs.getString("birth"));
                applicant.setDepartment(rs.getString("department"));
                applicant.setEmail(rs.getString("email"));
                applicant.setPhone(rs.getString("phone"));
                applicant.setSex(rs.getString("sex"));
                applicant.setName(rs.getString("name"));

                System.out.println(applicant);

                applicants.add(applicant);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            if(rs!= null)try{rs.close();}catch(SQLException sqle){}
            if(stmt != null) try{stmt.close();}catch(SQLException sqle){}
            if(conn != null) try{conn.close();}catch(SQLException sqle){}
        }
        System.out.println(applicants);
        req.setAttribute("applicants", applicants);


        String nextJSP = "/applicant.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(req,resp);
    }
}
