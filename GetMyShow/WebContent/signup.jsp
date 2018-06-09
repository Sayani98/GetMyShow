<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign-Up</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css">
div{
background-color: white;
width:1200px;
border: 1px solid white;
padding: 25px;
border-radius: 20px;
box-shadow: 0px 8px 16px 10px rgba(0, 0, 0, 0.2), 8px 8px 20px 8px rgba(0, 0, 0, 0.19);
}
td{
width:300px;
color : black ;
text-shadow : 1px 1px 2px grey,1px 1px 2px grey ;
font-size : 120%;
padding : 20px;
font-family:monospace;
font-weight: bold;
}
</style>
<script type="text/javascript" src="jquery-3.2.1.js"></script>
<script type="text/javascript" >
var states = ["Andaman Nicobar islands","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh","Chattisgarh","Dadra & Nagar Haveli",
              "Daman & Diu","Delhi","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu & Kashmir","Jharkhand","Karnataka","Kerala","Lakshwadeep",
              "Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Puducherry","Punjab","Rajasthan","Sikkim",
              "Tamil Nadu","Telangana","Tripura","Uttar Pradesh","Uttarakhand","West Bengal"];
              
var cities = new Array();
cities["West Bengal"] = new Array("Alipurduar","Bakura","Purba Bardhaman","Birbhum","Cooch Behar","Darjeeling","Purba Mednipur","Hooghly","Kalimpong","Malda","Murchidabad","Nadia","North 24 Parganas","Uttar Dinajpur","Purulia","South 24 Parganas","Dakshin Dinajpur","Paschin Midnapore");
cities["Andaman Nicobar islands"] = new Array("Alukian","Afra Bay","Bombooflat","Chingen","Diglipur","Garacharma","Govindnagar","Gandhinagar","Port Blair","Khudirampur","Jogindernagar","Tushnabad","Vijoynagar");
cities["Andhra Pradesh"]=new Array("Anantapur","Chittoor","East Godavari","Guntur","Kadapa","Krishna","Kurnool","Nellore","Prakasam","Srikakulam","Visakhapatnam","Vizianagaram","West Godavari");
cities["Arunachal Pradesh"]=new Array("Changlang","Tirap","Anjaw","Lohit","Upper Dibang Valley","Lower Dibang Valley","West Siang","East Siang","Tarsang","West Kameng","Upper Siang","Kurung Kumey","East Kameng","Lower Subansir","Upper Subansir","Papumpare","Longding","Namsai");
cities["Assam"]=new Array("Baksa","Baksa","Bongaigaon","Cachar","Chirang","Darrang","Dhuburi","Dibrugarh","Dima Hasao","Golaghat","Goalpara","Hailakandi","Jorhat","Kamrup","Kamrup Metropolitan","Karbi Anglong","Karimganj","Lakhimpur","Morigaon","Nagaon","Nalbari","Sivasagar","Sonitpur","Tinsukia","Udalguri");
cities["Bihar"]=new Array("Araria","Arwal","Aurangabad","Banka","Begusarai","Bhagalpur","Bhojpur","Buxar","Darbhanga","East Champaran","Gaya","Gopalganj","	Jamui","Jehanabad","Jehanabad","Kishanganj","Kaimur","Katihar","Lakhisarai","Madhubani","Munger","Madhepura","	Muzaffarpur","Nalanda","Nawada","Patna","Purnia","Rohtas","Saharsa","Samastipur","Sheohar","Sheikhpura","Saran","Sitamarhi","Supaul","Siwan","Vaishali","Vaishali");
cities["Chandigarh"]=new Array("Chandigarh");
cities["Dadra & Nagar Haveli"]=new Array("Dadra & Nagar Haveli");
cities["Daman & Diu"]=new Array("Daman","Diu");
cities["Delhi"]=new Array("New Delhi","North Delhi","North West delhi","West Delhi","South West Delhi","South Delhi","South East Delhi","Central Delhi","North Esat","Shahdara","East Delhi");
cities["Goa"]=new Array("North Goa","South Goa");
cities["Gujarat"]=new Array("Kachchh","Banas Kantha","Patan","Mehsana","SabarKantha","Aravalli","Gandhinagar","Ahmedabad","Surendranagar","Bhavnagar","Botad","Rajkot","Morbi","Jamnagar","Devbhumi Dwarka","Porbandar","Junagadh","Gir Somnath","Amreli","Anand","Kheda","PanchMahals","Mahisagar","Dohad","Vadodara","Chhota Udaipur","Narmada","Bharuch","Surat","Dangs","Navsari","Valsad","Tapi");
cities["Haryana"]=new Array("Ambala","Bhiwani","Faridabad","Fatehabad","Gurgaon","Hisar","Jhajjar","Jind","Kaithal","Karnal","Kurukshetra","Mahendragarh","Mewat","Palwal","Panchkula","Panipat","Rewari","Rohtak","Sirsa","Sonipat","Yamunanagar");
cities["Himachal Pradesh"]=new Array("Bilaspur","Chamba","Hamirpur","Kangra","Kinnaur","Kullu","Lahaul & Spiti","Mandi","Shimla","Sirmaur","Solan","Una");
cities["Jammu & Kashmir"]=new Array("Anantnag","Badgam","Bandipora","Baramulla","Ganderbal","Doda","Jammu","Kargil","Kathua","Kishtwar","Kulgam","Kupwara","Leh","Poonch","Pulwama","Rajouri","Ramban","Reasi","Samba","Shopian","Srinagar","Udhampur");
cities["Jharkhand"]=new Array("Ranchi","Lohardaga","Gumla","Simdega","Palamu","Latehar","Garhwa","West Singhbhum","Saraikela Kharsawan","East Singhbhum","Dumka","Jamtara","Sahebganj","Pakur","Godda","Hazaribagh","Chatra","Koderma","Giridih","Dhanbad","Bokaro","Deoghar","Khunti","Ramgarh");
cities["Karnataka"]=new Array("Bagalkot","Bangalore","Bangalore Rural","Belgaum","Bellary","Bidar","Bijapur","Chamarajanagar","Chikkaballapura","Chikmagalur","Chitradurga","Dakshina Kannada","Davanagere","Dharwad","Gadag","Gulbarga","Hassan","	Haveri","Kodagu","Kolar","Koppal","Mandya","Mysore","Raichur","Ramanagara","Shimoga","Tumkur","Udupi","Uttara Kannada","Yadgir");
cities["Kerela"]=new Array("Malappuram","Thiruvananthapuram","Ernakulam","Thrissur","Kozhikode","Palakkad","Kollam","Kannur","Alappuzha","Kottayam","Kasaragod","Pathanamthitta","Idukki","Wayanad");
cities["Lakswhadeep"]=new Array("Lakswhadeep");
cities["Madhya Pradesh"]=new Array("Agarmalwa","Alirajpur","Anuppur","Ashoknagar","Balaghat","Barwani","Betul","Bhind","Bhopal","Burhanpur","Chhatarpur");
cities["Maharashtra"]=new Array("Agar","Alirajpur","Anuppur","Ashok Nagar","Balaghat","Barwani","Betul","Bhind","Bhopal","Damoh","Dhar","Burhanpur","Chhatarpur","Chhindwara","Damoh","Datia","Dewas","Dindori","Guna","Gwalior","Harda","Hoshangabad","Katni","Indore","Jabalpur","Vidisha","Shivpuri","Sidhi","Singrauli","Tikamgarh","Ujjain","Rajgarh","Ratlam","Rewa","Sagar");
cities["Manipur"]=new Array("Bishnupur","Chandel","Churachandpur","Iamphal East","Imphal West","Senapati","Tamenglong","Thoubal","Ukhrul","Jiribam","Kangpokpi","Kakching","Tengnoupal","Kamjong","Noney","Pherzawl");
cities["Mizoram"]=new Array("Aizawl","Lawngtlai","Saiha");
cities["Nagaland"]=new Array("Dimapur","Longleng","Peren","Wokha");
cities["Odisha"]=new Array("Anugul","Bargarh","Bhadrak","Balasore","Balangir","Boudh","Cuttack","Deogarh","Dhenkanal","Gajapati","Ganjam","Jagatsingpur","Jaipur","Jharsuguda","Kalahandi","kandhamal","Kendra para","Keonjhar","Khurda","Koraput","Malkangiri","Maurbhanj","Nuapada","Nabarangpur","Nayagarh","Puri","Rayagada","Sambalpur","Sonepur","Sundargarh");
cities["Puducherry"]=new Array("Karaikal","Mahe","Puducherry","Yanam");
cities["Punjab"]=new Array("Amritsar","Barnala","Bathinda","Faridkot","Fatehgarh Sahib","Firozpur","Gurdaspur","Hoshiarpur","Jalandhar","Kapurthala","Ludhiana","Mansa","Moga","Muktsar","Muktsar","Rupnagar"," Sahibzada Ajit Singh Nagar","Sangrur"," Shahid Bhagat Singh Nagar","Tarn Taran");
cities["Rajasthan"]=new Array("Ajmer","Alwar","Banswara","Baran","Barmer","Bhilwara","Dausa","Churu","Chittorgarh","Jaisalmer","Jaipur","Dungarpur","Karauli","Kota","Nagpur","Pali","Sawai Madhopur","Sri Ganganagar","Sikar","Tonk","Udaipur");
cities["Sikim"]=new Array("North District","East District","South District","West District");
cities["Tamil Nadu"]=new Array("Chennai","Kancheepuram","Vellore","Thiruvallur","Salem","Viluppuram","Coimbatore","Tirunelveli","Madurai","Tiruchirappalli","Cuddalore","Tiruppur","Tiruvannamalai","Thanjavur","Erode","Dindigul","Virudhunagar","Krishnagiri","Kanniyakumari","Thoothukkudi");
cities["Telengana"]=new Array("Adilabad","Komram Bheem district","Bhadradri","Jayashankar","Gadwal","Hyderabad","Jagtial","Jangaon","Kamareddy","Karimnagar","Khammam","Mahabubabad","Mahbubnagar","Mancherial","Medak","Medchal","Nalgonda","Nagarkurnool","Nirmal","Nizamabad","Ranga Reddy","Peddapalli","Rajanna","Sangareddy","Siddipet","Suryapet","Vikarabad","Wanaparthy","Yadadri","Warrangal");
cities["Tripura"]=new Array(" Dhalai"," North Tripura","South Tripura","West Tripura");
cities["Uttar Pradesh"]=new Array("Allahabad","Moradabad","Ghaziabad","Azamgarh","Lucknow","Kanpur Nagar","	Jaunpur","Sitapur","Bareilly","Gorakhpur","Agra","Muzaffarnagar","Hardoi","Kheri","Sultanpur","Bijnor","Budaun","Varanasi","Aligarh","Ghazipur","Kushinagar","Bulandshahar","Bahraich","Saharanpur","Meerut","Gonda","Rae Bareli","Barabanki","Ballia","Pratapgarh","Unnao","Deoria","Shahjahanpur","Maharajganj","	Fatehpur","Siddharth Nagar","Mathura","Firozabad","Mirzapur","Faizabad","Basti","Ambedkar Nagar","Rampur","Mau","Balrampur","Pilibhit","Jhansi","Chandauli","Farrukhabad","Mainpuri","Sonbhadra","Jyotiba Phule Nagar","Banda","Ramabai Nagar","Etah","Sant Kabir Nagar","Jalaun","Kannauj","Gautam Buddha Nagar","Kaushambi","Etawah","Sant Ravidas Nagar","Mahamaya Nagar","Kanshiram Nagar","Auraiya","Baghpat","Lalitpur","Shrawasti","Hamirpur","Chitrakoot","Mahoba");
cities["Uttarkhand"]=new Array("Almora","Bageshwar","Chamoli","Champawat","Dehradun","Haridwar","Nainital","Pauri Garhwal","Pithoragarh","Rudraprayag","Tehri Garhwal","Udham Singh Nagar","Uttarkashi");
</script>
</head>
<body>
<br>
<center><img src="image/logo.png"></center>
<h1 style = "font-family: monospace;font-size:250%;color : navy ; text-align: center ; text-shadow : 0 4px 8px white , 4px 8px 5px white;"><b><i>Sign-up.....</i></b></h1>
<center>
<form action="SignUp" method="get">
<div>
<p style = "background-color:green;font-family:monospace;font-size: 150%;color: white ; text-align: center ;"><b><i>Enter Details Below :-</i></b></p>
<table>
<tr>
<td>Name</td>
<td>
<script>
function validateFirstName()
{
	var name=document.getElementById("n3").value;
	var check=0;
	if(name.length !== 0){
	for(var i=0;i< name.length;i++)
	{
		if((name.charCodeAt(i)>=65 && name.charCodeAt(i)<=90)||(name.charCodeAt(i)>=97 && name.charCodeAt(i)<=122))
			{
			++check;
			}
	}
	if(check===name.length)
	{
		document.getElementById("firstname").innerHTML="";
	}
	else
	{
		document.getElementById("firstname").innerHTML="Name should be in alphabets";
		document.getElementById("firstname").style.color="red";
		document.getElementById("n3").value = "";
	}
	}
}
</script>
<input type= "text" name = "name" id="n3" onblur="validateFirstName()"><br><label id="firstname"></label></td>
</tr>
<tr>
<td>Address</td>
<td>
<textarea name = "address" rows = 4 ></textarea></td>
</tr>
<tr>
<td>Email</td>
<td>
<script>
function validateEmail(){
	var email=document.getElementById("n4").value;
	var positionOfAtRate=email.indexOf("@");
	var positionOfDot=email.lastIndexOf(".");
	if(positionOfAtRate<2 || positionOfAtRate+2>email.length || positionOfDot+2>email.length || positionOfAtRate<0 || positionOfDot<1 || positionOfDot<positionOfAtRate)
	{
		document.getElementById("email").innerHTML="invalid email id";
	    document.getElementById("email").style.color="red";
	    document.getElementById("n4").value = "";
}
else{
	document.getElementById("email").innerHTML="";
}
}
</script>
<input type = "email" name = "email" id="n4" onblur="validateEmail()"><br><label id="email"></label></td>
</tr>
<tr>
<td>Contact</td>
<td>
<script type="text/javascript">
function validateContact(){
	var contact=document.getElementById("n5").value;
	var len=contact.length;
	var check=0;
	if(len>=10)
		{
		document.getElementById("contact").innerHTML="";
		for(var i=0;i<len;i++)
			{
			var c = contact.charCodeAt(i);
			if(c<48||c>57)
				{
				document.getElementById("contact").innerHTML="contacts should be in numbers";
				document.getElementById("contact").style.color="red";
				document.getElementById("n5").value = "";
				break;
				}
			else{
				document.getElementById("contact").innerHTML="";
				continue;
			}
		}
	}
	else{
		document.getElementById("contact").innerHTML="required atleast 10 digits";
		document.getElementById("contact").style.color="red";
		document.getElementById("n5").value = "";
	}
}
</script>
<input type = "text" name = "contact" id="n5" onblur="validateContact()"><br><label id="contact"></label></td>
</tr>
<tr>
<td>Gender</td>
<td><input type= "radio" name = "gender"  value= "male">male
<br><input type= "radio" name = "gender" value= "female" >female</td>
</tr>
<tr>
<td>State</td>
<td>
<select name = "state" id= "state">
</select>
<script type="text/javascript">
(function optionsSetState()
{
	 var i;
	 var x = document.getElementById("state");
	 for(i = 0 ; i< states.length ; i++){
		 var option = document.createElement("option");
		 option.text = states[i];
		 option.setAttribute("value",states[i]);
		 x.add(option);
	 }
	 
})();
</script>
</td>
</tr>
<tr>
<td>City</td>
<td>
<select name = "city" id="city" >
</select>
<script>
function optionSetCity()
{
	var state = document.getElementById("state");
	var i;
	var city = cities[state.value];
	var x = document.getElementById("city");
	for(i = 0 ; i< city.length ; i++){
		 var option = document.createElement("option");
		 option.text = city[i];
		 option.setAttribute("value",city[i]);
		 x.add(option);
	}
}

