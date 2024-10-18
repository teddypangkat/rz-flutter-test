import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

String handleExceptionWithMessage(dynamic error) {
  if (error is SocketException) {
    return "No internet. Check your internet connection";
  } else if (error is TimeoutException) {
    return "The request timed out";
  } else {
    debugPrint(error.toString());
    return "An error occurred, please try again";
  }
}
