import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  String _dataFromSecondPage = '';

  void _handleDataFromSecondPage(String data) {
    setState(() {
      _dataFromSecondPage = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_dataFromSecondPage),
            ElevatedButton(
              onPressed: () async {
                final data = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
                _handleDataFromSecondPage(data);
              },
              child: Text('Second Page data:'),
            ),
          ],
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context, _textController.text);}, icon: Icon(Icons.arrow_back_ios_outlined),
        ),
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Enter data',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _textController.text);
              },
              child: Text('Return Data'),
            ),
          ],
        ),
      ),
    );
  }
}
