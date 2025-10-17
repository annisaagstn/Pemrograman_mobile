import 'package:flutter/material.dart';

import 'gallery_page.dart';
import 'home_page.dart';
import 'profile_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(),
  '/profile': (context) => const ProfilePage(),
  '/gallery': (context) => const GalleryPage(),
};
