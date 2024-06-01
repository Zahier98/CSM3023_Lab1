<%-- 
    Document   : readCSVFile
    Created on : 31 Mar 2024, 2:14:04 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read CSV File</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                padding: 8px 30px;
                text-align: center;
            }
            
            th {
                background-color: lightgray;
            }
        </style>
    </head>
    <body>
        
        <h1>Read CSV files and populate it into HTML's table</h1>
        
        <%
            String filePath = "C:/Users/Zahier/Desktop/Zahier/UMT/Sem 4/CSM3023 Pembangunan Aplikasi Web/CSM3023 - S67943/Lab 1 - Servlet/Sales.csv";

            List<String[]> csvData = new ArrayList<>();

            try {
                BufferedReader br = new BufferedReader(new FileReader(filePath));
                String line;
                while ((line = br.readLine()) != null) {
                    String[] parts = line.split(",");
                    csvData.add(parts);
                }
                br.close();
            } catch (IOException e) {
                out.println("Error reading CSV file: " + e.getMessage());
            }
        %>

        <table>
            <thead>
                <tr>
                    <th>Customer</th>
                    <th>Cust. Type</th>
                    <th>Purchase</th>
                    <th>Discount</th>
                </tr>
            </thead>
            <tbody>
                <% for (int i = 0; i < csvData.size(); i++) { %>
                    <tr>
                        <% 
                            String[] rowData = csvData.get(i);
                            String customer = rowData[0];
                            String custType = rowData[1];
                            int purchase = Integer.parseInt(rowData[2]);
                            double discount = 0.0;
                            if (custType.equalsIgnoreCase("Cash")) {
                                discount = purchase * 0.1;
                            }
                        %>
                        <td><%= customer %></td>
                        <td><%= custType %></td>
                        <td><%= purchase %></td>
                        <td><%= String.format("%.2f", discount) %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>