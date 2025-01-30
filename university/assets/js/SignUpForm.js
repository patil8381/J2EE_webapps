function validateForm(f)
{
var is_valid=true;
var firstInvalidComponent=null;

var firstName=f.firstName.value.trim();
if(firstName.length==0)
{
firstInvalidComponent=f.firstName;
is_valid=false;
}

// apply other validations

if(!is_valid) firstInvalidComponent.focus();
return is_valid;
}