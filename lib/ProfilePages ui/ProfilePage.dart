import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import '../Data_Brain/NetWorkImages.dart';
import '../Data_Brain/UserdataProvider.dart';
import 'ProfileSettings_bottomSheets/BottomSheetContainer.dart';
import '../ui/PostContainer.dart';
import 'EditPage_ui/Edit profile.dart';
import 'ShareProfile_qr code.dart';


class ProfileGridViewPage extends StatelessWidget {
  Image? userimg;
  String? nickname;
  String? bio;
  ProfileGridViewPage(
      {Key? key, this.nickname, this.bio, this.userimg})
      : super(key: key);

  final hightlightList = List<String>.generate(10, (i) => "${i + 1}");
  Image? image = Image.asset("Assets/img10.jpg",fit: BoxFit.cover,);

  ImageFromNetworkData networkImages = ImageFromNetworkData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.lock_outline,
              color: Colors.black,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              context.watch<USERDATAPROVIDER>().userNameProv,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ],
        ),
        ///Top Right Side buttons
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
                size: 28,
              )),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                    context: context,
                  builder: (BuildContext context) {
                      return BottomSheetContainerpage();
                  }, );
              },
              icon: Icon(
                Icons.menu_outlined,
                color: Colors.black,
                size: 28,
              )),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Profile image-post-followers-following
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    shape: BoxShape.circle),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: userimg != null ? userimg : image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "382",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text("Followers")
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "${networkImages.ImagesNetwork.length}",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text("Posts")
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "452",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text("Following")
                    ],
                  ),
                ],
              ),
            ),
            ///username-Bio-Add link
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (nickname != null)
                    Text(
                      nickname ?? '',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  SizedBox(
                    height: 5,
                  ),
                  if (bio != null)
                    Text(
                      bio ?? '',
                      style: TextStyle(color: Colors.black),
                    ),

                  ///Add link
                  // if(addLink!=null)
                  // SizedBox(height: 5,),
                  // Text("${addLink}", style: TextStyle(
                  //   color: Colors.blue
                  // ),)
                ],
              ),
            ),
            ///Profile Edit Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///Edit Profile button
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EditProfile()));
                      },
                      style: ButtonStyle(
                          foregroundColor: MaterialStatePropertyAll(Colors.black),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey.shade300)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Edit Profile"),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  ///Share profile button
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QrCode()));
                      },
                      style: ButtonStyle(
                          foregroundColor: MaterialStatePropertyAll(Colors.black),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey.shade300)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Share Profile"),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Navigator.push(context,
                  //     //     MaterialPageRoute(builder: (context) => TermsAndConditionsRow()));
                  //   },
                  //   style: ButtonStyle(
                  //       foregroundColor: MaterialStatePropertyAll(Colors.black),
                  //       backgroundColor:
                  //           MaterialStatePropertyAll(Colors.grey.shade300)),
                  //   child: Icon(Icons.person_add),
                  // )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.circle),
                          child: Icon(Icons.add),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              Fluttertoast.showToast(msg: "Added");
                            },
                            child: Text("Add new")),
                      ],
                    ),
                    Row(
                      children: List.generate(hightlightList.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 18, bottom: 18),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    shape: BoxShape.circle),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: networkImages.ImagesNetwork[index],
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                  width: 80,
                                  child: Text(
                                    hightlightList[index],
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //   child: Divider(
            //     thickness: 1,
            //   ),
            // ),
            ///user posts
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: networkImages.ImagesNetwork.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PostDecorationUI(
                                            indx: 0,
                                            postUserName: context.watch<USERDATAPROVIDER>().userNameProv,
                                            postUserImage:userimg != null ? userimg : image,
                                        UserpostImage: networkImages
                                                .ImagesNetwork[index],
                                          )));
                            },
                            child: CachedNetworkImage(
                              key: UniqueKey(),
                                fit: BoxFit.cover,
                                imageUrl: "${networkImages.ImagesNetwork[index]}"))),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


