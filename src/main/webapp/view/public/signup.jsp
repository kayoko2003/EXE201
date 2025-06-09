<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signup.css">
    <!-- Fontawesome CDN Link For Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
  </head>
  <body>
    <form action="register" method="post">
      <h2>Đăng ký</h2>
      <div class="row">
        <div class="form-group fullname col-6">
          <label for="fullname">Họ và tên</label>
          <input type="text" id="fullname" placeholder="Nhập đầy đủ họ và tên" name="name">
        </div>
        <div class="form-group fullname col-6">
          <label for="username">Tên tài khoản</label>
          <input type="text" id="username" placeholder="Nhập tên tài khoản" name="userName">
        </div>
      </div>
      <div class="row">
        <div class="form-group email col">
          <label for="email">Địa chỉ email</label>
          <input type="email" id="email" placeholder="Nhập địa chỉ email" name="mail">
        </div>
        <div class="form-group email col">
          <label for="phone">Số điện thoại</label>
          <input type="tel" id="phone" placeholder="Nhập số điện thoại" name="phone">
        </div>

      </div>
      <div class="row">
        <div class="form-group password col">
          <label for="password">Mật khẩu</label>
          <input type="password" id="password" placeholder="Nhập mật khẩu" name = "password">
          <i id="pass-toggle-btn" class="fa-solid fa-eye pass-toggle-btn"></i>
        </div>
        <div class="form-group password col">
          <label for="repassword">Xác nhận mật khẩu</label>
          <input type="password" id="repassword" placeholder="Nhập lại mật khẩu">
          <i id="repass-toggle" class="fa-solid fa-eye pass-toggle-btn"></i>
        </div>
      </div>
      <div class="row">
        <div class="form-group date col">
          <label for="date">Ngày sinh</label>
          <input type="date" id="date" placeholder="Chọn ngày sinh" name="dob">
        </div>
        <div class="form-group date col">
          <label for="address">Địa chỉ</label>
          <input type="text" id="address" placeholder="Nhập địa chỉ" name="address">
        </div>
      </div>
      <div class="row">
        <div class="form-group gender col">
          <label for="gender">Giới tính</label>
          <select id="gender" name="gender">
            <option value="" selected disabled>Chọn giới tính</option>
            <option value="1">Nam</option>
            <option value="0">Nữ</option>
          </select>
        </div>
        <div class="form-group gender col">
          <label for="role">Vai trò</label>
          <select id="role" name="role">
            <option value="" selected disabled>Chọn vai trò</option>
            <option value="1">Gia sư</option>
            <option value="2">Học viên</option>
          </select>
        </div>
      </div>
      <div class="form-group submit-btn">
        <input type="submit" value="Đăng ký">
      </div>
      <div class="form-group text-center text-success">
        <p>Bạn đã có tài khoản? <a href="login">Đăng nhập</a></p>
      </div>

    </form>


    <script src="${pageContext.request.contextPath}/js/signup.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
      <c:if test="${requestScope.warningRegister!=null}">
      window.onload = function() {
        Swal.fire({
          icon: "error",
          title: "Oops...",
          text: "${requestScope.warningRegister}",
        });
      };
      </c:if>
      <c:if test="${requestScope.done!=null}">
      let timerInterval;
      Swal.fire({
        title: "Sign up success!",
        html: "${requestScope.done} <br>I will close in <b></b> milliseconds.",
        timer: 5000,
        timerProgressBar: true,
        didOpen: () => {
          Swal.showLoading();
          const timer = Swal.getPopup().querySelector("b");
          timerInterval = setInterval(() => {
            timer.textContent = `${Swal.getTimerLeft()}`;
          }, 100);
        },
        willClose: () => {
          clearInterval(timerInterval);
        }
      }).then((result) => {
        /* Read more about handling dismissals below */
        if (result.dismiss === Swal.DismissReason.timer) {

            window.location="login";

        }
      });
      </c:if>
    </script>
  </body>

</html>