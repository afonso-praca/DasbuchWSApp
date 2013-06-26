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
    
    private int numeroDoPedido;
    private Date dataRetirada;
    private Date dataEntrega;
    private double custo;

    public ReciboTransporte() {
    
    }

    public ReciboTransporte(int numeroDoPedido, Date dataRetirada, Date dataEntrega, double custo) {
        this.numeroDoPedido = numeroDoPedido;
        this.dataRetirada = dataRetirada;
        this.dataEntrega = dataEntrega;
        this.custo = custo;
    }

    public int getNumeroDoPedido() {
        return numeroDoPedido;
    }

    public void setNumeroDoPedido(int numeroDoPedido) {
        this.numeroDoPedido = numeroDoPedido;
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
