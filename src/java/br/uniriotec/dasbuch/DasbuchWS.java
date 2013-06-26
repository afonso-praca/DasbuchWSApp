/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uniriotec.dasbuch;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.ejb.Stateless;

import br.uniriotec.dasbuch.entity.*;
import java.util.Date;

/**
 *
 * @author afonso
 */
@WebService(serviceName = "DasbuchWS")
@Stateless()
public class DasbuchWS {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "procederTransporte")
    public ReciboTransporte procederTransporte(
        @WebParam(name = "pedido") String pedido,
        @WebParam(name = "notaFiscal") String notaFiscal,
        @WebParam(name = "cliente") Cliente cliente,
        @WebParam(name = "retirada") Endereco retirada, 
        @WebParam(name = "entrega") Endereco entrega,
        @WebParam(name = "livro") Livro livro) {
        
        ReciboTransporte response = new ReciboTransporte();
        
        response.setCusto(10.00);
        response.setDataEntrega(new Date());
        response.setDataRetirada(new Date());
        response.setNumeroDoPedidoTransporte(10);
        response.setNumeroDoPedidoCliente(pedido);
        
        return response;
    }
   
}
