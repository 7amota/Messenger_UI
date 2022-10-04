import 'package:flutter/material.dart';
class BuildItem{
   final NetworkImage image;
  final String name;
  final String massge;
  
   BuildItem({
    @required this.image,
     @required this.name,
      @required this.massge,
      
  });
}

class Massnger extends StatelessWidget {
  List<BuildItem>chats = [
    BuildItem(image: NetworkImage("https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/288903496_725325315335859_4030590462840456682_n.jpg?stp=dst-jpg_p160x160&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeGujmWjTICRkLVos7SkA7c3uVqP1u6izby5Wo_W7qLNvDHtsVW291L4jEVplL4tVVGl2fsazUvt9HPte4GQqd8i&_nc_ohc=VxDCRFIe580AX9HLBCT&_nc_ht=scontent.fcai19-7.fna&oh=00_AT-GAPT-xCHW0WNSwlqGDEsxWMKcBA3cz9J7laQEsX-RVw&oe=62F42D2A"),
     name: "Abdulrhman Mohammed", massge: "Hello its me abdulrhman"),
    BuildItem(image: NetworkImage("https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/272713016_3104829043086272_566657537426681101_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEx83g3tl8uHQXVaaB2U_IUvHbzHXcAive8dvMddwCK91Z32xQkan4sBEoLTCoAHJFYwE3VCxm4Jr23f4JhGAZ8&_nc_ohc=tg_duE2uTNsAX9FzBbk&_nc_oc=AQmpnnmMkFygM3A8z2xDM4pHr0_HMFrUJg-NfOkUqojIdUh7az1SIOY9XcsyKD6ZylA&_nc_ht=scontent.fcai19-7.fna&oh=00_AT-DDeqCbPrs47vz5W39pdvPFHTvKItSSc9lUWuuBe0iYA&oe=62F7B426"),
     name: 'Ali Abdallah', massge: "hello its me ali"),
     BuildItem(image: NetworkImage("https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/279379236_10222175649084354_1150021345846127275_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEJNeDLs-h3NtkuZjpTVCty3UIbLGTScIndQhssZNJwiVG_mf-vZc9N-OJBwE9uk_sU9uMbl8S4yN-JBkzwKu4P&_nc_ohc=b5V9w3gQnFsAX-x9-YA&_nc_ht=scontent.fcai19-7.fna&oh=00_AT-GykwkLZUIxgSdaUWl1n22jGiq8TvhKQb1W9Da3ehaqg&oe=62F7ECB6"), name: "ÚíáÉ ÞÑæäæ", massge: "ÇáÏæÑ ÚáíÇ Çäíß ÈäÊ ÇáÛÇáí", )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Container(
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/288903496_725325315335859_4030590462840456682_n.jpg?stp=dst-jpg_p160x160&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeGujmWjTICRkLVos7SkA7c3uVqP1u6izby5Wo_W7qLNvDHtsVW291L4jEVplL4tVVGl2fsazUvt9HPte4GQqd8i&_nc_ohc=VxDCRFIe580AX9HLBCT&_nc_ht=scontent.fcai19-7.fna&oh=00_AT-GAPT-xCHW0WNSwlqGDEsxWMKcBA3cz9J7laQEsX-RVw&oe=62F42D2A"),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text("Chats", style: TextStyle(fontSize: 30)),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[850],
            child: Icon(Icons.facebook, color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(backgroundColor: Colors.grey[850], child: Icon(Icons.edit, color: Colors.white)),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                  color: Colors.grey[900],
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                padding: EdgeInsets.all(
                  5.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xff4e4e4e),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(color: Color(0xff4e4e4e)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => BuildStoryItem(chats[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: chats.length,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => BuildChatItem(chats[index]),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
                itemCount: chats.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget BuildChatItem(BuildItem item) => Row(
      children: [
        Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: item.image,
          ),
          CircleAvatar(
            
            backgroundColor: Colors.green,
            radius: 8,
          ),
        ]),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${item.name}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "${item.massge}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  Text(
                    "02:00 am",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
Widget BuildStoryItem(BuildItem items) => Container(

      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: items.image,
              ),
              CircleAvatar(
                radius: 9,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          Text(
            "${items.name}",
            style: TextStyle(color: Colors.white),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
