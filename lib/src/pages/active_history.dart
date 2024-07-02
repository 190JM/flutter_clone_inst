import 'package:flutter/material.dart';
import 'package:flutter_clone_inst/src/components/avatar_widget.dart';

class ActiveHistory extends StatelessWidget {
  const ActiveHistory({super.key});

  Widget _activeItemOne() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          AvatarWidget(
            type: AvatarType.TYPE2,
            size: 40,
            thumbPath:
                'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA0MjRfMjYy%2FMDAxNzEzOTM0ODEzODIw.4tPY7exOhwBrGmvoI5gVxAvJNF6udFxCyLLYhUYgdYIg.CJVwMpbbv43Pm4bzLfWBvp_uOeqR-I20d9i63PtcyXgg.PNG%2F%25BD%25BA%25C5%25A9%25B8%25B0%25BC%25A6_2024-04-24_%25BF%25C0%25C8%25C4_12.19.20.png&type=a340',
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text.rich(
              TextSpan(
                  text: '소희',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  children: const [
                    TextSpan(
                      text: '님이 회원님의 게시물을 좋아합니다.',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: ' 5 일전',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }

  Widget _newRecentlyActiveView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '오늘',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 15),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
        ],
      ),
    );
  }

  Widget _newRecentlyThisWeekView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '이번주',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
        ],
      ),
    );
  }

  Widget _newRecentlyThisMonthView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '이번달',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          '활동',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _newRecentlyActiveView(),
            _newRecentlyThisWeekView(),
            _newRecentlyThisMonthView(),
          ],
        ),
      ),
    );
  }
}
