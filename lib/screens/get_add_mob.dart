import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testDevice = 'ca-app-pub-1253537131875968~8783261748';

class GetAddMob extends StatefulWidget {
  @override
  _GetAddMobState createState() => _GetAddMobState();
}

class _GetAddMobState extends State<GetAddMob> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    childDirected: true,
    nonPersonalizedAds: true,
  );

  BannerAd _bannerAd;
  NativeAd _nativeAd;
  InterstitialAd _interstitialAd;
  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event $event");
      },
    );
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event $event");
      },
    );
  }

  NativeAd createNativeAd() {
    return NativeAd(
      adUnitId: NativeAd.testAdUnitId,
      factoryId: 'adFactoryExample',
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("$NativeAd event $event");
      },
    );
  }

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    _bannerAd = createBannerAd()..load();
    RewardedVideoAd.instance.listener =
        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
      print("RewardedVideoAd event $event");
      if (event == RewardedVideoAdEvent.rewarded) {
        setState(() {
        });
      }
    };
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _nativeAd?.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _bannerAd?.dispose();
    _bannerAd = null;

    _bannerAd ??= createBannerAd();
    _bannerAd
      ..load()
      ..show();

    _bannerAd ??= createBannerAd();
    _bannerAd
      ..load()
      ..show(horizontalCenterOffset: -20, anchorOffset: 300);

// runs every 10 second
Timer.periodic(new Duration(seconds: 10), (timer) {
  _bannerAd?.dispose();
  _bannerAd = null;
});
    
    
    // _nativeAd?.dispose();
    // _nativeAd = null;
    // _nativeAd ??= createNativeAd();
    // _nativeAd
    //   ..load()
    //   ..show(
    //     anchorType: Platform.isAndroid ? AnchorType.bottom : AnchorType.top,
    //   );
    // _interstitialAd?.dispose();
    // _interstitialAd = createInterstitialAd()..load();

    // _interstitialAd?.show();

    RewardedVideoAd.instance.load(
        adUnitId: RewardedVideoAd.testAdUnitId, targetingInfo: targetingInfo);
        RewardedVideoAd.instance.show();

    return null;
  }
}
