import 'package:flutter/material.dart';
import 'package:whatsapp/models/community_model.dart';

class CommunityPage extends StatelessWidget {
  CommunityPage({super.key});

  List<Community> communityList = [
    Community(
        avathar:
            'https://tse2.mm.bing.net/th?id=OIP.EiG8C90jVLQrKTMX_yrbzwHaHa&pid=Api&P=0',
        name: "Kanishka",
        updatedAt: '2.00 pm',
        message: "Hloo"),
        Community(
        avathar:
            'https://tse2.mm.bing.net/th?id=OIP.EiG8C90jVLQrKTMX_yrbzwHaHa&pid=Api&P=0',
        name: "cybersquare flutter team",
        updatedAt: '2.00 pm',
        message: "Hii"),
        Community(
        avathar:
            'https://tse2.mm.bing.net/th?id=OIP.EiG8C90jVLQrKTMX_yrbzwHaHa&pid=Api&P=0',
        name: "Kanishka",
        updatedAt: '2.00 pm',
        message: "Hloo"),
    
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
                    'https://tse2.mm.bing.net/th?id=OIP.EiG8C90jVLQrKTMX_yrbzwHaHa&pid=Api&P=0'),
              ),
              title: Text('New Community',
              style: TextStyle(fontWeight: FontWeight.bold),),
              
            ),
            Divider(height: 10,),
            
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: communityList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(communityList[index].name),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(communityList[index].avathar!),
                    ),
                    subtitle: Text(communityList[index].message),
                      trailing: Text(communityList[index].updatedAt),
                  );
                })
          ],
        ),
      ),
    );
  }
}
