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
    
    private String titulo;
    private String editora;
    private String ano;
    private String isbn;
    private double largura;
    private double altura;
    private double comprimento;
    private double peso;
    private String idioma;

    public Livro() {
        
    }

    public Livro(String titulo, String editora, String ano, String isbn, double largura, double altura, double profundidade, double peso) {
        this.titulo = titulo;
        this.editora = editora;
        this.ano = ano;
        this.isbn = isbn;
        this.largura = largura;
        this.altura = altura;
        this.comprimento = profundidade;
        this.peso = peso;
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

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
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

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }
    
}
