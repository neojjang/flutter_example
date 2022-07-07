import 'package:flutter/material.dart';

import '../screens/add_post_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  Center(
    child: Text('feed'),
  ),
  Center(
    child: Text('search'),
  ),
  AddPostScreen(),
  Center(
    child: Text('favorite'),
  ),
  Center(
    child: Text('profile'),
  ),
];
