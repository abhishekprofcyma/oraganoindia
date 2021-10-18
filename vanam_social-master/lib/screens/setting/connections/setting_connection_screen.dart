import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vanam_social/data/cubit/friend/friend_cubit.dart';
import 'package:vanam_social/data/cubit/friend/friend_state.dart';
import 'package:vanam_social/data/remote/model/friend/friend_list_response.dart';
import 'package:vanam_social/screens/components/loading_view.dart';
import 'package:vanam_social/screens/friend/friend_screen.dart';

import '../../../constants.dart';

class SettingConnectionScreen extends StatefulWidget {
  @override
  _SettingConnectionScreenState createState() =>
      _SettingConnectionScreenState();
}

class _SettingConnectionScreenState extends State<SettingConnectionScreen> {
  late FriendCubit _cubit;
  FriendListResponse? _friendListResponse;
  List<FriendItem?>? friendList = [];
  ScrollController? _scrollController;
  double? _scrollPosition;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController?.position.pixels;
      if (_scrollController?.position.pixels ==
          _scrollController?.position.maxScrollExtent) {
        if ((_friendListResponse?.data?.userList?.lastPage ?? 0) >
            (_friendListResponse?.data?.userList?.currentPage ?? 0)) {
          _cubit.friendList(context,
              (_friendListResponse?.data?.userList?.currentPage ?? 1) + 1);
        }
      }
    });
  }

  @override
  void initState() {
    _cubit = BlocProvider.of<FriendCubit>(context, listen: false);
    super.initState();
    _scrollController = ScrollController();
    _scrollController?.addListener(_scrollListener);
    _cubit.friendList(context, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor),
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/ic_back_arrow_green.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocConsumer<FriendCubit, FriendState>(builder: (context, state) {
        return Stack(
          children: [
            SafeArea(
              child: ListView(
                controller: _scrollController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Your Connections",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  if (state is FriendLoaded &&
                      state.response.data?.userList?.data?.length == 0)
                    Center(
                      child: Text(
                        "Connection list is empty",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: friendList?.length,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        FriendItem? friend = friendList?[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FriendScreen(
                                        friendId: friend?.friend?.id ?? 0)));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          Color(0xff000000).withOpacity(0.08),
                                      offset: Offset(0.3, -.7),
                                      blurRadius: 2,
                                      spreadRadius: 1)
                                ]),
                            child: Row(
                              children: [
                                friend?.friend?.image == null ? SvgPicture.asset("assets/images/user.svg",height: 32,width: 32,):CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "$ImageBaseUrl${friend?.friend?.image}"),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                    child: Text(
                                  "${friend?..namfriend?e}",
                                  style: Theme.of(context).textTheme.subtitle1,
                                )),
                                OutlinedButton(
                                  onPressed: () {
                                    _cubit.unFriend(context, friend?.id ?? 0);
                                  },
                                  child: Text(
                                    "Remove",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 0.5, color: Color(0xffFFCC00)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
            if (state is FriendLoading || state is UnFriendLoading)
              Center(
                child: LoadingView(),
              ),
          ],
        );
      }, listener: (context, state) {
        if (state is FriendLoaded) {
          friendList?.addAll(state.response.data!.userList!.data!);
          setState(() {});
        } else if (state is UnFriendDone) {
          Fluttertoast.showToast(msg: "Connection removed successfully");
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => SettingConnectionScreen()));
        }
      }),
    );
  }
}
