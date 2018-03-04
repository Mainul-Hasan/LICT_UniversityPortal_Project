<%@ Application Language="C#" %>
<%@ Import namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
    }

    void RegisterRoutes(RouteCollection routes)
    {
        //User Pages
        routes.MapPageRoute("default", "home", "~/default.aspx"); //Home
        routes.MapPageRoute("register", "register", "~/Registration.aspx"); //Registration
        routes.MapPageRoute("login", "login", "~/Login.aspx"); //Login
        routes.MapPageRoute("afterlogin", "afterlogin", "~/afterlogin.aspx"); //Afterlogin
        routes.MapPageRoute("aboutUs", "aboutus", "~/aboutUS.aspx"); //About Us
        routes.MapPageRoute("contactUs", "contactUs", "~/ContactUs.aspx"); //Contact Us
        routes.MapPageRoute("gallery", "gallery", "~/glance.aspx"); //Gallery
        
        //Admin Pages
        //routes.MapPageRoute("admin-login", "administrator", "~/Admin/admin-login.aspx");        
        //routes.MapPageRoute("admin-dashboard", "dashboard", "~/Admin/admin-default.aspx");
        
       
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
