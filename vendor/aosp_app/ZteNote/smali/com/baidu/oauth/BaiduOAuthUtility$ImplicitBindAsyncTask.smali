.class Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaiduOAuthUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/BaiduOAuthUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImplicitBindAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private mExplicitBindListener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

.field final synthetic this$0:Lcom/baidu/oauth/BaiduOAuthUtility;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/BaiduOAuthUtility;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "listener"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    .line 233
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->mExplicitBindListener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    .line 231
    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->error:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->mExplicitBindListener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    .line 236
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    .locals 17
    .parameter "params"

    .prologue
    .line 240
    const/4 v14, 0x0

    aget-object v1, p1, v14

    .line 241
    .local v1, apiKey:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v2, p1, v14

    .line 242
    .local v2, apiSecret:Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v10, p1, v14

    .line 243
    .local v10, thirdAccessToken:Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v3, p1, v14

    .line 244
    .local v3, devId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 245
    .local v11, thirdRefreshToken:Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_0

    .line 247
    const/4 v14, 0x4

    aget-object v11, p1, v14

    .line 250
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v13, urlParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "grant_type"

    const-string v16, "client_credentials"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    if-eqz v1, :cond_1

    .line 253
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "client_id"

    invoke-direct {v14, v15, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    if-eqz v2, :cond_2

    .line 255
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "client_secret"

    invoke-direct {v14, v15, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_2
    if-eqz v10, :cond_3

    .line 257
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "third_access_token"

    invoke-direct {v14, v15, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_3
    if-eqz v11, :cond_4

    .line 259
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "third_refresh_token"

    invoke-direct {v14, v15, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_4
    if-eqz v3, :cond_5

    .line 261
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "devid"

    invoke-direct {v14, v15, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "https://openapi.baidu.com/xcloud/1.0/token?"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-virtual {v15, v13}, Lcom/baidu/oauth/BaiduOAuthUtility;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, url:Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 266
    .local v5, httpget:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->this$0:Lcom/baidu/oauth/BaiduOAuthUtility;

    invoke-virtual {v14, v5}, Lcom/baidu/oauth/BaiduOAuthUtility;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 268
    .local v8, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, json:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .local v6, jo:Lorg/json/JSONObject;
    new-instance v9, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;

    invoke-direct {v9}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;-><init>()V

    .line 273
    .local v9, ret:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    const-string v14, "error"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 274
    const-string v14, "error"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->error:Ljava/lang/String;

    .line 294
    .end local v6           #jo:Lorg/json/JSONObject;
    .end local v7           #json:Ljava/lang/String;
    .end local v9           #ret:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    :goto_0
    const/4 v9, 0x0

    :cond_6
    :goto_1
    return-object v9

    .line 276
    .restart local v6       #jo:Lorg/json/JSONObject;
    .restart local v7       #json:Ljava/lang/String;
    .restart local v9       #ret:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    :cond_7
    const-string v14, "access_token"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 277
    const-string v14, "access_token"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setAccessToken(Ljava/lang/String;)V

    .line 278
    :cond_8
    const-string v14, "expires_in"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 279
    const-string v14, "expires_in"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setExpiresIn(Ljava/lang/String;)V

    .line 280
    :cond_9
    const-string v14, "refresh_token"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 281
    const-string v14, "refresh_token"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setRefreshToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 285
    .end local v6           #jo:Lorg/json/JSONObject;
    .end local v7           #json:Ljava/lang/String;
    .end local v9           #ret:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    :catch_0
    move-exception v4

    .line 287
    .local v4, e:Lorg/apache/http/ParseException;
    invoke-virtual {v4}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v4           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v4

    .line 290
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 292
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->mExplicitBindListener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    invoke-interface {v0, p1}, Lcom/baidu/oauth/BaiduOAuth$OAuthListener;->onComplete(Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;)V

    .line 304
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 305
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->mExplicitBindListener:Lcom/baidu/oauth/BaiduOAuth$OAuthListener;

    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baidu/oauth/BaiduOAuth$OAuthListener;->onException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;

    invoke-virtual {p0, p1}, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->onPostExecute(Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;)V

    return-void
.end method
