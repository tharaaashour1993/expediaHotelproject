<%@page import="java.util.ArrayList"%>
<%@page import="com.expedia.hotel.mvc.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Search Results</title>

<script>
 function sortHotels() {document.getElementById("sortForm").submit();}
 function redirectHomePage() {location.href="/Expedia_project/ExpediaHotelHome.jsp";}
</script>

</head>
<body style='color: white; background-color: #000c'>
	<h1 align="center">Hotel Search Results:</h1>
	<div align="center">
		<%
// 	WARNING MSSG TO THE USER WHEN THE NUMBER OF REULTS = 0
		ArrayList<ExpediaHotelModal> Hotel_list = new ArrayList<ExpediaHotelModal>();
		Hotel_list=(ArrayList<ExpediaHotelModal>)request.getAttribute("Hotel");
		String sort_by = request.getAttribute("sort_by").toString();
		if (Hotel_list.size()==0) {
			out.println("<fieldset style='width:50%;position:absolute;left:35%;top:60%;margin:-100px 0 0 -150px'>No Results Found!<br><br> <button type='button' onclick='javascript:redirectHomePage();'>Back!</button></fieldset>");
		} else {
			%>
			<form id="sortForm" action="/Expedia_project/ExpediaHotelController" method="get">
				<input type="hidden" name="sort_p" id="sort_p" value="1" />
				<div>
					<span><strong>Sort Results By:</strong></span>
					<select name="sort_value" id="sort_value" onchange="javascript:sortHotels();">
						<option value="">-- Select One --</option>
						<option ${sort_by=="star_rate" ? 'selected=selected' : ''} value="star_rate">Star Rate</option>
						<option ${sort_by=="guest_rate" ? 'selected=selected' : ''} value="guest_rate">Guest Rate</option>
						<option ${sort_by=="price" ? 'selected=selected' : ''} value="price">Price</option>
					</select>
				</div>
			</form>
			<%
			//	DISPLAY RESULTS TO THE USER IN TABLE FORMAT
			out.println("<h3 style='color:gray'><span align='left'>" +Hotel_list.size()+" Elements Found!</span><span align='right'> <button type='button' onclick='javascript:redirectHomePage();'>Back!</button></span> </h3>");
			out.println("<table border='1' style='width:50%'><col width='25%'><col width='75%'>");
			out.println("<thead><th></th><th>Hotel Deatils</th></thead>");
			for(ExpediaHotelModal hotel : Hotel_list) {
				out.println("<tr><td><img style='width:80%' src="+hotel.getHotelImageUrl()+" /></td>");
				out.println("<td>"+hotel.toString()+"</td></tr>");
			}
			out.println("</table>");
		}
		%>
	</div>
</body>
</html>