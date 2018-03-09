<!-- THIF FILE CONTAIN THE HTML STRUCTURE FOR MAIN PAGE , WHICH CONTAIN SEARCH FILTERS -->
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Expedia Hotel</title>
</head>
<body style='color:white;background-color: #000c; background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-position: center top;'>
<h1 style="text-align:center">Expedia Hotels</h1>

<fieldset style="width:50%;position:absolute;left:35%;top:50%;margin:-100px 0 0 -150px">
	<div>
		<form name="search-form" action="/Expedia_project/ExpediaHotelController" method="get">
			<input type="hidden" name="sort_p" id="sort_p" value="0"/>
			<h2 align="center">Find Deals:</h2>
			<div>
			<p><input name="destinationName" id="destinationName" style="width:100%;height:34px;text-align:center;" type="text" placeholder="Destination Name"/></p>
			<p>
				<input name="minTripStartDate" id="minTripStartDate" style="width:48%;height:34px;text-align:center;" type="text" placeholder="Min Start Date (Ex. 2018-03-03)"/>
				<input name="maxTripStartDate" id="maxTripStartDate" style="width:48%;height:34px;text-align:center;" type="text" placeholder="Max Start Date (Ex. 2018-03-03)"/>
			</p>
			<p>
				<input name="minStarRating" id="minStarRating" style="width:48%;height:34px;text-align:center;" type="text" placeholder="Min Stars (Ex. 2.0)"/>
				<input name="minGuestRating" id="minGuestRating" style="width:48%;height:34px;text-align:center;" type="text" placeholder="Min Guest Rate (Ex. 4.5)"/>
			</p>
			<p align="center"><button type="submit" style="width:30%;height:34px;text-align:center;background-color:#0898ff">Search</button></p>
			</div>
		</form>
	</div>
</fieldset>
<div style="width:50%;position:absolute;top:90%;">
Owner: Tharaa Abu Ashour</br>
Email: tharaaabuashour@gmail.com</br>
Phone: 00962790041475</br>
</div>