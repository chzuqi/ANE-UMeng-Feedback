package com.czqsoft.ane.function;

import android.util.Log;

import com.adobe.fre.FREContext;
import com.umeng.fb.FeedbackAgent;

public class FeedbackExtensionShared {
	public static FREContext context = null;
	public static FeedbackAgent agent = null;
	
	public static void event(String code,String level  ){
		Log.d(code, "event" + ":"+level );
		context.dispatchStatusEventAsync(code, level );
	}
	
}
