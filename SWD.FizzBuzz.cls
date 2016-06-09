Class SWD.FizzBuzz Extends %RegisteredObject
{

/// <P>Maxiumum number to FizzBuzz</P>
/// <P>Defaults to 30</P>
Property Size As %Integer;

/// <P>Option text used at the end of Display()</P>
/// <P>Defaults to "__all done__"</P>
Property Message As %String;

Method %OnNew(aSize As %Integer = 30, aMessage As %String = "__all done__") As %Status
{
	set ..Size = aSize
	set ..Message = aMessage
	return $$$OK
}

/// Displays the FizzBuzz output
Method Display()
{
	for i = 1:1:..Size {
		set fbText = ""
		if i # 3 = 0 {
			set fbText = "Fizz"
		}
		if i # 5 = 0 {
			set fbText = fbText _ "Buzz"
		}
		write i, $CHAR(9), fbText, !
	}
	
	if ..Message '= "" {
		write ..Message, !
	}
}

/// <P>Setter for Size property</P>
Method SizeSet(aSize As %Integer) As %Status
{
	if aSize > 0 {
		set i%Size = aSize
	}
	else {
		set i%Size = 30
	}
	return $$$OK
}

}
