import 'package:editable/editable.dart';
import 'package:flutter/material.dart';
class Toble extends StatefulWidget {
  const Toble({super.key});

  @override
  State<Toble> createState() => _TobleState();
}



class _TobleState extends State<Toble> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Editable Table',
      home: MyHomePage(title: 'Welcome Back'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        // accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // centerTitle: true,

    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Create a Key for EditableState
  final _editableKey = GlobalKey< EditableState>();

  List rows = [
    {1},
    //   {
    //     "name": 'James LongName Joe',
    //     "date": '23/09/2020',
    //     "month": 'June',
    //     "status": 'completed'
    //   },
    //   {
    //     "name": 'Daniel Paul',
    //     "month": 'March',
    //     "status": 'new',
    //     "date": '12/4/2020',
    //   },
    //   {
    //     "month": 'May',
    //     "name": 'Mark Zuckerberg',
    //     "date": '09/4/1993',
    //     "status": 'expert'
    //   },
    //   {
    //     "name": 'Jack',
    //     "status": 'legend',
    //     "date": '01/7/1820',
    //     "month": 'December',
    //   },
  ];
  List cols = [
    // {"title": 'Name', 'widthFactor': 0.2, 'key': 'name', 'editable': false},
    {"title": 'ID', 'widthFactor': 0.2, 'key': 'ID', 'editable': false},
    {"title": 'Name', 'widthFactor': 0.2, 'key': 'name',},
    {"title": 'Product', 'widthFactor': 0.2, 'key': 'Product',},
    {"title": 'Address', 'widthFactor': 0.2, 'key': 'Address',},
    {"title": 'Price', 'widthFactor': 0.2, 'key': 'Price'},
    {"title": 'Paid', 'widthFactor': 0.2, 'key': 'Paid'},
    {"title": 'Leftover', 'widthFactor': 0.2, 'key': 'Leftover'},
    {"title": 'Date', 'widthFactor': 0.2, 'key': 'Date'},
    {"title": 'Comment', 'key': 'Comment'},
  ]
  ;

  /// Function to add a new row
  /// Using the global key assigined to Editable widget
  /// Access the current state of Editable
  void _addNewRow() {
    setState(() {
      _editableKey.currentState?.createRow();
    });
  }

  ///Print only edited rows.
  void _printEditedRows() {
    List editedRows = _editableKey.currentState!.editedRows;
    print(editedRows);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: TextButton.icon(
            onPressed: () => _addNewRow(),
            icon: Icon(Icons.add),
            label: Text(
              'Add',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () => _printEditedRows(),
                child: Text('Print Edited Rows',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          )
        ],
      ),
      body: Editable(
        key: _editableKey,
        columns: cols,
        rows: rows,
        zebraStripe: true,
        stripeColor1: Colors.grey[200]!,
        stripeColor2: Colors.green[50]!,
        onRowSaved: (value) {
          print(value);
        },
        onSubmitted: (value) {
          print(value);
        },
        borderColor: Colors.blueGrey,
        tdStyle: TextStyle(fontWeight: FontWeight.bold),
        trHeight: 80,
        thStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        thAlignment: TextAlign.center,
        thVertAlignment: CrossAxisAlignment.end,
        thPaddingBottom: 3,
        showSaveIcon: true,
        saveIconColor: Colors.black,
        showCreateButton: true,
        tdAlignment: TextAlign.left,
        tdEditableMaxLines: 100, // don't limit and allow data to wrap
        tdPaddingTop: 0,
        tdPaddingBottom: 14,
        tdPaddingLeft: 10,
        tdPaddingRight: 8,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(0))),
      ),
    );
  }
}