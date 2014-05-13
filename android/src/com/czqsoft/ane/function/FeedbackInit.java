package com.czqsoft.ane.function;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.umeng.fb.FeedbackAgent;

public class FeedbackInit implements FREFunction {

	@Override
	public FREObject call(FREContext context, FREObject[] arg1) {
		FeedbackExtensionShared.context = context;
		
		FeedbackExtensionShared.agent = new FeedbackAgent(context.getActivity());
		FeedbackExtensionShared.agent.sync();
		return null;
	}

}
