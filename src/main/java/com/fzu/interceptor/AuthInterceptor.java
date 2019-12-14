package com.fzu.interceptor;


import com.fzu.pojo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

public class AuthInterceptor extends AbstractInterceptor {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        String[] noNeedAuthPage = new String[] {
                "home", "checkLogin", "register", "loginAjax", "login", "product", "category", "search","/user/loginUser","/user/loginUser.action","/user/registerUser","/user/registerUser.action"
        };
        //对比Session session = (Session) ActionContext.getContext().getSession();
        ActionContext actionContext = actionInvocation.getInvocationContext();
        HttpServletRequest request = ServletActionContext.getRequest();
        // ServletContext servletContext = ServletActionContext.getServletContext();
        String uri = request.getRequestURI();
        if (uri.startsWith("/")) {
            //截取/后面的内容
            String method = StringUtils.substringAfterLast(uri, "/");

            if (!Arrays.asList(noNeedAuthPage).contains(method)) {
                //如果访问的不是登陆注册界面就判断是否登陆

                User user = (User) actionContext.getSession().get("user");
                if (null == user) {
                    return "login";
                }
            }
        }
        return actionInvocation.invoke();
    }
}
