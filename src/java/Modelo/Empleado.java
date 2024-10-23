/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author oscar
 */
public class Empleado {
    private String idEmpleado;
    private String nombre;
    private String apellido;
    private double salario;

    public Empleado(String idEmpleado, String nombre, String apellido, double salario) {
        this.idEmpleado = idEmpleado;
        this.nombre = nombre;
        this.apellido = apellido;
        this.salario = salario;
    }

    public Empleado() {
    }

    public String getIdEmpleado() {
        return idEmpleado;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public double getSalario() {
        return salario;
    }
    
    //Setter

    public void setIdEmpleado(String idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }
    
    
    //tostring

    @Override
    public String toString() {
        return "Id. Empleado: " + idEmpleado + 
                "\nNombre :" + nombre + 
                "\nApellido: " + apellido + 
                "\nSalario:" + salario;
    }
    
}
