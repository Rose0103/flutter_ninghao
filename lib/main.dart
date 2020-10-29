import 'package:flutter/material.dart';
import 'package:flutter_ninghao/demo/alter_dialog_demo.dart';
import 'package:flutter_ninghao/demo/basic_demo.dart';
import 'package:flutter_ninghao/demo/checkbox_demo.dart';
import 'package:flutter_ninghao/demo/data_table_demo.dart';
import 'package:flutter_ninghao/demo/form_demo.dart';
import 'package:flutter_ninghao/demo/layout_demo.dart';
import 'package:flutter_ninghao/demo/menuPages/ordered_menu.dart';
import 'package:flutter_ninghao/demo/provide_counter.dart';
import 'package:flutter_ninghao/demo/radio_demo.dart';
import 'package:flutter_ninghao/demo/show_modal_bottom_sheet_demo.dart';
import 'package:flutter_ninghao/demo/state/state_management_demo.dart';
import 'package:flutter_ninghao/model/post.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'package:provide/provide.dart';
import './provide/counter.dart';

import 'demo/listview_demo.dart';
import 'demo/material_components.dart';
import 'demo/view_demo.dart';

void main() {
 var counter = Counters();
 var providers = Providers();
  providers..provide(Provider<Counters>.value(counter));
  runApp(
     ProviderNode(
       child: MyApp(),
       providers: providers,
     )
 );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: Home(),
      initialRoute: '/provide-Counter',
      routes: {
        '/':(context) => Home(),
        '/form':(context) => FormDemo(),
        '/checkbox':(context) => CheckboxDemo(),
        '/radio': (context) => RadioDemo(),
        '/alterdialog':(context) => AlterDialogDemo(),
        '/showmodal':(context) => ShowModalBottomSheetDemo(),
        '/datatable':(context) => DataTableDemo(),
        '/components':(context) => MaterialComponents(),
        '/state-management':(context) => StateManagementDemo(),
        '/provide-Counter':(context) => ProvideCounter(),
      },
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
//              leading: IconButton(
//                  icon: Icon(Icons.menu),
//                  tooltip: 'navigration',
//                  onPressed: () => debugPrint('laile')
//              ),
              title: Text('NINGHAO'),
              centerTitle: true,
              elevation: 5.0,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'search',
                    onPressed: () => debugPrint('hao')
                ),
              ],
              bottom: TabBar(
                  unselectedLabelColor: Colors.black38,
                  indicatorColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                    Tab(icon: Icon(Icons.local_florist),),
                    Tab(icon: Icon(Icons.change_history),),
                    Tab(icon: Icon(Icons.directions_bike),),
                    Tab(icon: Icon(Icons.view_quilt),),

                  ]

              ),
            ),
            body: TabBarView(
                children: <Widget>[
                  ListViewDemo(),
                  BasicDemo(),
                  LayoutDemo(),
//                  ViewDemo(),
                OrderedMenu(),

//                  Icon(Icons.local_florist,color: Colors.black12,size: 128.0,),
//                  Icon(Icons.change_history,color: Colors.black12,size: 128.0,),
//                  Icon(Icons.directions_bike,color: Colors.black12,size: 128.0,),


                ]
            ),
            drawer: DraWerDemo() ,
            bottomNavigationBar: BottomNavigationBarDemo(),


          )
      );
  }
}





