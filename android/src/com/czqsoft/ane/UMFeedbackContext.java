package com.czqsoft.ane;

import java.util.HashMap;
import java.util.Map;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.czqsoft.ane.function.FeedbackInit;
import com.czqsoft.ane.function.FeedbackOpen;

public class UMFeedbackContext extends FREContext {
	
	private static final String UM_FEEDBACK_INIT = "um_feedback_init";
	private static final String UM_FEEDBACK_OPEN = "um_feedback_open";
	@Override
	public void dispose() {

	}

	@Override
	public Map<String, FREFunction> getFunctions() {
		Map<String, FREFunction> map = new HashMap<String, FREFunction>();
		//映射
		map.put(UM_FEEDBACK_INIT, new FeedbackInit());
		map.put(UM_FEEDBACK_OPEN, new FeedbackOpen());
		return map;
	}

}
