// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:spotify_connect/data/data.dart';
// import 'package:production/auth/auth.dart';
// import 'package:production/core_tabs/profile.dart';
import 'package:spotify_connect/explore.dart';
import 'package:spotify_connect/profile.dart';
import 'package:spotify_connect/search_song.dart';
import 'package:spotify_connect/spotif_auth.dart';
// import 'core_tabs/product_list_tab.dart';
// import 'core_tabs/search_tab.dart';
// import 'core_tabs/cart_tab.dart';
// import 'Login_logout/login_page.dart';
//import '../auth/fire_auth.dart';

// import 'auth/spotify_auth.dart';
// import 'auth/auth.dart';

class CuperApp extends StatelessWidget {
  CuperApp({Key? key}) : super(key: key);
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: CuperAppHomePage()

        //AuthService().handleAuth()
        //this is where it returns home or login or register if there is error
        //home: CuperAppHomePage(),
        );
  }
}

class CuperAppHomePage extends StatelessWidget {
  const CuperAppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_crop_circle),
            label: 'Profile',
          )
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Home(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: SpotifySearch(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Refresh(
                  playlist: lofihiphopPlaylist,
                ),
              );
            });
            break;
          case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Profile(),
              );
            });
            break;
        }
        return returnValue;
      },
    );
  }
}
