
<%@page import="dao.BookDAO"%>
<%@page import="model.book.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Book</title>
        <link rel="icon" href="images/logo.ico" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <div id="wrap">
            <%@include file="header-admin.jsp" %>
            <div class="center_content">
                <h2 class="title">Books</h2>
                <a class="btn btn-success" href="book-admin.jsp">Add</a>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Title</th>
                            <th scope="col">Price</th>
                            <th scope="col">Discount</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<Book> list = null;
                            BookDAO bookDao = new BookDAO();
                            list = bookDao.getBookNew();
                            for (int i = 0; i < list.size(); i++) {
                        %>
                        <tr>
                            <td><%=i+1%></td>
                            <td><%=list.get(i).getName()%></td>
                            <td><%=list.get(i).getPrice()%>đ</td>
                            <td><%=list.get(i).getDiscount()%>%</td>
                            <td>
                                <form action="${pageContext.request.contextPath}/Books" method="post">
                                    <input hidden type="text" name="bookId" value="<%=list.get(i).getId()%>" />
                                    <input type="submit" class="btn btn-danger" name="deleteButton" value="Delete" />
                                    <input type="submit" class="btn btn-danger" name="getItemId" value="Change" />
                                </form>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>