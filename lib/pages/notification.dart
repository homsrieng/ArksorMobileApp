import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/widgets/feed_item.dart';
import 'package:arksormobileapp/widgets/notification_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: ArksorColor.primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Expanded(child:
          Align(
            alignment: FractionalOffset.topCenter,
            child: (
                SingleChildScrollView(child:
                Column(children: <Widget>[
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                  NotificationListItem.notificationItem(context),
                ],)
                )
            ),
          )
          )
        ],
      ),
    );
  }
}


