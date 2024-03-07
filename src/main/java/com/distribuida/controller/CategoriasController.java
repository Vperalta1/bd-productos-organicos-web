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

import com.distribuida.dto.CategoriasService;
import com.distribuida.entities.Categorias;



@Controller
@RequestMapping("/categorias")
public class CategoriasController {

	@Autowired
	private CategoriasService categoriasService;
	
	@GetMapping("/findAll")
	public  String findAll(Model model) {
		
	List<Categorias> categoria = categoriasService.findAll();
		
	model.addAttribute("categorias", categoria);
		
	return "categorias-listar";
}
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idCategoria") @Nullable Integer idCategoria
			,@RequestParam("opcion")@Nullable Integer opcion
			,Model model
			) {
		if(idCategoria !=null) {
			Categorias categoria = categoriasService.findOne(idCategoria);
			model.addAttribute("categoria",categoria);
		}
		if(opcion==1) return "categorias-add";
		else return "categorias-del";
	}
	@PostMapping("/add")
	public String add(@RequestParam("idCategoria") @Nullable Integer idCategoria
			,@RequestParam("categoria") @Nullable String categoria
			,@RequestParam("descripcion") @Nullable String descripcion
			,@RequestParam("imagen") @Nullable String imagen
			) {
		if(idCategoria==null) categoriasService.add(0,categoria, descripcion,imagen);
		else categoriasService.up(idCategoria,categoria, descripcion,imagen);
		return"redirect:/categorias/findAll";
}
@GetMapping("/del")
public String del(@RequestParam("idCategoria")@Nullable Integer idCategoria) {
	categoriasService.del(idCategoria);
	return "redirect:/categorias/findAll";
}
}
