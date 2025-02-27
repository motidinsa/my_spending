import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:get/get.dart';
import 'package:my_spending/core/language/color_constants.dart';
import 'package:my_spending/core/language/language_constants.dart';
import 'package:my_spending/core/packages/salomon_bottom_bar.dart';
import 'package:my_spending/homepage/controller/homepage_controller.dart';
import 'package:my_spending/homepage/ui/homepage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(HomepageController());
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        // localizationsDelegates: [
        //   AppLocalizations.delegate, // Add this line
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        supportedLocales: AppLocalizations.supportedLocales, // your translations
      locale: Locale('en','US'), // translations will be displayed in that locale
      // fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          // The [AppBar] title text should update its message
          // according to the system locale of the target platform.
          // Switching between English and Spanish locales should
          // cause this text to update.
          title: Text(AppLocalizations.of(context)!.helloWorld),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add the following code
            // Localizations.override(
            //   context: context,
            //   locale: const Locale('es'),
            //   // Using a Builder to get the correct BuildContext.
            //   // Alternatively, you can create a new widget and Localizations.override
            //   // will pass the updated BuildContext to the new widget.
            //   child: Builder(
            //     builder: (context) {
            //       // A toy example for an internationalized Material widget.
            //       return CalendarDatePicker(
            //         initialDate: DateTime.now(),
            //         firstDate: DateTime(1900),
            //         lastDate: DateTime(2100),
            //         onDateChanged: (value) {},
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      )
      // Scaffold(
      //   body: const Homepage(),
      //   bottomNavigationBar: SalomonBottomBar(
      //     backgroundColor: Colors.white,
      //     currentIndex: homepageController.selectedIndex,
      //     onTap: (i) => homepageController.updateIndex(i),
      //     items: [
      //       SalomonBottomBarItem(
      //         icon: Icon(Icons.home),
      //         title: Text(aa.tr),
      //         selectedColor: green,
      //       ),
      //       SalomonBottomBarItem(
      //         icon: Icon(Icons.favorite_border),
      //         title: Text('Likes'),
      //         selectedColor: Colors.pink,
      //       ),
      //       SalomonBottomBarItem(
      //         icon: Icon(Icons.search),
      //         title: Text('Search'),
      //         selectedColor: Colors.orange,
      //       ),
      //       SalomonBottomBarItem(
      //         icon: Icon(Icons.person),
      //         title: Text('Profile'),
      //         selectedColor: Colors.teal,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
