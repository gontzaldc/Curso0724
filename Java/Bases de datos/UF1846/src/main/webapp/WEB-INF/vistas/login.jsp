<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/vistas/includes/cabecera.jsp"%>


<!-- Section: Design Block -->
<section class="text-center">
  <!-- Background image -->
  <div class="p-5 bg-image" style="
        background-image: url('https://mdbootstrap.com/img/new/textures/full/171.jpg');
        height: 300px;
        "></div>
  <!-- Background image -->

  <div class="card mx-4 mx-md-5 shadow-5-strong" style="
        margin-top: -150px;
        background: hsla(0, 0%, 100%, 0.8);
        backdrop-filter: blur(30px);
        ">
    <div class="card-body py-5 px-md-5">

      <div class="row d-flex justify-content-center">
        <div class="col-lg-8">
        
            <img alt="imagen login" src="imgs/llaveLogin.svg">
          <h2 class="fw-bold mb-5">Iniciar sesión</h2>
          <c:if test="${textoAlertaLogin!=null}">
		<div class="alert alert-danger alert-dismissible fade show"
		role="alert">
		${textoAlertaLogin}
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div></c:if>
          <form action="login" method="post">
            <!-- 2 column grid layout with text inputs for the first and last names -->
            <div class="row">
              <div class="col-md-6 mb-4">
                <div class="form-outline">
                  <input type="email" id="email"  name="email" class="form-control" value="${usuario.email}"/>
                  <label class="form-label" for="email" >Email</label>
                </div>
              </div>
              <div class="col-md-6 mb-4">
                <div class="form-outline">
                  <input type="password" id="password" name="password" class="form-control" />
                  <label class="form-label" for="password">Contraseña</label>
                </div>
              </div>
              
            </div>

        
            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">
           	Iniciar Sesión
            </button>
             

            <!-- Register buttons -->
            <div class="text-center">
              <p>¿No estás registrado?<a href="#">Registrate aquí</a></p>
             
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Section: Design Block -->

<%@ include file="/WEB-INF/vistas/includes/pie.jsp"%>