PatternLoggingFormat provides a printf()-like was of formatting the output of a LoggingEvent. 
This is useful for e.g. outputting events to a comma-delimited file. The goal of this class 
is to format a LoggingEvent and return the results as a String. The results depend on the 
conversion pattern. 

The conversion pattern is closely related to the conversion pattern of the printf function 
in C. A conversion pattern is composed of literal text and format control expressions called 
conversion specifiers. 

You are free to insert any literal text within the conversion pattern. 

Each conversion specifier starts with a percent sign (%) and is followed by optional format 
modifiers and a conversion character. The conversion character specifies the type of data, 
e.g. category, priority, date, thread name. The format modifiers control such things as field 
width, padding, left and right justification.

Note that there is no explicit separator between text and conversion specifiers. The pattern 
parser knows when it has reached the end of a conversion specifier when it reads a conversion 
character. In the example above the conversion specifier %-5p means the priority of the logging 
event should be left justified to a width of five characters. The following conversion specifiers 
are currently supported:

%c	 	- Used to output the category of the logging event.
%d		- Used to output the timestamp of the logging event. For formatting info, see below.
%l		- Used to output the name of the Logger associated with the event.
%m		- Used to output the message associated with the logging event.
%n		- Outputs the platform dependent line separator character or characters. 
%p		- Used to output the priority of the logging event.
%t		- Outputs a tab character. 
%x		- Used to output the context  of the logging event.
%%	- The sequence %% outputs a single percent sign. 

By default the relevant information is output as is. However, with the aid of format modifiers 
it is possible to change the minimum field width, the maximum field width and justification. 

The optional format modifier is placed between the percent sign and the conversion character. 

The first optional format modifier is the left justification flag which is just the minus (-) 
character. Then comes the optional minimum field width modifier. This is a decimal constant 
that represents the minimum number of characters to output. If the data item requires fewer 
characters, it is padded on either the left or the right until the minimum width is reached. 
The default is to pad on the left (right justify) but you can specify right padding with the 
left justification flag. The padding character is space. If the data item is larger than the 
minimum field width, the field is expanded to accommodate the data. The value is never truncated. 

This behavior can be changed using the maximum field width modifier which is designated by a 
period followed by a decimal constant. If the data item is longer than the maximum field, then 
the extra characters are removed from the beginning of the data item and not from the end. For 
example, it the maximum field width is eight and the data item is ten characters long, then the 
first two characters of the data item are dropped. This behavior deviates from the printf 
function in C where truncation is done from the end. 

Below are various format modifier examples for the category conversion specifier. 

Format		left   	min.	max.	comment 
modifier	justify	width	width
%20c 		false 	20 		none 	Left pad with spaces if the category name is 
									less than 20 characters long.  
%-20c 		true 	20 		none 	Right pad with spaces if the category name is 
									less than 20 characters long.  
%.30c 		NA 		none 	30 		Truncate from the beginning if the category 
									name is longer than 30 characters.  
%20.30c 	false 	20 		30 		Left pad with spaces if the category name is 
									shorter than 20 characters. However, if category 
									name is longer than 30 characters, then truncate 
									from the beginning.  
%-20.30c 	true 	20 		30		Right pad with spaces if the category name is 
									shorter than 20 characters. However, if category 
									name is longer than 30 characters, then truncate from 
									the beginning.  

Outputting Dates:
Used to output the date of the logging event. The date conversion specifier may be followed 
by a date format specifier enclosed between braces. For example, %d{HH:mm:ss,SSS} or 
%d{dd MMM yyyy HH:mm:ss,SSS}. If no date format specifier is given then ISO8601 format is 
assumed. 

The date format specifier admits the same syntax as the time pattern string of the 
SimpleDateFormat. Although part of the standard JDK, the performance of SimpleDateFormat 
is quite poor. 

For better results it is recommended to use the log4j date formatters. These can be specified 
using one of the strings "ABSOLUTE", "DATE" and "ISO8601" for specifying AbsoluteTimeDateFormat, 
DateTimeDateFormat and respectively ISO8601DateFormat. For example, %d{ISO8601} or %d{ABSOLUTE}. 

AbsoluteTimeDateFormat - Formats a Date in the format "HH:mm:ss,SSS" for example, "15:49:37,459". 
DateTimeDateFormat - Formats a Date in the format "dd MMM YYYY HH:mm:ss,SSS" for example, "06 Nov 1994 15:49:37,459". 
ISO8601DateFormat - Formats a Date in the format "YYYY-mm-dd HH:mm:ss,SSS" for example "1999-11-27 15:49:37,459". 
SimpleDateFormat

These dedicated date formatters perform significantly better than SimpleDateFormat. 

Instance Variables:
	patternString	<String>	the formatString