$("#state").on("click",function(){
	$("#city").empty();
    });
$("#state").on("click",function(){
	optionSetCity();
    });
</script>
</td>
</tr>
<tr>
<td>Password</td>
<td>
<script type="text/javascript">
function validatePasswordRuleSet(){
	var password = document.getElementById("n6").value ;
	var checkUC=0;
	var checkLC=0;
	var checkSpChar=0;
	var checkNum = 0
	if(password.length >= 8){
		document.getElementById("password").innerHTML = "";
		for(var i = 0; i< password.length; i++){
			var c = password.charCodeAt(i);
			if(c>=65 && c<=90){
				checkUC++;
			}
			else if(c>=97 && c<=122){
				checkLC++;
			}
			else if (c >= 48 && c <= 57){
				checkNum++;
			}
			else{
				checkSpChar++;
			}
		}
		if(checkUC < 1 || checkLC < 1 || checkSpChar<1 || checkNum < 1){
			document.getElementById("password").innerHTML = "Atleast 1 Uppercase,1 Lowercase & 1 Special Character Must be present";
			document.getElementById("password").style.color="red";
			document.getElementById("n6").value = "";
		}
		else{
			document.getElementById("password").innerHTML = "";
		}
	}
	else{
		document.getElementById("password").innerHTML = "should contain atleast 8 characters";
		document.getElementById("password").style.color="red";
		document.getElementById("n6").value = "";

	}
}
</script>
<input type = "password" name = "password" id="n6" onblur="validatePasswordRuleSet()"><br><label id="password"></label></td>
</tr>
<tr>
<td><input type = "reset" value= "RESET" ></td>
<td><input type = "submit" name = "submit" value = "SUBMIT" ></td>
</tr>
</table>
</div>
</form>
</center>
</body>
</html>