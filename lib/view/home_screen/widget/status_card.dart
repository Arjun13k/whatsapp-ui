import 'package:flutter/material.dart';

class MyStatusPage extends StatelessWidget {
  const MyStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Status",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    // child: FloatingActionButton(
                    //   onPressed: () {},
                    //   child: Icon(
                    //     Icons.add,
                    //     color: Colors.green,
                    //   ),
                    // ),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Status',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text("Tap to add status update")
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Recent updates'),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                        ),
                        title: Text('user name'),
                        subtitle: Text('1:50'),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }
}
