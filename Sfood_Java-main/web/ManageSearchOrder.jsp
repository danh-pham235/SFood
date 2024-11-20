<%-- 
    Document   : ManageSearchOrder
    Created on : Jul 16, 2024, 11:09:55 AM
    Author     : Admin
--%>


<%@page import="dto.Account"%>
<%@page import="dto.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Item Page</title>
        <link rel="stylesheet" href="./CSS/slidebar.css"/>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
            />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <div class="container-fluid">

            <div class="row flex-nowrap">
                <!-- SlidesBar -->
                <%@include file="./Component/SlideBar.jsp" %>
                <!-- SlidesBar END-->

                <div class="mt-4" style="width: 80%">
                    <form action="ManageSearchOrderServlet" class="d-flex align-items-center">
                        <select class="form-select me-2" aria-label="Default select" name="txtmonth">
                            <option selected>Chọn tháng</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <button type="submit" class="btn btn-outline-primary">Chọn</button>
                    </form>


                    <div class="col py-5">
                        <table class="table table-striped table-bordered">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">ID Người Dùng</th>
                                    <th scope="col">Ngày Tháng</th>
                                    <th scope="col">Tổng Tiền</th>
                                    <th scope="col">Trạng Thái</th>
                                    <th scope="col">Cập Nhật</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% String[] arr = {"", "Pending", "Processing", "Complete"};
                                    ArrayList<Order> list = (ArrayList<Order>) request.getAttribute("listSearch");
                                    ArrayList<Account> listuser = (ArrayList<Account>) request.getAttribute("ListUser");
                                    if (list != null) {
                                        for (Order d : list) {
                                            for (Account e : listuser) {
                                                if (d.getUserId() == e.getUserId()) {
                                                    String name = e.getName();


                                %>
                                <tr>
                                    <th scope="row"><%= d.getOrderId()%></th>
                                    <td><%= name %></td>
                                    <td><%= d.getOrderDate()%></td>
                                    <td>$<%= d.getTotal()%></td>
                                    <td><%= arr[d.getStatus()]%></td>
                                    <td>
                                        <form action="ManageUpdateOrderServlet"  class="d-flex align-items-center">
                                            <input type="hidden" name="OrderId" value="<%= d.getOrderId()%>" />
                                            <select class="form-select me-2" aria-label="Default select" name="txtStatus">
                                                <option selected>Chọn Trạng Thái</option>
                                                <option value="1">Chuẩn Bị</option>
                                                <option value="2">Đang Hoàn Thiện</option>
                                                <option value="3">Hoàn Thành</option>
                                            </select>
                                            <button type="submit" class="btn btn-danger">Chọn</button>
                                        </form>
                                    </td>
                                </tr>
                                <%
                                                }
                                            }
                                        }
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>



                </div>

            </div>
        </div>

