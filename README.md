ANE-UMeng-Feedback
==================

友盟反馈系统ANE

官方链接
http://dev.umeng.com/feedback

开始前请先init

```
UMFeedback.init();
```

然后需要弹出反馈系统时候

```
UMFeedback.open(“你的”APPKEY”);
```

WARNING
昨天刚写的只完成了iOS的测试，安卓还在等待测试中,测试完我会删掉这一段

安卓需要加入以下代码到你的AndroidManifest.xml里面(即是xxx-app.xml相应部分)
```
<meta-data android:value="YOUR_APP_KEY" android:name="UMENG_APPKEY"></meta-data>
<meta-data android:value="Channel ID" android:name="UMENG_CHANNEL"/>
```

==========
2014 CZQ
==========