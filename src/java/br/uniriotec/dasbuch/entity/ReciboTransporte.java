/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uniriotec.dasbuch.entity;

import java.util.Date;

/**
 *
 * @author afonso
 */
public class ReciboTransporte {
    
    private int numeroDoPedidoTransporte;
    private int livraria;
    private String numeroDoPedidoCliente;
    private Cliente cliente;
    private String notaFiscal;
    private Livro livro;
    private Endereco enderecoRetirada;
    private Endereco enderecoEntrega;
    private Date dataRetirada;
    private Date dataEntrega;
    private Date dataRegistro;
    private double custo;
    
    public ReciboTransporte() {
        this.dataRegistro = new Date(System.currentTimeMillis());
        this.dataRetirada = new Date(System.currentTimeMillis());
        this.dataEntrega = new Date(System.currentTimeMillis());
        this.custo = 10.00;
    }

    public int getNumeroDoPedidoTransporte() {
        return numeroDoPedidoTransporte;
    }

    public void setNumeroDoPedidoTransporte(int numeroDoPedidoTransporte) {
        this.numeroDoPedidoTransporte = numeroDoPedidoTransporte;
    }

    public int getLivraria() {
        return livraria;
    }

    public void setLivraria(int livraria) {
        this.livraria = livraria;
    }

    public String getNumeroDoPedidoCliente() {
        return numeroDoPedidoCliente;
    }

    public void setNumeroDoPedidoCliente(String numeroDoPedidoCliente) {
        this.numeroDoPedidoCliente = numeroDoPedidoCliente;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public String getNotaFiscal() {
        return notaFiscal;
    }

    public void setNotaFiscal(String notaFiscal) {
        this.notaFiscal = notaFiscal;
    }

    public Livro getLivro() {
        return livro;
    }

    public void setLivro(Livro livro) {
        this.livro = livro;
    }

    public Endereco getEnderecoRetirada() {
        return enderecoRetirada;
    }

    public void setEnderecoRetirada(Endereco enderecoRetirada) {
        this.enderecoRetirada = enderecoRetirada;
    }

    public Endereco getEnderecoEntrega() {
        return enderecoEntrega;
    }

    public void setEnderecoEntrega(Endereco enderecoEntrega) {
        this.enderecoEntrega = enderecoEntrega;
    }

    public Date getDataRetirada() {
        return dataRetirada;
    }

    public void setDataRetirada(Date dataRetirada) {
        this.dataRetirada = dataRetirada;
    }

    public Date getDataEntrega() {
        return dataEntrega;
    }

    public void setDataEntrega(Date dataEntrega) {
        this.dataEntrega = dataEntrega;
    }

    public Date getDataRegistro() {
        return dataRegistro;
    }

    public void setDataRegistro(Date dataRegistro) {
        this.dataRegistro = dataRegistro;
    }

    public double getCusto() {
        return custo;
    }

    public void setCusto(double custo) {
        this.custo = custo;
    }
    
    
}
