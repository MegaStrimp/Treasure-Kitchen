///@description TK - Set Flavor Text

function scr_TK_SetFlavorText()
{
	flavorTextArray =
	[
	"Catch Em All!"
	];
	
	var flavorText = flavorTextArray[irandom_range(0,array_length(flavorTextArray) - 1)];
	flavorTextArray = -1;
	
	return flavorText;
}