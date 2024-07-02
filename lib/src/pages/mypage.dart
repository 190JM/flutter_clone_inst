import 'package:flutter/material.dart';
import 'package:flutter_clone_inst/src/components/avatar_widget.dart';
import 'package:flutter_clone_inst/src/components/image_data.dart';
import 'package:flutter_clone_inst/src/components/user_card.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  Widget _statisticsOne(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ],
    );
  }

  Widget _information() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarWidget(
                type: AvatarType.TYPE3,
                thumbPath:
                    'https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.net%2Fimage%2F015%2F2024%2F05%2F06%2F0004980787_001_20240506091501025.jpg&type=a340',
                size: 80,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: _statisticsOne('게시물', '284')),
                    Expanded(child: _statisticsOne('팔로워', '1258만')),
                    Expanded(child: _statisticsOne('팔로잉', '17')),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '장원영 WONYOUNG',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            '완전 럭키비키잖아~',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  Widget _menu() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffdedede),
                ),
              ),
              child: Text(
                '프로필 편집',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffdedede),
                ),
              ),
              child: Text(
                '프로필 공유',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Color(0xffdedede),
              ),
              color: const Color(0xffefefef),
            ),
            child: ImageData(IconsPath.addFriend),
          )
        ],
      ),
    );
  }

  Widget _discoverPeople() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '사람 찾아보기',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                '모두 보기',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(children: [
            UserCard(
                title: '최우식',
                description1: 'khoonyy님외',
                description2: '293명이 팔로우합니다.',
                thumbPath:
                    'https://dimg.donga.com/wps/SPORTS/IMAGE/2022/02/05/111432102.4.jpg'),
            UserCard(
                title: '강훈',
                description1: 'eunwo.o_c님외',
                description2: '91명이 팔로우합니다.',
                thumbPath:
                    'https://i.namu.wiki/i/i08HbOX3kDGEqyaKv48qpd0Tsni1klMpnh9-qMJ-MQNErPNWKsWFdoFZDgPLOE20yNjpb9nxqQ0FUd3WVOe_PA.webp'),
            UserCard(
                title: '차은우',
                description1: 'bogummy님외',
                description2: '929명이 팔로우합니다.',
                thumbPath:
                    'https://i.namu.wiki/i/ZnBMAAGJaiFKqDmASXCt-977Xuq6gLA-G8AsD4K1BKCVBEzrjISoW9QyfcSKPnacwuBpCGSSyBtCJv8E-UocNQ.webp'),
            UserCard(
                title: '최우식',
                description1: 'khoonyy님외',
                description2: '293명이 팔로우합니다.',
                thumbPath:
                    'https://dimg.donga.com/wps/SPORTS/IMAGE/2022/02/05/111432102.4.jpg'),
            UserCard(
                title: '강훈',
                description1: 'eunwo.o_c님외',
                description2: '91명이 팔로우합니다.',
                thumbPath:
                    'https://i.namu.wiki/i/i08HbOX3kDGEqyaKv48qpd0Tsni1klMpnh9-qMJ-MQNErPNWKsWFdoFZDgPLOE20yNjpb9nxqQ0FUd3WVOe_PA.webp'),
            UserCard(
                title: '차은우',
                description1: 'bogummy님외',
                description2: '929명이 팔로우합니다.',
                thumbPath:
                    'https://i.namu.wiki/i/ZnBMAAGJaiFKqDmASXCt-977Xuq6gLA-G8AsD4K1BKCVBEzrjISoW9QyfcSKPnacwuBpCGSSyBtCJv8E-UocNQ.webp'),
            UserCard(
                title: '최우식',
                description1: 'khoonyy님외',
                description2: '293명이 팔로우합니다.',
                thumbPath:
                    'https://dimg.donga.com/wps/SPORTS/IMAGE/2022/02/05/111432102.4.jpg'),
            UserCard(
                title: '강훈',
                description1: 'eunwo.o_c님외',
                description2: '91명이 팔로우합니다.',
                thumbPath:
                    'https://i.namu.wiki/i/i08HbOX3kDGEqyaKv48qpd0Tsni1klMpnh9-qMJ-MQNErPNWKsWFdoFZDgPLOE20yNjpb9nxqQ0FUd3WVOe_PA.webp'),
            UserCard(
                title: '차은우',
                description1: 'bogummy님외',
                description2: '929명이 팔로우합니다.',
                thumbPath:
                    'https://i.namu.wiki/i/ZnBMAAGJaiFKqDmASXCt-977Xuq6gLA-G8AsD4K1BKCVBEzrjISoW9QyfcSKPnacwuBpCGSSyBtCJv8E-UocNQ.webp'),
          ]),
        ),
      ],
    );
  }

  Widget _tabMenu() {
    return TabBar(
      controller: tabController,
      indicatorColor: Colors.black,
      indicatorWeight: 1,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ImageData(IconsPath.gridViewOn),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ImageData(IconsPath.myTagImageOff),
        ),
      ],
    );
  }

  Widget _tabView() {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.grey,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: const [
            Text(
              'for_everyoung10',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black54,
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: ImageData(
              IconsPath.uploadIcon,
              width: 50,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(
                IconsPath.menuIcon,
                width: 50,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _information(),
            _menu(),
            _discoverPeople(),
            SizedBox(height: 20),
            _tabMenu(),
            _tabView(),
          ],
        ),
      ),
    );
  }
}
