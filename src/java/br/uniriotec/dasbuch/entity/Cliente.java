/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uniriotec.dasbuch.entity;

/**
 *
 * @author afonso
 */
public class Cliente {
    
    private String cpf;
    private String nome;

    public Cliente() {
    
    }

    public Cliente(String CPF, String Nome) {
        this.cpf = CPF;
        this.nome = Nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String CPF) {
        this.cpf = CPF;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String Nome) {
        this.nome = Nome;
    }
    
}
