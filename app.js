var counter=0;


function getImage(){
	varr =document.getElementById('imagelist').children;
var imgId = document.getElementById('imgId').innerHTML;
// alert(imgId);


var radios = document.getElementsByName('emotion');
var radioValue='';

for (var i = 0, length = radios.length; i < length; i++) {
  if (radios[i].checked) {
    // do whatever you want with the checked radio
    // alert(radios[i].value);
    radioValue = radios[i].value;
    // only one radio can be logically checked, don't check the rest
    break;
  }
}

if (radioValue) 
{
 document.getElementById('error_message').style.display = 'none';
	if(counter < varr.length)
 {
document.getElementById('displayImage').src = varr[counter].value;
document.getElementById('imgId').innerHTML = varr[counter].id;
// document.getElementById('question_number').innerHTML = varr[counter].id;
counter++;
 }
else
 {
	location.replace("logout.php?currImgId=103");
 }

const xhr = new XMLHttpRequest();
xhr.onload=function()
{
	const serverResponse = document.getElementById('resultspan');
	// serverResponse.innerHTML = this.responseText;
	for (var i = 0, length = radios.length; i < length; i++) {
  if (radios[i].checked) {
    // do whatever you want with the checked radio
    radios[i].checked=false;
    // only one radio can be logically checked, don't check the rest
    break;
  }
}


};

xhr.open("POST","insert.php");
xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
xhr.send("emotion="+radioValue+"&imgId="+imgId);
}
else
{
	document.getElementById('error_message').style.display = 'block';
}
}



function getReverseImage(){
if (counter<=imagess.length) {
	document.getElementById('emotionImage').src = imagess[--counter];
}
}

function displayFisrtImage()
{
	
	varr =document.getElementById('imagelist').children;

	
// alert(varr[0].value);
if (document.getElementById('resultcurrimg'))
{
	curimg=document.getElementById('resultcurrimg').innerHTML;
	if(curimg >=103)
	{
		//location.replace("end_message.php");
		if (document.getElementById('answer103')) {
			flag=document.getElementById('answer103').innerHTML;
			location.replace("end_message.php");
		}
		else
		{
			counter=curimg;
	        document.getElementById('displayImage').src = varr[curimg-1].value;
	        document.getElementById('imgId').innerHTML = varr[curimg-1].id;
		}
	}
	else
	{
	counter=curimg;
	document.getElementById('displayImage').src = varr[curimg-1].value;
	document.getElementById('imgId').innerHTML = varr[curimg-1].id;
    }

//counter++;
 }
else{
document.getElementById('displayImage').src = varr[0].value;
document.getElementById('imgId').innerHTML = varr[0].id;
counter++;
}
}


$("#myForm").submit( function(){
return false;
});


function logout()
{
	currImgId = document.getElementById('imgId').innerHTML;
	location.replace("logout.php?currImgId="+currImgId);
}
