import 'dart:io';
import 'dart:ui';

import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/dashboard/dashboard.dart';
import 'package:data_storage_mobile_app/view/screens/favorites/favorite.dart';
import 'package:data_storage_mobile_app/view/screens/files/files.dart';
import 'package:data_storage_mobile_app/view/screens/sync/sync.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  void _getCurrentIndex(int index) => setState(() {
        _currentIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _items = [
      {
        'icon': Assets.imagesDashboard,
        'iconA': Assets.imagesDashboardA,
        'label': 'Dashboard',
      },
      {
        'icon': Assets.imagesFiles,
        'iconA': Assets.imagesFilesA,
        'label': 'Files',
      },
      {
        'icon': Assets.imagesFavorite,
        'iconA': Assets.imagesFavoriteA,
        'label': 'Favorite',
      },
      {
        'icon': Assets.imagesSync,
        'iconA': Assets.imagesSyncA,
        'label': 'Sync',
      },
    ];

    final List<Widget> _screens = [
      Dashboard(),
      Files(),
      Favorites(),
      Sync(),
    ];

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        margin: AppSizes.DEFAULT,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 22, sigmaY: 22),
            child: Container(
              height: Platform.isIOS ? null : 65,
              decoration: BoxDecoration(
                color: kQuaternaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
                selectedFontSize: 10,
                unselectedFontSize: 10,
                backgroundColor: Colors.transparent,
                selectedItemColor: kSecondaryColor,
                unselectedItemColor: kTertiaryColor,
                currentIndex: _currentIndex,
                onTap: (index) => _getCurrentIndex(index),
                items: List.generate(
                  _items.length,
                  (index) {
                    var data = _items[index];
                    return BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Image.asset(
                          _currentIndex == index ? data['iconA'] : data['icon'],
                          height: 20,
                        ),
                      ),
                      label: data['label'].toString().tr,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
