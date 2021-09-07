import 'package:flutter/material.dart';

@immutable
class Settings {
  const Settings({this.deleteOnComplete = false});

  final bool deleteOnComplete;
}
