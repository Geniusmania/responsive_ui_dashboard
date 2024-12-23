
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.white, fontSize: 20),
        ),
        const Spacer(flex: 2,),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileSection()
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white10)
          ),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          const Padding(
            padding:
                EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text('Genius Mania'),
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
          fillColor: secondaryColor,
          filled: true,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(defaultPadding / 2),
              padding: const EdgeInsets.all(defaultPadding * .75),
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
          )),
    );
  }
}
