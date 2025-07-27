
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_app/helpers/all_routes.dart';
import 'package:time_app/helpers/navigation_service.dart';

import '../../../common_widget/custom_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final List<Map<String, String>> _messages = [];
  final TextEditingController _controller = TextEditingController();

  String userProfile = "assets/images/image4.png";
  String botProfile = "assets/images/image2.png";

  // **Answer System with Potentially Long Text**
  Map<String, String> botReplies = {
    "Hello": "Hi there! How can I help you?",
    "How are you?": "I'm just a bot, but I'm doing great! 😊",
    "What is Flutter?": "Flutter is an open-source UI software development toolkit by Google.",
    "Who created Flutter?": "Flutter was developed by Google.",
    "Bye": "Goodbye! Have a great day! 👋",
  };

  void sendMessage(String question) {
    String currentTime = DateTime.now().toString().substring(11, 16); // Extracting HH:mm format time

    setState(() {
      _messages.add({
        "sender": "You",
        "message": question,
        "profile": userProfile,
        "time": currentTime,
      }); // User Message
    });

    // **Check if Bot has an answer**
    String reply = botReplies.containsKey(question)
        ? botReplies[question]!
        : "Sorry, I don't understand.";

    // **Bot will reply after 1 second**
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        String botReplyTime = DateTime.now().toString().substring(11, 16); // Bot reply time
        _messages.add({
          "sender": "Bot",
          "message": reply,
          "profile": botProfile,
          "time": botReplyTime,
        }); // Bot Reply
      });
    });

    _controller.clear(); // Clear input field
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cE0E1F5,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(50.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 11.w),
              decoration: BoxDecoration(
                color: AppColors.c1C1F5E,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 5.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      child: Image.asset(Assets.images.image4.path),
                    ),
                    UIHelper.horizontalSpace(5.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Milan Jack", style: TextFontStyle.cFFFFFFloginff),
                        UIHelper.verticalSpace(5.h),
                        Row(
                          children: [
                            Image.asset(
                              Assets.icons.offline.path,
                              height: 15.h,
                            ),
                            UIHelper.horizontalSpace(5.w),
                            Text("24 NY, Florida, Miami", style: TextFontStyle.cD2D2DF),
                             UIHelper.horizontalSpace(90.w),


        
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        NavigationService.navigateTo(Routes.notificationScreen);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.icons.notification.path,
                            height: 26.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpace(100.h),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                bool isUser = _messages[index]["sender"] == "You";
                return Row(
                  mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    if (!isUser) // Show Bot Profile on Left
                      CircleAvatar(
                        backgroundImage: AssetImage(_messages[index]["profile"]!),
                        radius: 20.r,
                      ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
                      margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.blue[300] : Colors.grey[300],
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _messages[index]["sender"]!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // Text widget to display the message with overflow handling
                          Text(
                            _messages[index]["message"]!,
                            maxLines: 2, // Limit to 2 lines
                            overflow: TextOverflow.ellipsis, // Show ellipsis if the text overflows
                            softWrap: true, // Allows wrapping to the next line
                          ),
                          // Display time below each message
                          Text(
                            _messages[index]["time"]!,
                            style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    if (isUser) // Show User Profile on Right
                      CircleAvatar(
                        backgroundImage: AssetImage(_messages[index]["profile"]!),
                        radius: 20,
                      ),
                  ],
                );
              },
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 22.w),
              child: Text("Write comment",style: TextFontStyle.c1C1F5Eurbanist16),
            ),
            UIHelper.verticalSpace(10.h),
            Padding(
              padding: EdgeInsets.symmetric( horizontal: 22.w),
              child: Center(
                child: TextField(
                  maxLines: 3,
                  controller: _controller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.c656565),
                      borderRadius: BorderRadius.circular(16.r)
                    ),
                    fillColor:const Color(0xffcf3f3fb),
                    filled: true,
                    hintText: "Input your message here",
                    hintStyle: TextFontStyle.c9B9B9Bw40013,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColors.c656565),
                        borderRadius: BorderRadius.circular(16.r)
                    ),
                  ),
                ),
              ),
            ),
            UIHelper.verticalSpace(14.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w),
              child: customeButton(
                  borderColor: Colors.transparent,
                  name: "Submit",
                  onCallBack: () {

                    if (_controller.text.isNotEmpty) {
                      sendMessage(_controller.text);
                    }
                  },
                  height: 48.h,
                  minWidth: 342,
                  borderRadius: 40.r,
                  color: AppColors.c1C1F5E,
                  textStyle: TextFontStyle.cFFFFFFlogin,
                  context: context),
            ),
            UIHelper.verticalSpace(20.h)
        
          ],
        ),
      ),
    );
  }
}
