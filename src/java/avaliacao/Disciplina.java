/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package avaliacao;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import banco.Listener;
import java.sql.PreparedStatement;
/**
 *
 * @author lubia
 */
public class Disciplina {

    private String nome;
    private String ementa;
    private int ciclo;
    private double nota;

    public static ArrayList<Disciplina> getList() {
        ArrayList<Disciplina> minhasDisciplinas = new ArrayList<>();

        return minhasDisciplinas;
    }

    public Disciplina(String nome, String ementa, int ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }

    public status ArrayList<Disciplina> getList() throws Exception{
        ArrayList<Disciplina> list = new ArrayList<>();
        
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        Exception methodException = null;
        
        try{
            con = Listener.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM disciplinas");
            
            while(rs.next()){
                list.add(new Disciplina)
            }
        }
    }
}
