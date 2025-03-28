import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';
import 'package:wife_bank_ui/data.dart';
import 'package:wife_bank_ui/global.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Segment> experiences = [
    Segment(value: 70, color: kYellow),
    Segment(value: 15, color: kPurple),
    Segment(value: 10, color: kPrimary),
    Segment(value: 5, color: kRed),
  ];
  @override
  Widget build(BuildContext context) {
    final progressBar = PrimerProgressBar(segments: experiences);
    return Scaffold(
      backgroundColor: kDark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Header
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kDeepGray.withValues(alpha: .5),
                      ),
                      width: mq.width * .44,
                      height: mq.height * .06,
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: kPink,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.2),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(14),
                                        child: Container(
                                          width: mq.width * .12,
                                          height: mq.height * .1,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx73qJNWxk8kIh82_JrjpM46VKYGeH4qXJdw&s',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -3,
                                  right: 0,
                                  child: Container(
                                    height: mq.height * 0.02,
                                    width: mq.width * 0.02,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kPink,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: mq.width * 0.02),
                            Text(
                              "Somnang.D",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: mq.width * 0.04,
                              ),
                            ),
                            InkWell(
                              child: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: kPink,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),

                    SvgPicture.string(
                      width: mq.width * 0.03,
                      height: mq.height * 0.03,
                      '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="none" stroke="#fffafa" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M19 11.5a7.5 7.5 0 1 1-15 0a7.5 7.5 0 0 1 15 0m-2.107 5.42l3.08 3.08"/></svg>''',
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.string(
                      width: mq.width * 0.03,
                      height: mq.height * 0.03,
                      '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="none" stroke="#fffafa" stroke-linecap="round" stroke-width="1.5" d="M9.107 2.674A6.5 6.5 0 0 1 12 2c3.727 0 6.75 3.136 6.75 7.005v.705a4.4 4.4 0 0 0 .692 2.375l1.108 1.724c1.011 1.575.239 3.716-1.52 4.214a25.8 25.8 0 0 1-14.06 0c-1.759-.498-2.531-2.639-1.52-4.213l1.108-1.725A4.4 4.4 0 0 0 5.25 9.71v-.705c0-1.074.233-2.092.65-3.002M7.5 19c.655 1.748 2.422 3 4.5 3q.367 0 .72-.05M16.5 19a4.5 4.5 0 0 1-1.302 1.84"/></svg>''',
                    ),
                    const SizedBox(width: 10),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: kDeepGray,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: SvgPicture.string(
                            width: mq.width * 0.03,
                            height: mq.height * 0.03,
                            '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="none" stroke="#fffafa" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 8V6a2 2 0 0 1 2-2h2M4 16v2a2 2 0 0 0 2 2h2m8-16h2a2 2 0 0 1 2 2v2m-4 12h2a2 2 0 0 0 2-2v-2M7 12h10"/></svg>''',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: mq.height * 0.04),

              //Body.Balance Info
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: mq.height * .2,
                  width: mq.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TOTAL BALANCE",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: mq.width * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: mq.height * 0.001),
                          Text(
                            "\$ 13,370.96",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: mq.width * 0.06,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: mq.height * 0.01),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: kDeepGray,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.string(
                                        width: mq.width * 0.04,
                                        height: mq.height * 0.025,
                                        '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#fffafa" d="M5.378 4.513a9.96 9.96 0 0 1 6.627-2.51c5.523 0 10 4.477 10 10a9.95 9.95 0 0 1-1.793 5.715l-2.707-5.715h2.5A8 8 0 0 0 6.279 6.415zm13.253 14.98a9.96 9.96 0 0 1-6.626 2.51c-5.523 0-10-4.477-10-10c0-2.125.663-4.095 1.793-5.715l2.707 5.715h-2.5A8 8 0 0 0 17.73 17.59zm-10.126-5.49h5.5a.5.5 0 1 0 0-1h-4a2.5 2.5 0 1 1 0-5h1v-1h2v1h2.5v2h-5.5a.5.5 0 0 0 0 1h4a2.5 2.5 0 0 1 0 5h-1v1h-2v-1h-2.5z"/></svg>''',
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "\$ 39.44",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: mq.width * 0.04,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: mq.width * 0.02),
                              Row(
                                children: [
                                  Text(
                                    "Cashback saved",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: mq.width * 0.03,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.blueGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                child: SizedBox(
                                  width: mq.width * .3,
                                  height: mq.height * .15,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 20,
                                      bottom: 20,
                                    ),
                                    child: Container(
                                      width: mq.width * .3,
                                      height: mq.height * .1,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        color: kPrimary.withValues(alpha: .8),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withValues(
                                              alpha: 0.5,
                                            ),
                                            spreadRadius: 3,
                                            blurRadius: 4,
                                            offset: Offset(
                                              0,
                                              1,
                                            ), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: mq.width * .28,
                                  height: mq.height * .15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    gradient: kBlueToPurpleLinearGradient,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.string(
                                          width: mq.width * 0.07,
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="256" height="199" viewBox="0 0 256 199"><path d="M46.54 198.011V184.84c0-5.05-3.074-8.342-8.343-8.342c-2.634 0-5.488.878-7.464 3.732c-1.536-2.415-3.731-3.732-7.024-3.732c-2.196 0-4.39.658-6.147 3.073v-2.634h-4.61v21.074h4.61v-11.635c0-3.731 1.976-5.488 5.05-5.488c3.072 0 4.61 1.976 4.61 5.488v11.635h4.61v-11.635c0-3.731 2.194-5.488 5.048-5.488c3.074 0 4.61 1.976 4.61 5.488v11.635zm68.271-21.074h-7.463v-6.366h-4.61v6.366h-4.171v4.17h4.17v9.66c0 4.83 1.976 7.683 7.245 7.683c1.976 0 4.17-.658 5.708-1.536l-1.318-3.952c-1.317.878-2.853 1.098-3.951 1.098c-2.195 0-3.073-1.317-3.073-3.513v-9.44h7.463zm39.076-.44c-2.634 0-4.39 1.318-5.488 3.074v-2.634h-4.61v21.074h4.61v-11.854c0-3.512 1.536-5.488 4.39-5.488c.878 0 1.976.22 2.854.439l1.317-4.39c-.878-.22-2.195-.22-3.073-.22m-59.052 2.196c-2.196-1.537-5.269-2.195-8.562-2.195c-5.268 0-8.78 2.634-8.78 6.805c0 3.513 2.634 5.488 7.244 6.147l2.195.22c2.415.438 3.732 1.097 3.732 2.195c0 1.536-1.756 2.634-4.83 2.634s-5.488-1.098-7.025-2.195l-2.195 3.512c2.415 1.756 5.708 2.634 9 2.634c6.147 0 9.66-2.853 9.66-6.805c0-3.732-2.854-5.708-7.245-6.366l-2.195-.22c-1.976-.22-3.512-.658-3.512-1.975c0-1.537 1.536-2.415 3.951-2.415c2.635 0 5.269 1.097 6.586 1.756zm122.495-2.195c-2.635 0-4.391 1.317-5.489 3.073v-2.634h-4.61v21.074h4.61v-11.854c0-3.512 1.537-5.488 4.39-5.488c.879 0 1.977.22 2.855.439l1.317-4.39c-.878-.22-2.195-.22-3.073-.22m-58.833 10.976c0 6.366 4.39 10.976 11.196 10.976c3.073 0 5.268-.658 7.463-2.414l-2.195-3.732c-1.756 1.317-3.512 1.975-5.488 1.975c-3.732 0-6.366-2.634-6.366-6.805c0-3.951 2.634-6.586 6.366-6.805c1.976 0 3.732.658 5.488 1.976l2.195-3.732c-2.195-1.757-4.39-2.415-7.463-2.415c-6.806 0-11.196 4.61-11.196 10.976m42.588 0v-10.537h-4.61v2.634c-1.537-1.975-3.732-3.073-6.586-3.073c-5.927 0-10.537 4.61-10.537 10.976s4.61 10.976 10.537 10.976c3.073 0 5.269-1.097 6.586-3.073v2.634h4.61zm-16.904 0c0-3.732 2.415-6.805 6.366-6.805c3.732 0 6.367 2.854 6.367 6.805c0 3.732-2.635 6.805-6.367 6.805c-3.951-.22-6.366-3.073-6.366-6.805m-55.1-10.976c-6.147 0-10.538 4.39-10.538 10.976s4.39 10.976 10.757 10.976c3.073 0 6.147-.878 8.562-2.853l-2.196-3.293c-1.756 1.317-3.951 2.195-6.146 2.195c-2.854 0-5.708-1.317-6.367-5.05h15.587v-1.755c.22-6.806-3.732-11.196-9.66-11.196m0 3.951c2.853 0 4.83 1.757 5.268 5.05h-10.976c.439-2.854 2.415-5.05 5.708-5.05m114.372 7.025v-18.879h-4.61v10.976c-1.537-1.975-3.732-3.073-6.586-3.073c-5.927 0-10.537 4.61-10.537 10.976s4.61 10.976 10.537 10.976c3.074 0 5.269-1.097 6.586-3.073v2.634h4.61zm-16.903 0c0-3.732 2.414-6.805 6.366-6.805c3.732 0 6.366 2.854 6.366 6.805c0 3.732-2.634 6.805-6.366 6.805c-3.952-.22-6.366-3.073-6.366-6.805m-154.107 0v-10.537h-4.61v2.634c-1.537-1.975-3.732-3.073-6.586-3.073c-5.927 0-10.537 4.61-10.537 10.976s4.61 10.976 10.537 10.976c3.074 0 5.269-1.097 6.586-3.073v2.634h4.61zm-17.123 0c0-3.732 2.415-6.805 6.366-6.805c3.732 0 6.367 2.854 6.367 6.805c0 3.732-2.635 6.805-6.367 6.805c-3.951-.22-6.366-3.073-6.366-6.805"/><path fill="#ff5f00" d="M93.298 16.903h69.15v124.251h-69.15z"/><path fill="#eb001b" d="M97.689 79.029c0-25.245 11.854-47.637 30.074-62.126C114.373 6.366 97.47 0 79.03 0C35.343 0 0 35.343 0 79.029s35.343 79.029 79.029 79.029c18.44 0 35.343-6.366 48.734-16.904c-18.22-14.269-30.074-36.88-30.074-62.125"/><path fill="#f79e1b" d="M255.746 79.029c0 43.685-35.343 79.029-79.029 79.029c-18.44 0-35.343-6.366-48.734-16.904c18.44-14.488 30.075-36.88 30.075-62.125s-11.855-47.637-30.075-62.126C141.373 6.366 158.277 0 176.717 0c43.686 0 79.03 35.563 79.03 79.029"/></svg>''',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "*** 9567",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: mq.width * 0.03,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(
                                              Icons.chevron_right_outlined,
                                              color: Colors.white,
                                              size: mq.width * 0.05,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //Body.Card
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: mq.height * .2,
                          width: mq.width * .42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kDeepGray,
                            boxShadow: [
                              BoxShadow(
                                color: kDeepGray.withValues(alpha: 0.5),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: Offset(
                                  0,
                                  -5,
                                ), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 14,
                                  right: 14,
                                  left: 14,
                                  bottom: 0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: mq.width * 0.1,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: kGray.withValues(alpha: .7),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: SvgPicture.string(
                                            '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none"><path stroke="#fffafa" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M6 8h4"/><path stroke="#fffafa" stroke-linecap="round" stroke-width="1.5" d="M22 10.5c0-.077 0-.533-.002-.565c-.036-.501-.465-.9-1.005-.933C20.959 9 20.918 9 20.834 9h-2.602C16.446 9 15 10.343 15 12s1.447 3 3.23 3h2.603c.084 0 .125 0 .16-.002c.54-.033.97-.432 1.005-.933c.002-.032.002-.488.002-.565"/><circle cx="18" cy="12" r="1" fill="#fffafa"/><path stroke="#fffafa" stroke-linecap="round" stroke-width="1.5" d="M13 4c3.771 0 5.657 0 6.828 1.172c.809.808 1.06 1.956 1.137 3.828M10 20h3c3.771 0 5.657 0 6.828-1.172c.809-.808 1.06-1.956 1.137-3.828M9 4c-3.114.01-4.765.108-5.828 1.172C2 6.343 2 8.229 2 12s0 5.657 1.172 6.828c.653.654 1.528.943 2.828 1.07"/></g></svg>''',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "ALL OPERATIONS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: mq.width * 0.025,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "Experiences in Dec, 2024",
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: mq.width * 0.025,
                                      ),
                                    ),
                                    Text(
                                      "\$2, 186.53",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: mq.width * 0.04,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 14),
                                child: progressBar,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: mq.height * .2,
                          width: mq.width * .42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kDeepGray,
                            boxShadow: [
                              BoxShadow(
                                color: kDeepGray.withValues(alpha: 0.5),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: Offset(
                                  0,
                                  -5,
                                ), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: mq.width * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: kGray.withValues(alpha: .7),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: SvgPicture.string(
                                        '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="#fffafa" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><path d="M1 2h4l3 12.4a2 2 0 0 0 2 1.6h9a2 2 0 0 0 2-1.6L23 6H6"/><circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/></g></svg>''',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "CONSUMER LOAN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mq.width * 0.025,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "-\$6,496.00",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mq.width * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: kGreen.withValues(alpha: .1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 4,
                                      right: 4,
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "New payment in 6 days",
                                        style: TextStyle(
                                          color: kGreen,
                                          fontSize: mq.width * 0.03,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kDeepGray,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "QUICK MONEY TRANSFER",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mq.width * .025,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "SEE MORE",
                                      style: TextStyle(
                                        color: kPink,
                                        fontWeight: FontWeight.bold,
                                        fontSize: mq.width * .025,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: kPink,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              14,
                                            ),
                                            color: kGreen,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.2),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              child: Container(
                                                width: mq.width * .14,
                                                height: mq.height * .06,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDSL1CKDbTjJSHTufPDBGPNipQekZOXh6fhw&s',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -3,
                                        right: 0,
                                        child: Container(
                                          height: mq.height * 0.02,
                                          width: mq.width * 0.02,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kPink,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              14,
                                            ),
                                            color: kGreen,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.2),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              child: Container(
                                                width: mq.width * .14,
                                                height: mq.height * .06,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC7Qym_m9UI9fJ8QOdjQtqQ3021o51xtJo-Q&s',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -3,
                                        right: 0,
                                        child: Container(
                                          height: mq.height * 0.02,
                                          width: mq.width * 0.02,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kPink,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              14,
                                            ),
                                            color: kGray.withValues(alpha: .5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.2),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              child: Container(
                                                width: mq.width * .14,
                                                height: mq.height * .06,
                                                decoration: BoxDecoration(
                                                  color: kGray.withValues(
                                                    alpha: .5,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'SN',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: mq.width * .05,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -3,
                                        right: 0,
                                        child: Container(
                                          height: mq.height * 0.02,
                                          width: mq.width * 0.02,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kPink,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              14,
                                            ),
                                            color: kGreen,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.2),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              child: Container(
                                                width: mq.width * .14,
                                                height: mq.height * .06,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKGa8I0D4BxMXKIS-KSyNIVRe6VVQQX9e76l8irAw92kgvfKXBMgGDFxHxp8IDe7pQPZ0&usqp=CAU',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -3,
                                        right: 0,
                                        child: Container(
                                          height: mq.height * 0.02,
                                          width: mq.width * 0.02,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kPink,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              14,
                                            ),
                                            color: kGray.withValues(alpha: .5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.2),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              child: Container(
                                                width: mq.width * .14,
                                                height: mq.height * .06,
                                                decoration: BoxDecoration(
                                                  color: kGray.withValues(
                                                    alpha: .5,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: mq.width * 0.08,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kDeepGray,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "EXCHANGE RATE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mq.width * .025,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "SEE MORE",
                                      style: TextStyle(
                                        color: kPink,
                                        fontWeight: FontWeight.bold,
                                        fontSize: mq.width * .025,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: kPink,
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: exchangeRate.length,
                              itemBuilder: (context, index) {
                                final data = exchangeRate[index];
                                return Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.string(
                                                    width: mq.width * .08,
                                                    data['flat'].toString(),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Text(
                                                    data['shortname']
                                                        .toString(),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 2),
                                              Text(
                                                data['name'].toString(),
                                                style: TextStyle(
                                                  color: Colors.blueGrey
                                                      .withValues(alpha: .8),
                                                  fontSize: mq.width * 0.03,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: [
                                              Text(
                                                data['downRate'].toString(),
                                                style: TextStyle(
                                                  color: Colors.white38,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Icon(
                                                CupertinoIcons.arrow_down_left,
                                                color: kGreen,
                                                size: mq.width * 0.04,
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: [
                                              Text(
                                                data['downRate'].toString(),
                                                style: TextStyle(
                                                  color: Colors.white38,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Icon(
                                                CupertinoIcons.arrow_up_right,
                                                color: kRed,
                                                size: mq.width * 0.04,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 8,
                                        color: kGray.withValues(alpha: .5),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kDark,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            backgroundColor: kDark,
            label: '',
            icon: SvgPicture.string(
              width: mq.height * 0.03,
              '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#E64E74" fill-rule="evenodd" d="M2.52 7.823C2 8.77 2 9.915 2 12.203v1.522c0 3.9 0 5.851 1.172 7.063S6.229 22 10 22h4c3.771 0 5.657 0 6.828-1.212S22 17.626 22 13.725v-1.521c0-2.289 0-3.433-.52-4.381c-.518-.949-1.467-1.537-3.364-2.715l-2-1.241C14.111 2.622 13.108 2 12 2s-2.11.622-4.116 1.867l-2 1.241C3.987 6.286 3.038 6.874 2.519 7.823m6.927 7.575a.75.75 0 1 0-.894 1.204A5.77 5.77 0 0 0 12 17.75a5.77 5.77 0 0 0 3.447-1.148a.75.75 0 1 0-.894-1.204A4.27 4.27 0 0 1 12 16.25a4.27 4.27 0 0 1-2.553-.852" clip-rule="evenodd"/></svg>''',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: kDark,
            label: '',
            icon: SvgPicture.string(
              width: mq.height * 0.03,
              '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="none" stroke="#c8c8c8" stroke-linecap="round" stroke-width="1.5" d="M22 12c0-3.771 0-5.657-1.172-6.828S17.771 4 14 4h-4C6.229 4 4.343 4 3.172 5.172S2 8.229 2 12s0 5.657 1.172 6.828S6.229 20 10 20h4c3.771 0 5.657 0 6.828-1.172c.654-.653.943-1.528 1.07-2.828M10 16H6m8 0h-1.5M2 10h5m15 0H11"/></svg>''',
            ),
          ),

          BottomNavigationBarItem(
            backgroundColor: kDark,
            label: '',
            icon: SvgPicture.string(
              width: mq.height * 0.03,
              '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="#c8c8c8" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" color="#c8c8c8"><path d="M2.5 12c0-4.478 0-6.718 1.391-8.109S7.521 2.5 12 2.5c4.478 0 6.718 0 8.109 1.391S21.5 7.521 21.5 12c0 4.478 0 6.718-1.391 8.109S16.479 21.5 12 21.5c-4.478 0-6.718 0-8.109-1.391S2.5 16.479 2.5 12"/><path d="M2.5 14.5h.539c.472 0 .708 0 .914-.099c.205-.098.352-.283.647-.652L6 12l1.5 2.5L9 11l2.5 5L15 9l2 3.5l1.5-1.5l1.445 2.168c.252.378.378.567.562.681q.055.034.114.061c.198.09.425.09.879.09M15 2.5v3m0 16v-7"/><circle cx="15" cy="9" r="1"/></g></svg>''',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: kDark,
            label: '',
            icon: SvgPicture.string(
              width: mq.height * 0.03,
              '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none"><path d="m12.594 23.258l-.012.002l-.071.035l-.02.004l-.014-.004l-.071-.036q-.016-.004-.024.006l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427q-.004-.016-.016-.018m.264-.113l-.014.002l-.184.093l-.01.01l-.003.011l.018.43l.005.012l.008.008l.201.092q.019.005.029-.008l.004-.014l-.034-.614q-.005-.019-.02-.022m-.715.002a.02.02 0 0 0-.027.006l-.006.014l-.034.614q.001.018.017.024l.015-.002l.201-.093l.01-.008l.003-.011l.018-.43l-.003-.012l-.01-.01z"/><path fill="#c8c8c8" d="M17 3a5 5 0 0 1 5 5v8a5 5 0 0 1-5 5H3a1 1 0 0 1-1-1V8a5 5 0 0 1 5-5zm0 2H7a3 3 0 0 0-3 3v11h13a3 3 0 0 0 3-3V8a3 3 0 0 0-3-3m-8 5a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1m6 0a1 1 0 0 1 .993.883L16 11v2a1 1 0 0 1-1.993.117L14 13v-2a1 1 0 0 1 1-1"/></g></svg>''',
            ),
          ),

          BottomNavigationBarItem(
            backgroundColor: kDark,
            label: '',
            icon: SvgPicture.string(
              width: mq.height * 0.03,
              '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="#c8c8c8" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" color="#c8c8c8"><path d="m7 8l2.942 1.74c1.715 1.014 2.4 1.014 4.116 0L17 8"/><path d="M22 10.026c-.065-3.066-.098-4.6-1.23-5.735s-2.708-1.175-5.859-1.254a115 115 0 0 0-5.807 0c-3.15.079-4.726.118-5.858 1.254S2.08 6.96 2.016 10.026a69 69 0 0 0 0 2.952c.065 3.066.098 4.6 1.23 5.735s2.707 1.176 5.858 1.255q.954.023 1.903.032"/><path d="M21.663 16a3.5 3.5 0 1 0-3.163 5c1.585 0 3.07-1.055 3.5-2.5m-.337-2.5v-2.5m0 2.5l-2.235.157"/></g></svg>''',
            ),
          ),
        ],
      ),
    );
  }
}
