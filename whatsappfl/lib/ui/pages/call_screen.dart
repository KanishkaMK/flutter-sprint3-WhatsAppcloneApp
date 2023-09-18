import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';

class CallPage extends StatelessWidget {
  CallPage({super.key});

  List<Call> listCall = [
    Call(
        avathar:
            "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
        name: 'Kani',
        status: 'Incoming',
        updatedAt: '5am',
        type: Icon(Icons.phone)),
        Call(
        avathar:
            "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
        name: 'Kaniska',
        status: 'Outgoing',
        updatedAt: '5am',
        type: Icon(Icons.videocam)),
        Call(
        avathar:
            "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
        name: 'Kala',
        status: 'Incoming',
        updatedAt: '5am',
        type: Icon(Icons.phone))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://tse4.mm.bing.net/th?id=OIP.gtYDGnVfcJH3fx8d7M0AfwAAAA&pid=Api&P=0'),
              ),
              title: Text('Create Call Link',style: TextStyle(color: Colors.blue),),
              subtitle: Text('Share a link for your WhatsApp call'),
            ),
            Text(
              'Recent',
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              textAlign: TextAlign.right,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listCall.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(listCall[index].name),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(listCall[index].avathar!),
                    ),
                    subtitle: Row(
                      children: [Icon(listCall[index].type.icon),
                        Text(listCall[index].status),
                      ],
                    ),
                    trailing: Text(listCall[index].updatedAt),
                  );
                })
          ],
        ),
      ),
    );
  }
}
