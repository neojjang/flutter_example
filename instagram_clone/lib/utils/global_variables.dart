import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/feed_screen.dart';
import 'package:instagram_clone/screens/search_screen.dart';

import '../screens/add_post_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  const FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Center(
    child: Text('favorite'),
  ),
  Center(
    child: Text('profile'),
  ),
];
