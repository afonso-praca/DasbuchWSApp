/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uniriotec.dasbuch;

import br.uniriotec.dasbuch.dao.DasbuchDAO;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.ejb.Stateless;

import br.uniriotec.dasbuch.entity.*;
import java.sql.Date;

/**
 *
 * @author afonso
 */
@WebService(serviceName = "DasbuchWS")
@Stateless()
public class DasbuchWS {
    
    private static final double CUSTO_ENTREGA = 10.0;

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
        
        response.setNumeroDoPedidoCliente(pedido);
        response.setNotaFiscal(notaFiscal);
        response.setCliente(cliente);
        response.setEnderecoRetirada(retirada);
        response.setEnderecoEntrega(entrega);
        response.setLivro(livro);
        
        response.setCusto(CUSTO_ENTREGA);
        response.setDataEntrega(new Date(System.currentTimeMillis()));
        response.setDataRetirada(new Date(System.currentTimeMillis()));
        
        DasbuchDAO dao = new DasbuchDAO();
        int idPedidoTransporte = dao.persistir(response);
        if(idPedidoTransporte != -1)
            response.setNumeroDoPedidoTransporte(idPedidoTransporte);
        
        return response;
    }
   
}
