/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bactv
 */
@WebFilter(urlPatterns = {"/*"})
public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession();
        // get request path contain name project + servletPath
        String requestPath = httpRequest.getRequestURI();
//          System.out.println("requestPath " + requestPath);
        // get servlet path
        String servletPath = httpRequest.getServletPath();
//         System.out.println("servletPath " + servletPath);

        // getroot to file
        String realRootPath = httpRequest.getServletContext().getRealPath("");
        //System.out.println("realRootPath " + realRootPath);

        String FileRealPath = realRootPath + servletPath;
        //System.out.println("imageRealPath " + FileRealPath);
        File checkFile = new File(FileRealPath);

        if (requestPath.contains("/product") || requestPath.contains("/surveys")
                || requestPath.contains("/store") || requestPath.contains("/create-store")
                || requestPath.contains("/submitters")) {

            if (session.getAttribute("user") == null) {
                session.setAttribute("error", " you must have to login");
                httpResponse.sendRedirect("login");
                return;
            }
        } else if (requestPath.endsWith("login") || requestPath.endsWith("register")) {
            if (session.getAttribute("user") != null) {
                httpResponse.sendRedirect("product");
                return;
            }

        }
        chain.doFilter(request, response);

    }

    @Override
    public void destroy() {

    }

}
