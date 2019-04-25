
package com.shukerullah.narratiive;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import em.app.tracker.EmTracker;

public class RNNarratiiveModule extends ReactContextBaseJavaModule {

  public final String REACT_CLASS = "RNNarratiive";

  private final ReactApplicationContext reactContext;

  public RNNarratiiveModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @ReactMethod
  public void initialize(String domain, String appName, String content, String key, boolean isSecureMode) {
    try {
      EmTracker.getInstance(reactContext, domain, appName, content, key, isSecureMode).getTracker();
    } catch(Exception e) {
      System.out.println("Error " + e.getMessage());
    }
  }
}
