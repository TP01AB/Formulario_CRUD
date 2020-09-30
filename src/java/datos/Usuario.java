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
    String nombre;
    String pass;
    int rango;

    public Usuario() {
    }

    public Usuario(String email, String pass) {
        this.nombre = nombreAleat();
        this.email = email;
        this.pass = pass;
        this.rango = 0;
    }

    private String nombreAleat() {
        int n = (int) (Math.random() * 4);
        String nombre = null;
        switch (n) {
            case 0:
                nombre = "Israel";
                break;
            case 1:
                nombre = "Jonh";
                break;
            case 2:
                nombre = "Belen";
                break;
            case 3:
                nombre = "Alvaro";
                break;
        }
        return nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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
        return "Usuario{" + "email=" + email + ", nombre=" + nombre + ", rango=" + rango + '}';
    }

}
