/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sysseguridadg04.accesoadatos;

/**
 *
 * @author victo
 */
import java.sql.*;

public class ComunDB {
    //clase para tipo de SGBD al que estamos 
    //Accediendo
    class TipoDB{
        static final int SQLSERVER = 1;
        static final int MYSQL = 2;
    }
    //propiedad del SGBD que estamos utilizando
    static int TIPODB = TipoDB.SQLSERVER;
    static String connectionURL = "jdbc:sqlserver://localhost:1433;"
            + "database=DbPracticaG04;"
            + "user=sa;"
            + "password=Vanessa0820@1989;"
            + "loginTimeout=30;encrypt=false;trustServerCertificate=false";
            //+ "integratedSecurity=true";
    
    /*Metodo utilizado para obtener la conexion abierta a un gestor
    de base de datos*/
    public static Connection obtenerConexion() throws SQLException
    {
        DriverManager.registerDriver(new 
        com.microsoft.sqlserver.jdbc.SQLServerDriver());
        Connection connect = DriverManager.getConnection(
                connectionURL);
        return connect;
    }
    /*
    el metodo createStatement lo utilizaremos para devolver un 
    statement el cual permite ejecutar una consulta de INSERT,
    UPDATE, DELETE y SELECT en la base de datos
    */
    public static Statement createStatement(Connection pCon) throws SQLException
    {
        Statement statement = pCon.createStatement();
        return statement;
    }
    
    public static PreparedStatement createPreparedStatement(Connection pCon, String pSql) throws SQLException
    {
        PreparedStatement statement = pCon.prepareStatement(pSql);
        return statement;
    }
    
    public static ResultSet obtenerResulSet(Statement pStatement, String pSql) throws SQLException
    {
        ResultSet resultSet = pStatement.executeQuery(pSql);
        return resultSet;
    }
    
    public static ResultSet obtenerResulSet(PreparedStatement pPreparedStatement) throws SQLException
    {
        ResultSet resultSet = pPreparedStatement.executeQuery();
        return resultSet;
    }
    
    class UtilQuery{
        private String SQL;
        private PreparedStatement statement;
        private int numWhere;

        public UtilQuery() {
        }

        public UtilQuery(String SQL, PreparedStatement statement, int numWhere) {
            this.SQL = SQL;
            this.statement = statement;
            this.numWhere = numWhere;
        }

        public String getSQL() {
            return SQL;
        }

        public void setSQL(String SQL) {
            this.SQL = SQL;
        }

        public PreparedStatement getStatement() {
            return statement;
        }

        public void setStatement(PreparedStatement statement) {
            this.statement = statement;
        }

        public int getNumWhere() {
            return numWhere;
        }

        public void setNumWhere(int numWhere) {
            this.numWhere = numWhere;
        }
        
        public void AgregarWhereAnd(String pSql)
        {
            if(this.SQL != null)
            {
                if(this.numWhere == 0)
                {
                    this.SQL += " Where ";
                }
                else
                {
                    this.SQL += " And ";
                }
                this.SQL += pSql;
            }
            this.numWhere++;
        }
    }
}
