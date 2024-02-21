import 'package:flutter/material.dart';

class MyCallCard extends StatelessWidget {
  const MyCallCard({super.key});

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
                  CircleAvatar(
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
                        'Create call link',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text("Share a link for whatsapp call")
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Recent'),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                        ),
                        title: Text('user name'),
                        subtitle: Row(
                          children: [
                            Icon(Icons.arrow_outward_outlined),
                            Text('Today,1:50')
                          ],
                        ),
                        trailing: Icon(Icons.call),
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
