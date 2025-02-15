package com.example.tienda.tiendaapp.entidades;


import java.math.BigDecimal;

import javax.persistence.*;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.*;

import lombok.*;

@Entity
@Table(name = "productos")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Producto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	@NotBlank
	private String nombre;
	
	private BigDecimal precio;
	private Integer stock;
	

	@NotNull
	@ToString.Exclude
	@EqualsAndHashCode.Exclude
	@ManyToOne
	private Categoria categoria;
}
