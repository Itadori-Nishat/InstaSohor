import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitledsadfawdsfdfasdf/Data_Brain/UserdataProvider.dart';

class PersonalDetailsInfo extends StatelessWidget {
  const PersonalDetailsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Personal details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Instasohor uses this information to verify your indetity and  to "
            "keep our community safe. You decide what "
            "personal details you make visible to others",
            style: TextStyle(fontSize: 17),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          context.watch<USERDATAPROVIDER>().userNameProv,
                          style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          context.watch<USERDATAPROVIDER>().userEmailProv,
                          style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Phone",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          context.watch<USERDATAPROVIDER>().userPhoneProv,
                          style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
