import 'package:flutter/material.dart';
import 'package:flutter_clone_inst/src/components/avatar_widget.dart';
import 'package:flutter_clone_inst/src/components/image_data.dart';
import 'package:flutter_clone_inst/src/controller/bottom_nav_controller.dart';
import 'package:flutter_clone_inst/src/pages/active_history.dart';
import 'package:flutter_clone_inst/src/pages/home.dart';
import 'package:flutter_clone_inst/src/pages/mypage.dart';
import 'package:flutter_clone_inst/src/pages/search.dart';
import 'package:get/get.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) async {
          await controller.canPopAction();
        },
        child: Obx(() => Scaffold(
              body: IndexedStack(
                index: controller.pageIndex.value,
                children: [
                  const Home(),
                  Navigator(
                    key: controller.searchPageNavigationKey,
                    onGenerateRoute: (routeSetting) {
                      return MaterialPageRoute(
                        builder: (context) => const Search(),
                      );
                    },
                  ),
                  Container(),
                  ActiveHistory(),
                  Mypage(),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: controller.pageIndex.value,
                elevation: 0,
                onTap: controller.changeBottomNav,
                items: [
                  BottomNavigationBarItem(
                    icon: ImageData(IconsPath.homeOff),
                    activeIcon: ImageData(IconsPath.homeOn),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageData(IconsPath.searchOff),
                    activeIcon: ImageData(IconsPath.searchOn),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageData(IconsPath.uploadIcon),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageData(IconsPath.activeOff),
                    activeIcon: ImageData(IconsPath.activeOn),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(0),
                      child: AvatarWidget(
                        type: AvatarType.TYPE2,
                        thumbPath:
                            'https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.net%2Fimage%2F015%2F2024%2F05%2F06%2F0004980787_001_20240506091501025.jpg&type=a340',
                        size: 21,
                      ),
                    ),
                    label: 'home',
                  ),
                ],
              ),
            )));
  }
}
