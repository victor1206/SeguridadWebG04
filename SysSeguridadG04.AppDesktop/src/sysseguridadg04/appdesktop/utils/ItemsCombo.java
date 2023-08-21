/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sysseguridadg04.appdesktop.utils;

/**
 *
 * @author victo
 */
public class ItemsCombo {
    private int id;
    private String label;

    public ItemsCombo() {
    }

    public ItemsCombo(int id, String label) {
        this.id = id;
        this.label = label;
    }
    
    public String toString() {
        return label;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
    
    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ItemsCombo other = (ItemsCombo) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }
}
