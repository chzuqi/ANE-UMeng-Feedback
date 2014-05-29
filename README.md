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

安卓需要加入以下代码到你的AndroidManifest.xml里面(即是xxx-app.xml相应部分)
```
<activity android:name="com.umeng.fb.ConversationActivity"
         android:theme="@android:style/Theme.NoTitleBar"/>
<activity android:name="com.umeng.fb.ContactActivity"
         android:theme="@android:style/Theme.NoTitleBar"/>
<meta-data android:value="YOUR_APP_KEY" android:name="UMENG_APPKEY"></meta-data>
<meta-data android:value="Channel ID" android:name="UMENG_CHANNEL"/>
```

==========
2014 CZQ
==========