/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package sysseguridadg04.appweb.utils;

/**
 *
 * @author victo
 */

import java.io.IOException;
import jakarta.servlet.ServletException;

public interface IAuthorize {
    void authorize() throws ServletException, IOException;
}
