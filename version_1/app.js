var counter=0;
function getValue(radioElem) {

alert("inside func")
	alert("Emotion selected is : "+radioElem.value)
	// body...
}
function getImage(){
	
	
varr =document.getElementById('imagelist').children;
//alert(varr);
if(counter <varr.length)
{
document.getElementById('displayImage').src = varr[counter].value;
counter++;
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
//alert(varr[0].value);
document.getElementById('displayImage').src = varr[0].value;
counter++;

}