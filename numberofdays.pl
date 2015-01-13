#!/usr/local/bin/perl

use Documents::Months;

$january = new Months("January", 31);
$february = new Months("February", 28);
$march = new Months("March", 31);
$april = new Months("April", 30);
$may = new Months("May", 31);
$june = new Months("June", 30);
$july = new Months("July", 31);
$august = new Months("August", 31);
$september = new Months("September", 30);
$october = new Months("October", 31);
$november = new Months("November", 30);
$december = new Months("December", 31);

$number = $january->getNumberofDays();
$number = $february->getNumberofDays();
$number = $march->getNumberofDays();
$number = $april->getNumberofDays();
$number = $may->getNumberofDays();
$number = $june->getNumberofDays();
$number = $july->getNumberofDays();
$number = $august->getNumberofDays();
$number = $september->getNumberofDays();
$number = $october->getNumberofDays();
$number = $november->getNumberofDays();
$number = $december->getNumberofDays();







