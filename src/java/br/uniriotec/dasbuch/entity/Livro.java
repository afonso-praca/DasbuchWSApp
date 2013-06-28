/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uniriotec.dasbuch.entity;

/**
 *
 * @author afonso
 */
public class Livro {
    
    private String isbn;
    private String titulo;
    private double comprimento;
    private double largura;
    private double altura;
    private double peso;
    private String editora;

    public Livro() {
        
    }

    public Livro(String isbn, String titulo, double comprimento, double largura, double altura, double peso, String editora) {
        this.isbn = isbn;
        this.titulo = titulo;
        this.comprimento = comprimento;
        this.largura = largura;
        this.altura = altura;
        this.peso = peso;
        this.editora = editora;
    }
    
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getEditora() {
        return editora;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public double getLargura() {
        return largura;
    }

    public void setLargura(double largura) {
        this.largura = largura;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public double getComprimento() {
        return comprimento;
    }

    public void setComprimento(double comprimento) {
        this.comprimento = comprimento;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

}
