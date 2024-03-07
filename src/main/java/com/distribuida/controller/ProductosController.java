package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dto.ProductosService;
import com.distribuida.entities.Productos;

@Controller
@RequestMapping("/productos")
public class ProductosController {

	@Autowired
	private ProductosService productosService;
	
	@GetMapping("/findAll")
	public  String findAll(Model model) {
		
	List<Productos> productos = productosService.findAll();
		
	model.addAttribute("productos", productos);
		
	return "productos-listar";
}
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idProducto") @Nullable Integer idProducto
			,@RequestParam("opcion")@Nullable Integer opcion
			,Model model
			) {
		if(idProducto !=null) {
			Productos producto = productosService.findOne(idProducto);
			model.addAttribute("producto",producto);
		}
		if(opcion==1) return "productos-add";
		else return "productos-del";
	}
	@PostMapping("/add")
	public String add(@RequestParam("idProducto") @Nullable Integer idProducto
			,@RequestParam("nombre") @Nullable String nombre
			,@RequestParam("descripcion") @Nullable String descripcion
			,@RequestParam("precio")@Nullable Double precio
			,@RequestParam("stock") @Nullable Integer stock
			,@RequestParam("imagen") @Nullable String imagen
			) {
		if(idProducto==null) productosService.add(0,nombre, descripcion,precio,stock,imagen);
		else productosService.up(idProducto,nombre, descripcion,precio,stock,imagen);
		return"redirect:/productos/findAll";
}
@GetMapping("/del")
public String del(@RequestParam("idProducto")@Nullable Integer idProducto) {
	productosService.del(idProducto);
	return "redirect:/productos/findAll";
}
}