/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author oscar
 */
public final class Nomina { //No se puede heredar esta clase por motivos de seguridad
    private final Empleado empleado; // Los atributos nno van a cambiar de valor una vez esten inicializados
    private final int diasTrabajados; 
    private double salario; //este se calcula de acuerdo al salario base y los dias trabajados
    private double descuentoSalud;
    private double descuentoPension;
    private double auxilioTransporte;
    private double neto;
    
    public Nomina(Empleado empleado, int diasTrabajados) {
        this.empleado = empleado;
        this.diasTrabajados = diasTrabajados;
        calcular();
    }
    
    public void calcular(){
        // 1. Calculo del salario
        salario = (empleado.getSalario() / 30) * diasTrabajados;
        
        //2 Calculo de los descuentos
        descuentoSalud = salario * 0.04;
        descuentoPension = salario * 0.04;
        
        //validar si el empleado tiene un salario base de dos smlv 
        if(empleado.getSalario() >= 2*1300000){
            auxilioTransporte = 0;
        }else{
            auxilioTransporte = 162000;
        }
        
        //3. Calcular neto:
        
        neto = salario - descuentoSalud - descuentoPension + auxilioTransporte;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public int getDiasTrabajados() {
        return diasTrabajados;
    }

    public double getSalario() {
        return salario;
    }

    public double getDescuentoSalud() {
        return descuentoSalud;
    }

    public double getDescuentoPension() {
        return descuentoPension;
    }

    public double getAuxilioTransporte() {
        return auxilioTransporte;
    }

    public double getNeto() {
        return neto;
    }
}
