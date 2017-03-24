package ${packageName}.services.api;


<#if includeretrofit>
import android.content.Context;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.IOException;
import java.lang.reflect.Modifier;
import java.util.concurrent.TimeUnit;

import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
</#if>
/**
 * Created by Choota.
 */

public class ServiceGenerator {
	
	// This is the service generator class, which handle each api call 
	// and match it's json to reponce models

<#if !includeretrofit>

	// you may need following imports, choose only needed ones
	/*
		import android.content.Context;

		import com.google.gson.Gson;
		import com.google.gson.GsonBuilder;

		import java.io.IOException;
		import java.lang.reflect.Modifier;
		import java.util.concurrent.TimeUnit;

		import okhttp3.Interceptor;
		import okhttp3.OkHttpClient;
		import okhttp3.Request;
		import okhttp3.Response;
		import retrofit2.Retrofit;
		import retrofit2.converter.gson.GsonConverterFactory;
	*/

	// sample constructor for service generator
	// all attributes may not needed.
	// create your constructor acording to your requirments
	/*
		private Context mContext;
	    private static String mUserToken;
	    private static String mAppToken;
	    private static String mUrl;

		public ServiceGenerator(Context context) {
	        mContext = context;
	        // TODO: 3/24/17  Include you API_URL here
	        // mUrl = mContext.getString(R.string.API_URL);
	        mUrl = "https://google.com";
	    }
    */

    // following generic methods can handle every api call, include them after adding needed 
    // retrofit, gson, okhttp libs to your gradle
    /*
	    public <T> T CreateService(Class<T> serviceClass) {
	        Gson gson = new GsonBuilder().excludeFieldsWithModifiers(Modifier.FINAL, Modifier.TRANSIENT, Modifier.STATIC).create();
	        OkHttpClient okHttpClient = getOkHttpInterceptor();

	        Retrofit retrofit = new Retrofit.Builder()
	                .baseUrl(mUrl)
	                .client(okHttpClient.newBuilder().connectTimeout(1, TimeUnit.MINUTES).readTimeout(1, TimeUnit.MINUTES).writeTimeout(1, TimeUnit.MINUTES).build())
	                .addConverterFactory(GsonConverterFactory.create(gson))
	                .build();
	        return retrofit.create(serviceClass);
	    }

	    private OkHttpClient getOkHttpInterceptor() {
	        return new OkHttpClient.Builder().addInterceptor(
	                new Interceptor() {
	                    @Override
	                    public Response intercept(Chain chain) throws IOException {
	                        Request original = chain.request();

	                        Request.Builder requestBuilder = original.newBuilder()
	                                .method(original.method(), original.body());

	                        Request request = requestBuilder.build();
	                        return chain.proceed(request);
	                    }
	                })
	                .build();
	    }

	    public APIInterface getApiInstance() {
	        return new ServiceGenerator(mContext).CreateService(APIInterface.class);
	    }
    */
</#if>
    <#if includeretrofit>
    private Context mContext;
    private static String mUserToken;
    private static String mAppToken;
    private static String mUrl;

	public ServiceGenerator(Context context) {
        mContext = context;
        mUrl = mContext.getString(R.string.API_URL);
    }

    public <T> T CreateService(Class<T> serviceClass) {
	        Gson gson = new GsonBuilder().excludeFieldsWithModifiers(Modifier.FINAL, Modifier.TRANSIENT, Modifier.STATIC).create();
	        OkHttpClient okHttpClient = getOkHttpInterceptor();

	        Retrofit retrofit = new Retrofit.Builder()
	                .baseUrl(mUrl)
	                .client(okHttpClient.newBuilder().connectTimeout(1, TimeUnit.MINUTES).readTimeout(1, TimeUnit.MINUTES).writeTimeout(1, TimeUnit.MINUTES).build())
	                .addConverterFactory(GsonConverterFactory.create(gson))
	                .build();
	        return retrofit.create(serviceClass);
    }

    private OkHttpClient getOkHttpInterceptor() {
        return new OkHttpClient.Builder().addInterceptor(
                new Interceptor() {
                    @Override
                    public Response intercept(Chain chain) throws IOException {
                        Request original = chain.request();

                        Request.Builder requestBuilder = original.newBuilder()
                                .method(original.method(), original.body());

                        Request request = requestBuilder.build();
                        return chain.proceed(request);
                    }
                })
                .build();
    }

    public APIInterface getApiInstance() {
        return new ServiceGenerator(mContext).CreateService(APIInterface.class);
    }
    </#if>

}
