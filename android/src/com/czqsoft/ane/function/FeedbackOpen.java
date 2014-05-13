package com.czqsoft.ane.function;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

public class FeedbackOpen implements FREFunction {

	@Override
	public FREObject call(FREContext context, FREObject[] arg1) {
		FeedbackExtensionShared.context = context;
		
//		FeedbackAgent agent = new FeedbackAgent(context.getActivity());
		FeedbackExtensionShared.agent.startFeedbackActivity();
		
		return null;
	}

}
