import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CommonHelper {
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
        return Icons.cloud; // Rain
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
}
