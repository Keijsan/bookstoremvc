
<%@page import="model.book.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>BookItem</title>
        <link rel="icon" href="images/logo.ico" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
        <script src="js/prototype.js" type="text/javascript"></script>
        <script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
        <script src="js/lightbox.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/java.js"></script>
        <%
            String message = (String) session.getAttribute("message");
            if (message != null) {
        %>
        <script>
            alert("<%=message%>");
        </script>
        <%
                session.removeAttribute("message");
            }%>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <% Book book = (Book) request.getAttribute("book");%>
        <div class="center_content">
            <div class="product">
                <div class="product_des">
                    <h3 style="text-align: center; color: #0069d9"><%=book.getName()%></h3>
                    <img src="<%=book.getImage()%>" alt="Book" height="500" style="margin: auto">
                    <p style="margin: auto">Tác giả: <%=book.getAuthorName()%></p>
                    <p style="margin: auto">Nhà xuất bản: <%=book.getPublisherName()%></p>
                    <p style="margin: auto">Thể loại: <%=book.getCategory()%></p>
                    <p style="margin: auto">Mô tả: <%=book.getSummary()%></p>
                    <div class="product_price" style="margin: auto ">Giá: <%=book.getPrice()%> VNĐ</div>
                    
                    <a href="Order?id=<%=book.getId()%>&name=Books&price=<%=book.getPrice()%>&productName=<%=book.getName()%>" class="product_add" style="margin: auto">
                        Add To Cart
                    </a>
                    
                </div>
            </div>
        </div>
    </body>
</html>