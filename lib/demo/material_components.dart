import 'package:flutter/material.dart';
import 'package:flutter_ninghao/demo/alter_dialog_demo.dart';
import 'package:flutter_ninghao/demo/checkbox_demo.dart';
import 'package:flutter_ninghao/demo/data_table_demo.dart';
import 'package:flutter_ninghao/demo/radio_demo.dart';
import 'package:flutter_ninghao/demo/show_modal_bottom_sheet_demo.dart';

import 'form_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'form',page: FormDemo(),),
          ListItem(title: 'checkbox',page: CheckboxDemo(),),
          ListItem(title: 'radio',page: RadioDemo(),),
          ListItem(title: 'alterdialog',page: AlterDialogDemo(),),
          ListItem(title: 'showmodal',page: ShowModalBottomSheetDemo(),),
          ListItem(title: 'datatable',page: DataTableDemo(),),
        ],
      ),
    );
  }
}


class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('_WidgetDemo'),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                ],
              ),
            ],
          ),
        )
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}