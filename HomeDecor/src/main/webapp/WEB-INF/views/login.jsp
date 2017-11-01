<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <!-- Modal -->
  	<div class="modal fade" id="loginmodal" role="dialog"> 
    <div class="modal-dialog">
       
     
      <!-- Modal content-->
      <div class="modal-content">
		 <div class="modal-header" >
         <button type="button" class="close" data-dismiss="modal">
         <span aria-hidden="true">×</span>
         <span class="sr-only">Close</span>
         </button>
        
       <!-- <style>h2{
        color:#BF334C;
        }</style>-->
        
        <h2 style="color:#BF334C;">HOUSEtoHOME<img src="resources/Images/interior.ico" align="right"></h2>
 	 </div>
        <div class="modal-body">
         <h3 style="color:#00BFFF;"> Login</h3>
         
         <c:if test="{not empty msg}">
         <div class="msg">${msg}</div>
         </c:if>
         <!-- j_spring_security_check -->
         
          <form name="loginForm" action="<c:url value="j_spring_security_check"/>" method="post" >
            <c:if test="${not empty error}">
            <div class="error" style="color: #ff0000;">${error}</div>
            </c:if>
            <div class="form-group">
              <label for="username">Username:</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="password">Password:</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password">
            </div>
           
	            <div class="checkbox">
	              <label><input type="checkbox" value="unchecked">Remember me</label></div>
	     		 <span><button type="submit"  class="btn btn-info  btn-block">Log In</button></span>
	     		 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          </form>
        </div>
             <div align="center"> <a href="#">Forgot Password?</a></div>
        <div class="modal-footer">
         <div class="register" align="center">Don't have an account? Please<a href="signup"> Register</a></div>
          
        </div>
      </div>
    </div>
  </div> 
  