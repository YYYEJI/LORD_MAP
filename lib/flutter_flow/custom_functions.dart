import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

List<DocumentReference> randomPT(
  List<DocumentReference> listdocument,
  int numberOfDocument,
) {
  List<int> indices = List<int>.generate(listdocument.length, (i) => i);

  indices.shuffle();

  int newCount = numberOfDocument;

  List<DocumentReference> randomList =
      indices.take(newCount).map((i) => listdocument[i]).toList();

  return randomList;
}
