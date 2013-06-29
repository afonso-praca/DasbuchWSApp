/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uniriotec.dasbuch.dao;

import br.uniriotec.dasbuch.entity.Cliente;
import br.uniriotec.dasbuch.entity.Endereco;
import br.uniriotec.dasbuch.entity.Livro;
import br.uniriotec.dasbuch.entity.ReciboTransporte;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Daniel Gribel
 */
public class DasbuchDAO {
    public static String dbUrl = "jdbc:postgresql://localhost:5432/dasbuch";
    public static Connection conn = null;
    
    @SuppressWarnings("UseSpecificCatch")
    private static void abrirConexao() {
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            conn = DriverManager.getConnection(dbUrl, "postgres", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private static void fecharConexao() {
        try {
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public int persistir(ReciboTransporte reciboTransporte) {
        abrirConexao();
        checarExistenciaEndereco(reciboTransporte.getEnderecoRetirada());
        checarExistenciaEndereco(reciboTransporte.getEnderecoEntrega());
        checarExistenciaCliente(reciboTransporte.getCliente());
        checarExistenciaLivro(reciboTransporte.getLivro());
        int idPedidoTransporte = persistirPedidoTransporte(reciboTransporte);
        fecharConexao();
        //System.out.println("idPedidoTransporte = " + idPedidoTransporte);
        return idPedidoTransporte;
    }
    
    private void checarExistenciaCliente(Cliente cliente) {
        List<String> resultado = new ArrayList<String>();
        try {
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM cliente WHERE cli_cpf = ?");    
            stmt.setString(1, cliente.getCpf());
            stmt.setMaxRows(1);
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()) {
                String cpf = resultSet.getString("cli_cpf");
                resultado.add(cpf);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(resultado.isEmpty()) {
            persistirCliente(cliente);
        }
    }
    
    private void checarExistenciaLivro(Livro livro) {
        List<String> resultado = new ArrayList<String>();
        try {
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM livro WHERE liv_isbn = ?");    
            stmt.setString(1, livro.getIsbn());
            stmt.setMaxRows(1);
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()) {
                String isbn = resultSet.getString("liv_isbn");
                resultado.add(isbn);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(resultado.isEmpty()) {
            persistirLivro(livro);
        }
    }
    
    private void checarExistenciaEndereco(Endereco endereco) {
        List<Integer> resultado = new ArrayList<Integer>();
        try {
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM endereco WHERE end_id = ?");    
            stmt.setInt(1, endereco.getId());
            stmt.setMaxRows(1);
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()) {
                int idEndereco = resultSet.getInt("end_id");
                resultado.add(idEndereco);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(resultado.isEmpty()) {
            persistirEndereco(endereco);
        }
    }
    
    private void persistirCliente(Cliente cliente) {
        try {
            PreparedStatement stmt = conn.prepareStatement(
                    "INSERT INTO cliente("
                    + "cli_nome, "
                    + "cli_cpf, "
                    + "cli_id_endereco, "
                    + "cli_email, "
                    + "cli_telefone)"
                    + "VALUES (?, ?, ?, ?, ?)");
            
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getCpf());
            stmt.setInt(3, cliente.getEndereco().getId());
            stmt.setString(4, cliente.getEmail());
            stmt.setString(5, cliente.getTelefone());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void persistirLivro(Livro livro) {
        try {
            PreparedStatement stmt = conn.prepareStatement(
                    "INSERT INTO livro("
                    + "liv_isbn, "
                    + "liv_titulo, "
                    + "liv_comprimento, "
                    + "liv_largura, "
                    + "liv_altura, "
                    + "liv_peso, "
                    + "liv_editora)"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)");
            
            stmt.setString(1, livro.getIsbn());
            stmt.setString(2, livro.getTitulo());
            stmt.setDouble(3, livro.getComprimento());
            stmt.setDouble(4, livro.getLargura());
            stmt.setDouble(5, livro.getAltura());
            stmt.setDouble(6, livro.getPeso());
            stmt.setString(7, livro.getEditora());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    private void persistirEndereco(Endereco endereco) {
        try {
            PreparedStatement stmt = conn.prepareStatement(
                    "INSERT INTO endereco("
                    + "end_rua, "
                    + "end_numero, "
                    + "end_complemento, "
                    + "end_bairro, "
                    + "end_cidade, "
                    + "end_estado, "
                    + "end_cep)"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)");
            
            stmt.setString(1, endereco.getLogradouro());
            stmt.setString(2, endereco.getNumero());
            stmt.setString(3, endereco.getComplemento());
            stmt.setString(4, endereco.getBairro());
            stmt.setString(5, endereco.getCidade());
            stmt.setString(6, endereco.getEstado());
            stmt.setString(7, endereco.getCep());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }  
    
    private int persistirPedidoTransporte(ReciboTransporte reciboTransporte) {
        ResultSet rs = null;
        int response = -1;
        try {
            PreparedStatement stmt = conn.prepareStatement(
                    "INSERT INTO pedido_transporte("
                    + "ped_id_nota_fiscal, "
                    + "ped_isbn, "
                    + "ped_endereco_retirada, "
                    + "ped_endereco_entrega, "
                    + "ped_data_registro, "
                    + "ped_data_retirada, "
                    + "ped_data_entrega, "
                    + "ped_custo, "
                    + "ped_id_livraria, "
                    + "ped_id_pedido_livraria, "
                    + "ped_cpf) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
            
            stmt.setString(1, reciboTransporte.getNotaFiscal());
            stmt.setString(2, reciboTransporte.getLivro().getIsbn());
            stmt.setInt(3, reciboTransporte.getEnderecoRetirada().getId());
            stmt.setInt(4, reciboTransporte.getEnderecoEntrega().getId());
            
            stmt.setDate(5, new Date(reciboTransporte.getDataRegistro().getTime()));
            stmt.setDate(6, new Date(reciboTransporte.getDataRetirada().getTime()));
            stmt.setDate(7, new Date(reciboTransporte.getDataEntrega().getTime()));
            stmt.setDouble(8, reciboTransporte.getCusto());
            stmt.setInt(9, reciboTransporte.getLivraria());
            stmt.setString(10, reciboTransporte.getNumeroDoPedidoCliente());
            stmt.setString(11, reciboTransporte.getCliente().getCpf());
            
            stmt.executeUpdate();
            
            rs = stmt.getGeneratedKeys();
            
            if(rs != null && rs.next()) {
                response = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return response;
    }
    
}
