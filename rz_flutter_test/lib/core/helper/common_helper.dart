import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class CommonHelper {
  static String kelvinToCelsius(double kelvin) {
    return (kelvin - 273.15).toStringAsFixed(2);
  }

  static IconData? getWeatherIcon(String code) {
    switch (code) {
      case '01d':
        return Icons.wb_sunny; // Clear Sky Day
      case '01n':
        return Icons.nightlight_round; // Clear Sky Night
      case '02d':
      case '02n':
        return Icons.wb_cloudy; // Few Clouds
      case '03d':
      case '03n':
        return Icons.cloud; // Scattered Clouds
      case '04d':
      case '04n':
        return Icons.cloud_queue; // Broken Clouds
      case '09d':
      case '09n':
        return Icons.umbrella; // Shower Rain
      case '10d':
      case '10n':
        return Iconsax.cloud_drizzle4; // Rain
      case '11d':
      case '11n':
        return Icons.flash_on; // Thunderstorm
      case '13d':
      case '13n':
        return Icons.ac_unit; // Snow
      case '50d':
      case '50n':
        return Iconsax.sun_fog; // Mist
      default:
        return Icons.error; // Fallback icon
    }
  }

  static String formatDate(String dateString, {String format = 'EEE dd/MM'}) {
    // Parse the input string into a DateTime object
    DateTime dateTime = DateTime.parse(dateString);

    // Define the desired format
    DateFormat formatter = DateFormat(format);

    // Format the DateTime object
    return formatter.format(dateTime);
  }

  static String extractTime(String dateString) {
    // Parse the input string into a DateTime object
    DateTime dateTime = DateTime.parse(dateString);

    // Extract the time in the desired format
    return dateTime.toString().substring(11, 19); // "HH:MM:SS"
  }
}
