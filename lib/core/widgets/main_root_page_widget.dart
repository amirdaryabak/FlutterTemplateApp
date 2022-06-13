import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:get/get.dart';

class MainRootPageWidget extends StatelessWidget {
  final Widget child;

  const MainRootPageWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/crane/mainBackground.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: child,
          ),
        ),
      );
}

class MainRootPageSquareBackGroundWidget extends StatelessWidget {
  final Widget child;

  const MainRootPageSquareBackGroundWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/crane/squareBackGround.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: child,
          ),
        ),
      );
}

class MainCustomerRootPageWidget extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final String imagePath;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const MainCustomerRootPageWidget({
    Key? key,
    required this.isLoading,
    required this.child,
    this.imagePath = 'assets/images/bg_main_agent.png',
    this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Scaffold(
              // resizeToAvoidBottomInset: false,
              key: scaffoldKey,
              backgroundColor: Colors.transparent,
              drawer: SizedBox(
                width: Get.width,
                child: Drawer(
                  child: Container(),
                ),
              ),
              body: child,
            ),
          ),
        ),
      );
}

class MainCustomerRootPage2Widget extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final Function(bool)? onDrawerChanged;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const MainCustomerRootPage2Widget({
    Key? key,
    required this.isLoading,
    required this.child,
    this.scaffoldKey,
    this.onDrawerChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mainCustomerBackground2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Scaffold(
              onDrawerChanged: (b) {
                if (onDrawerChanged != null) {
                  onDrawerChanged!(b);
                }
              },
              // resizeToAvoidBottomInset: false,
              key: scaffoldKey,
              backgroundColor: Colors.transparent,
              drawer: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Drawer(
                  child: Container(),
                ),
              ),
              /**
               * DO not remove this comment
               */
              /*appBar: const PreferredSize(
            preferredSize: Size.fromHeight(84),
            child: MainCustomerAppBarWithTitleWidget(screenTitle: 'asdasd'),
          ),*/
              body: child,
            ),
          ),
        ),
      );
}
