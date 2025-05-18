import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

String? calculationPersentage(
  double amount,
  double total,
) {
  // Avoid division by zero
  if (total == 0) return null;

  // Calculate percentage and format it
  double percent = (amount / total) * 100;
  return '${percent.toStringAsFixed(2)}%';
}

double? newCustomFunction(
  double? amount,
  double? total,
) {
  // calculate the amount and total needed persentage, return in double, only two digit
  // Avoid null values
  if (amount == null || total == null || total == 0) return null;

  // Calculate percentage
  double percent = (amount / total) * 100;

  // Return formatted percentage
  return double.parse(percent.toStringAsFixed(2));
}
