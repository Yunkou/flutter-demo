import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './popup_menu_button_demo.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slider_demo.dart';
import './datetime_demo.dart';
import './simple_dialog_demo.dart';
import './alert_dialog_demo.dart';
import './bottom_sheet_demo.dart';
import './snack_bar_demo.dart';
import './expansion_panel_demo.dart';
import './chip_demo.dart';
import './data_table_demo.dart';

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
          ListItem(
            titile: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            titile: 'Button',
            page: ButtonDemo(),
          ),
          ListItem(
            titile: 'PopupMenuButton',
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            titile: 'Form',
            page: FormDemo(),
          ),
          ListItem(
            titile: 'Checkbox',
            page: CheckboxDemo(),
          ),
          ListItem(
            titile: 'Radio',
            page: RadionDemo(),
          ),
          ListItem(
            titile: 'Switch',
            page: SwitchDemo(),
          ),
          ListItem(
            titile: 'Slider',
            page: SliderDemo(),
          ),
          ListItem(
            titile: 'DateTime',
            page: DateTimeDemo(),
          ),
          ListItem(
            titile: 'SimpleDialog',
            page: SimpleDialogDemo(),
          ),
          ListItem(
            titile: 'AlertDialog',
            page: AlertDialogDemo(),
          ),
          ListItem(
            titile: 'BottomSheet',
            page: BottomSheetDemo(),
          ),
          ListItem(
            titile: 'SnackBar',
            page: SnackBarDemo(),
          ),
          ListItem(
            titile: 'ExpansionPanel',
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            titile: 'Chip',
            page: ChipDemo(),
          ),
          ListItem(
            titile: 'DataTable',
            page: DataTableDemo(),
          ),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          flex: 2,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            textColor: Theme.of(context).accentColor,
          ),
        ),
      ],
    );

    final Widget buttonBarButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            expandedButton,
            buttonBarButton,
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      elevation: 0.0,
      icon: Icon(Icons.add),
      label: Text('Add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String titile;
  final Widget page;

  ListItem({
    this.titile,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titile),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
