/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi;

import org.openapis.openapi.utils.HTTPClient;
import org.openapis.openapi.models.shared.Security;
import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

class SDKConfiguration {
	public HTTPClient defaultClient;
	public HTTPClient securityClient;
	public Security security;
	public String serverUrl;
	public int serverIdx = 0;
	List<Map<String, String>> serverDefaults = new ArrayList<Map<String, String>>(){{
		add(new HashMap<String, String>());
		add(new HashMap<String, String>());
		add(new HashMap<String, String>(){{
			put("hostname", "localhost");
			put("port", "35123");
		}});
		add(new HashMap<String, String>(){{
			put("something", "something");
		}});
		add(new HashMap<String, String>(){{
			put("hostname", "localhost");
			put("port", "35123");
			put("protocol", "http");
		}});
	}};
	public String language = "java";
	public String openapiDocVersion = "0.1.0";
	public String sdkVersion = "1.31.4";
	public String genVersion = "2.96.9";
	public Map<String, Map<String, Map<String, Object>>> globals = new HashMap<String, Map<String, Map<String, Object>>>(){{
		put("parameters", new HashMap<String, Map<String, Object>>());
	}};
	
	public Map<String, String> getServerVariableDefaults() {
		return serverDefaults.get(this.serverIdx);
	}
}