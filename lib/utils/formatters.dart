import 'dart:convert';

String verbalDateTime(DateTime dateTime) {
  List<String> weekdays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  return "${months[dateTime.month - 1]} ${dateTime.day}, ${dateTime.year}, ${weekdays[dateTime.weekday - 1]}";
}