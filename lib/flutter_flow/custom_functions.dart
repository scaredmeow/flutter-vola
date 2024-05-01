import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool checkIfCoach(
  String role,
  String otherRole,
) {
  // compare the string if it is equal to coach and make it case insensitive
  return role.toLowerCase() == otherRole.toLowerCase();
}

DateTime? convertToUTC(String time) {
  time = time.replaceAll('Z', '');

  // Parse the time string as UTC
  final utcTime = DateFormat('HH:mm:ss').parseUtc(time);

  // Convert to local time
  final localTime = utcTime.toLocal();

  // Combine with the current date
  return DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    localTime.hour,
    localTime.minute,
    localTime.second,
  );
}
