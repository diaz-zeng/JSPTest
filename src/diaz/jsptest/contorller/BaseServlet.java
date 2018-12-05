package diaz.jsptest.contorller;

import com.mchange.v2.log.log4j.Log4jMLog;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;


public class BaseServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String doWhat = req.getParameter("doWhat");
        Method[] methods = this.getClass().getMethods();
        try {
            for(Method method:methods){
                if(method.getName().equals(doWhat)){
                    method.invoke(this,req,resp);
                    break;
                }
            }
            if(!resp.isCommitted()){
                resp.sendRedirect("/index.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
