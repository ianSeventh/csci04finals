<%-- 
    Document   : transactSuccess
    Created on : 03 17, 12, 10:28:14 PM
    Author     : jezi22
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="transactSuccess.css">
        <title>Transaction Successful</title>
        <%
            String idArrival = request.getParameter("flArrival");
            String idDepart = request.getParameter("flDeparture");
            String fname = request.getParameter("fullname");
            String address = request.getParameter("address");
            String aDate, aFlightNo, aTime, aPrice, aArTime;
            String dDate, dFlightNo, dTime, dPrice, dArTime;
            int arrivalIndex = 0, departIndex = 0;
            String[][] arrival = new String [][]
            {
            {"PR301", "April 01,2012", "7:30 AM", "$335.00","10:30 AM"},
            {"PR302", "April 01,2012", "9:30 AM", "$175.00","12:30 PM"},
            {"PR303", "April 01,2012","1:15 PM",  "$225.00","4:15 PM"},
            {"PR304", "April 01,2012","4:15 PM",  "$195.00","7:15 PM"},
            {"PR305","April 02,2012", "7:30 AM", "$195.00","10:30 PM"},
            {"PR306","April 02,2012", "9:30 AM", "$205.00","12:30 PM"},
            {"PR307","April 02,2012", "1:15 AM", "$265.00","4:15 AM"},
            {"PR308","April 02,2012", "4:15 AM", "$365.00","7:15 AM"}
            };

            String[][] departure = new String [][]
            {
            {"PR401", "April 03,2012", "7:30 AM", "$95.00","10:30 AM"},
            {"PR402", "April 03,2012", "9:30 AM", "$165.00","12:30 PM"},
            {"PR403", "April 03,2012","1:15 PM",  "$89.00","4:15 PM"},
            {"PR404", "April 03,2012","4:15 PM",  "$265.00","7:15 PM"},
            {"PR405","April 04,2012", "7:30 AM", "$265.00","10:30 AM"},
            {"PR406","April 04,2012", "9:30 AM", "$175.00","12:30 PM"},
            {"PR407","April 04,2012", "1:15 AM", "$195.00","4:15 AM"},
            {"PR408","April 04,2012", "4:15 AM", "$201.00","7:15 AM"}
            };
            for(int i=0;i < arrival.length; i++){
                if(arrival[i][0].equals(idArrival)) {
                    arrivalIndex = i;
                }
                if(departure[i][0].equals(idDepart)){
                    departIndex = i;
                }
            }
            aDate = arrival[arrivalIndex][1];
            aFlightNo = arrival[arrivalIndex][0];
            aTime = arrival[arrivalIndex][2];
            aPrice = arrival[arrivalIndex][3];
            aArTime = arrival[arrivalIndex][4];
            
            dDate = departure[departIndex][1];
            dFlightNo = departure[departIndex][0];
            dTime = departure[departIndex][2];
            dPrice = departure[departIndex][3];
            dArTime = departure[departIndex][4];

        %>
    </head>
    <body>
        <div id="wrapper">
            <div id="inner_wrap">
                <div id="banner">Philippine Airlines (PAL) Ticket</div>
                <div id="customerinfo">
                    <table>
                        <tr>
                            <td><b>Name:</b></td>
                            <td><%=fname%></td>
                        </tr>
                        <tr>
                            <td><b>Address:</b></td>
                            <td><%=address%></td>
                        </tr>
                    </table>
                </div>
                <div class="header"><h4>Departure</h4></div>
                    <table  class="table_float">
                        <tr>
                            <td><b>Date</b></td>
                            <td><%=aDate%></td>
                        </tr>
                        <tr>
                            <td><b>Price</b></td>
                            <td><%=aPrice%></td>
                        </tr>
                        <tr>
                            <td><b>Flight #</b></td>
                            <td><%=aFlightNo%></td>
                        </tr>
                        <tr>
                            <td><b>Duration</b></td>
                            <td>3:50</td>
                        </tr>
                       </table>
                       <table>
                        <tr>
                            <td><b>From</b></td>
                        </tr>
                        <tr>
                            <td>Philippines</td>
                            <td><%=aTime%></td>
                        </tr>
                        <tr>
                            <td><br><b>Arrive</b></td>
                        </tr>
                        <tr>
                            <td>Singapore</td>
                            <td><%=aArTime%></td>
                        </tr>
                       </table>
                <div class="header"><h4>Return</h4></div>
                    <table class="table_float">
                        <tr>
                            <td><b>Date</b></td>
                            <td><%=dDate%></td>
                        </tr>
                        <tr>
                            <td><b>Price</b></td>
                            <td><%=dPrice%></td>
                        </tr>
                        <tr>
                            <td><b>Flight #</b></td>
                            <td><%=dFlightNo%></td>
                        </tr>
                        <tr>
                            <td><b>Duration</b></td>
                            <td>3:50</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td><b>From</b></td>
                        </tr>
                        <tr>
                            <td>Singapore</td>
                            <td><%=dTime%></td>
                        </tr>
                        <tr>
                            <td><br><b>Arrive</b></td>
                        </tr>
                        <tr>
                            <td>Philippines</td>
                            <td><%=dArTime%></td>
                        </tr>
                    </table>
            </div>
        </div>
    </body>
</html>
