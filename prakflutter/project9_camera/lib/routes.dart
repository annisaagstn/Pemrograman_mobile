import 'package:flutter/material.dart';
import 'camera_page.dart';
import 'gallery_page.dart';
import 'home_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/home': (context) => const HomePage(),
  '/camera': (context) => const CameraPage(),
  '/gallery': (context) => const GalleryPage(),
};
