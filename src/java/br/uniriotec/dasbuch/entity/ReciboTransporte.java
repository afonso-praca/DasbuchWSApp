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
    private String numeroDoPedidoCliente;
    private Date dataRetirada;
    private Date dataEntrega;
    private double custo;

    public ReciboTransporte() {
    
    }

    public ReciboTransporte(int numeroDoPedido, Date dataRetirada, Date dataEntrega, double custo) {
        this.numeroDoPedidoTransporte = numeroDoPedido;
        this.dataRetirada = dataRetirada;
        this.dataEntrega = dataEntrega;
        this.custo = custo;
    }

    public int getNumeroDoPedidoTransporte() {
        return numeroDoPedidoTransporte;
    }

    public void setNumeroDoPedidoTransporte(int numeroDoPedido) {
        this.numeroDoPedidoTransporte = numeroDoPedido;
    }
    
    public String getNumeroDoPedidoCliente() {
        return numeroDoPedidoCliente;
    }

    public void setNumeroDoPedidoCliente(String numeroDoPedidoCliente) {
        this.numeroDoPedidoCliente = numeroDoPedidoCliente;
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

    public double getCusto() {
        return custo;
    }

    public void setCusto(double custo) {
        this.custo = custo;
    }
    
}
