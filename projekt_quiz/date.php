<?php
function polish_date() {
  $day_number = date("N");
  $month_number = date("n");
  $day_of_week = "";
  $month = "";
  
  switch ($day_number) {
    case 1:
      $day_of_week = "poniedziałek";
      break;
    case 2:
      $day_of_week = "wtorek";
      break;
    case 3:
      $day_of_week = "środa";
      break;
    case 4:
      $day_of_week = "czwartek";
      break;
    case 5:
      $day_of_week = "piątek";
      break;
    case 6:
      $day_of_week = "sobota";
      break;
    case 7:
      $day_of_week = "niedziela";
      break;
  }
  
  switch ($month_number) {
    case 1:
      $month = "styczeń";
      break;
    case 2:
      $month = "luty";
      break;
    case 3:
      $month = "marzec";
      break;
    case 4:
      $month = "kwiecień";
      break;
    case 5:
      $month = "maj";
      break;
    case 6:
      $month = "czerwiec";
      break;
    case 7:
      $month = "lipiec";
      break;
    case 8:
      $month = "sierpień";
      break;
    case 9:
      $month = "wrzesień";
      break;
    case 10:
      $month = "październik";
      break;
    case 11:
      $month = "listopad";
      break;
    case 12:
      $month = "grudzień";
      break;
  }
  
  echo "$day_of_week, " . date("d") . " $month " . date("Y");
}

?>