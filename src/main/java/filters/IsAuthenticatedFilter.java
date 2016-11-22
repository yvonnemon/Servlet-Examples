package filters;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @author Xavi Torrens
 */
public class IsAuthenticatedFilter {

    public void  doFilter(ServletRequest request,
                          ServletResponse response,
                          FilterChain chain)
            throws java.io.IOException, ServletException {

        HttpSession session = ((HttpServletRequest)request).getSession();

        if(session.getAttribute("username")==null){
            ((HttpServletResponse)response).sendRedirect("index.jsp");
        } else {

            // Pass request back down the filter chain
            chain.doFilter(request,response);
        }


    }
}
