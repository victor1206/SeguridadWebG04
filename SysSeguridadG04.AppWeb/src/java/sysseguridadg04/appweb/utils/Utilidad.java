/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sysseguridadg04.appweb.utils;

/**
 *
 * @author victo
 */
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;

public class Utilidad {
    public static String getParameter(HttpServletRequest request, String pKey, 
                                     String pDefault)
    {
        String result = "";
        String value = request.getParameter(pKey);
        if(value != null && value.trim().length() > 0)
        {
            result = value;
        }
        else
        {
            result = pDefault;
        }
        return result;
    }
    
    public static void enviarError(String pError, HttpServletRequest request,
                                   HttpServletResponse response) throws 
                                   ServletException, IOException
    {
        request.setAttribute("error", pError);
        request.getRequestDispatcher("Views/Shared/error.jsp").
                forward(request, response);
    }
    
    public static String obtenerRuta(HttpServletRequest request, String pStrRuta)
    {
        return request.getContextPath()+ pStrRuta;
    }
}