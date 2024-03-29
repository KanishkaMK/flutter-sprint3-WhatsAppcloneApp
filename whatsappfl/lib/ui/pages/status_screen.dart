import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';

class StatusPage extends StatelessWidget {
  StatusPage({super.key});

  List<Status> statusList = [
    Status(
        avatar:
            "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
        name: "Kanishka",
        updatedAt: '2.00 pm',
        status: "Today"),
    Status(
        avatar:
            "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
        name: "cybersquare flutter team",
        updatedAt: '3.00 pm',
        status: "Today"),
    Status(
        avatar:
            "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
        name: "cybersquare flutter team",
        updatedAt: '3.00 pm',
        status: "Today"),
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
              title: Text('My status'),
              subtitle: Text('Add to my status'),
            ),
            Text(
              'Recent Updates',
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: statusList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(statusList[index].name),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(statusList[index].avatar!),
                    ),
                    subtitle: Row(
                      children: [
                        Text(statusList[index].status),
                        Text(' , '),
                        Text(statusList[index].updatedAt)
                      ],
                    ),
                  //  trailing: Text(statusList[index].updatedAt),
                  );
                })
          ],
        ),
      ),
    );
  }
}
