/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

/**
 *
 * @author isra9
 */
public class Usuario {

    String email;
    String pass;
    int rango;

    public Usuario(String email, String pass) {
        this.email = email;
        this.pass = pass;
        this.rango = 0;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRango() {
        return rango;
    }

    public void setRango(int rango) {
        this.rango = rango;
    }

    @Override
    public String toString() {
        return "Usuario{" + "email=" + email + ", pass=" + pass + ", rango=" + rango + '}';
    }

}
