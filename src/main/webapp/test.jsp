<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="resources/js/jquery.table2excel.js"></script>
<script>

</script>
</head>


<body>
<table id="table1" data-tableName="Test Table 1">
            <thead>
                <tr><td>일번</td></tr>
            </thead>
            <tbody>
                <tr>
                    <td>test one</td>
                    <td>test one</td></tr>
                <tr>
                    <td>test two</td>
                    <td>test two</td>
                </tr>
            </tbody>
            
        </table>
 
 
        <script>
            $(function() {
                $("#table1").table2excel({
                    name: "Excel table",
                    filename: "excel table",
                    fileext: ".xlsx",
                    exclude_img: true,
                    exclude_links: true,
                    exclude_inputs: true
                });
            });
        </script>
</body>
</html>
