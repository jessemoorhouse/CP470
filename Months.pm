
package Months;
sub new
{
   my $class = shift;
   my $numberOfDays = {
       _month => shift,
       _number => shift,
   };

#Print out the number of days for each month
print "Month:$numberOfDays->{_month} Number of Days:$numberOfDays->{_number}\n";
bless $numberOfDays, $class;
return $numberOfDays;
}

sub setNumberofDays{
    my ($numberOfDays, $number) = @_;
    $number->{_number} = $number if defined($number);
    return $numberOfDays->{_number}; 
}

sub getNumberofDays{
    my($numberOfDays) = @_;
    return $numberOfDays->{_number};
}

sub setMonth{
    my ($numberOfDays, $month) = @_;
    $number->{_month} = $month if defined($month);
    return $numberOfDays->{_month};
 
}

sub getMonth{
    my($numberOfDays) = @_;
    return $numberOfDays->{_month};
}

1;
