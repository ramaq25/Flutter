import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: UserPanel(),
));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int _click = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Hello World!', style: TextStyle(fontSize: 25, color: Colors.redAccent),),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Text('Ramazan Zhexenov', style: TextStyle(fontSize: 25, color: Colors.yellowAccent),),
                Padding(padding: EdgeInsets.only(top: 10)),
                CircleAvatar(backgroundColor: Colors.redAccent, radius: 50, ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  children: [
                    Icon(Icons.mail_outlined, size: 35, color: Colors.redAccent,),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text("helloworld@gmail.com", style: TextStyle(fontSize: 22, color: Colors.yellowAccent),),
                  ],
                ),
                Text("Clicks: $_click", style: TextStyle(fontSize: 25, color: Colors.yellowAccent),),
                Padding(padding: EdgeInsets.only(top: 50)),
                OutlinedButton.icon(
                  icon: Icon(Icons.add_alert, color: Colors.yellowAccent,),
                  onPressed: (){
                    setState(() {
                      _click++;
                    });
                  },
                  style: OutlinedButton.styleFrom(side: BorderSide(width: 2, color: Colors.redAccent)),
                  label: Text("Click Me",
                    style: TextStyle(fontSize: 25, color: Colors.redAccent),),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
