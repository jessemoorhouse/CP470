package Months;
sub new
{
   my $class = shift;
   my $numberOfDays = {
        _january => shift,
	_february => shift,
	_march => shift,
	_april => shift,
	_may => shift,
	_june => shift,
	_july => shift,
	_august => shift,
	_september => shift,
	_october => shift,
	_november => shift,
	_december => shift,
   };
#Prints out the number of days of each month in the year
print "January: $numberofDays->{_january}\n";
print "February: $numberofDays->{_february}\n";
print "March: $numberofDays->{_march}\n";
print "April: $numberofDays->{_april}\n";
print "May: $numberofDays->{_may}\n";
print "June: $numberofDays->{_june}\n";
print "July: $numberofDays->{_july}\n";
print "August: $numberofDays->{_august}\n";
print "September: $numberofDays->{_september}\n";
print "October: $numberofDays->{_october}\n";
print "November: $numberofDays->{_november}\n";
print "December: $numberofDays->{_december}\n";
bless $numberofDays, $class;
return $numberofDays;
}
