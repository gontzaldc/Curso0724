package com.gontzal.servlets.controladores;

import java.io.IOException;

import com.gontzal.accesoadatos.DaoProducto;
import com.gontzal.accesoadatos.DaoProductoMemoria;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/productos")
public class ProductosServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static final DaoProducto DAO = DaoProductoMemoria.getInstancia();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

// Empaqueta datos para la siguiente vista
		request.setAttribute("productos", DAO.obtenerTodos());
// Redirecciona a la siguiente vista
		request.getRequestDispatcher("/WEB-INF/vistas/productos.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
