import 'package:flutter/material.dart';

class ShowmodelBottomSheet extends StatefulWidget {
  const ShowmodelBottomSheet({Key? key}) : super(key: key);

  @override
  State<ShowmodelBottomSheet> createState() => _ShowmodelBottomSheetState();
}

class _ShowmodelBottomSheetState extends State<ShowmodelBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal Bottom Sheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showModalBottomSheet(context); // Show the modal bottom sheet on button tap
          },
          child: Text('Show Modal Bottom Sheet'),
        ),
      ),
    );
  }
}



void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        // Set the height of the bottom sheet
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Modal Bottom Sheet',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'Bottom Sheet Content',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the bottom sheet on button tap
              },
              child: Text('Close'),
            ),
          ],
        ),
      );
    },
  );
}