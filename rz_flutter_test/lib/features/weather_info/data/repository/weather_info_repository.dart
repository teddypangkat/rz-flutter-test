import 'package:intl/intl.dart';

class WeatherInfoRepository {
  Future<String> getTimeOfDay() {
    DateTime time = DateTime.now();
    String message = '';
    if (time.hour < 12) {
      message = 'Selamat Pagi';
    } else if (time.hour < 17) {
      message = 'Selamat Siang';
    } else if (time.hour < 21) {
      message = 'Selamat Sore';
    } else {
      message = 'Selamat Malam';
    }
    return Future.value(message);
  }

  Future<String> getCurrentDateFormat() {
    DateTime dateTime = DateTime.now();
    String formattedDate = DateFormat('EEEE, MMMM d, yyyy').format(dateTime);
    return Future.value(formattedDate);
  }
}
