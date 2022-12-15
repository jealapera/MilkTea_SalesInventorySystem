<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Milk Tea - Sales & Inventory System</title>

        <!-- Font Awesome -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          rel="stylesheet"
        />
        <!-- Google Fonts -->
        <link
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
          rel="stylesheet"
        />
        <!-- MDB -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.css"
          rel="stylesheet"
        />

        <!-- MDB -->
        <script
          type="text/javascript"
          src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"
        ></script>
    </head>
    <body>
        <section class="vh-100">
          <div class="container py-5 h-100">
            <div class="row d-flex align-items-center justify-content-center h-100">
              <div class="col-md-8 col-lg-7 col-xl-6">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
                  class="img-fluid" alt="Phone image">
              </div>
              <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                <form action="login_user" modelAttribute="user">
                    <div class="d-flex align-items-center mb-3 pb-1">
                        <i class="fas fa-glass-whiskey fa-2x me-3" style="color: #ff6219;"></i>
                        <span class="h1 fw-bold mb-0">Milk Tea</span>
                    </div>

                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log into your account</h5>
                    <!-- Email input -->
                    <div class="form-outline mb-4">
                    <input type="text" id="form1Example13" class="form-control form-control-lg" />
                    <label class="form-label" for="form1Example13">Username</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-4">
                    <input type="password" id="form1Example23" class="form-control form-control-lg" />
                    <label class="form-label" for="form1Example23">Password</label>
                    </div>

                    <div class="d-flex justify-content-around align-items-center mb-4">

                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Log in</button>

                </form>
              </div>
            </div>
          </div>
        </section>
    </body>
</html>