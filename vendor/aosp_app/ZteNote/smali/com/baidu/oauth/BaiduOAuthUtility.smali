.class Lcom/baidu/oauth/BaiduOAuthUtility;
.super Ljava/lang/Object;
.source "BaiduOAuthUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;,
        Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;
    }
.end annotation


# static fields
.field private static final AUTH_URL:Ljava/lang/String; = "https://openapi.baidu.com/xcloud/1.0/token"

.field private static final JSON_KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final JSON_KEY_ERROR:Ljava/lang/String; = "error"

.field private static final JSON_KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final JSON_KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "third_access_token"

.field private static final KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final KEY_CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field private static final KEY_DEVID:Ljava/lang/String; = "devid"

.field private static final KEY_GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field private static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "third_refresh_token"

.field static final Key_AccessToken:Ljava/lang/String; = "access_token"

.field static final Key_Method:Ljava/lang/String; = "method"

.field private static final VALUE_GRANT_TYPE:Ljava/lang/String; = "client_credentials"


# instance fields
.field private Key_Format:Ljava/lang/String;

.field private Key_Logout_Result:Ljava/lang/String;

.field public Key_UserName:Ljava/lang/String;

.field private Url_ExpireToken:Ljava/lang/String;

.field private Url_UserInfo:Ljava/lang/String;

.field private Value_Format:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const-string v0, "https://openapi.baidu.com/rest/2.0/passport/auth/expireSession"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_ExpireToken:Ljava/lang/String;

    .line 464
    const-string v0, "https://openapi.baidu.com/rest/2.0/passport/users/getinfo"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_UserInfo:Ljava/lang/String;

    .line 467
    const-string v0, "username"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_UserName:Ljava/lang/String;

    .line 470
    const-string v0, "format"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Format:Ljava/lang/String;

    .line 473
    const-string v0, "json"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Format:Ljava/lang/String;

    .line 476
    const-string v0, "result"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Logout_Result:Ljava/lang/String;

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const-string v0, "https://openapi.baidu.com/rest/2.0/passport/auth/expireSession"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_ExpireToken:Ljava/lang/String;

    .line 464
    const-string v0, "https://openapi.baidu.com/rest/2.0/passport/users/getinfo"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_UserInfo:Ljava/lang/String;

    .line 467
    const-string v0, "username"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_UserName:Ljava/lang/String;

    .line 470
    const-string v0, "format"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Format:Ljava/lang/String;

    .line 473
    const-string v0, "json"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Format:Ljava/lang/String;

    .line 476
    const-string v0, "result"

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Logout_Result:Ljava/lang/String;

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static createDialogListener(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
    .locals 1
    .parameter "context"
    .parameter "apiKey"
    .parameter "listener"

    .prologue
    .line 393
    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility$1;

    invoke-direct {v0, p2}, Lcom/baidu/oauth/BaiduOAuthUtility$1;-><init>(Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V

    return-object v0
.end method


# virtual methods
.method public ImplicitBindSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    .locals 13
    .parameter "context"
    .parameter "apiKey"
    .parameter "apiSecret"
    .parameter "thirdAccessToken"
    .parameter "devId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, error:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v9, urlParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "grant_type"

    const-string v12, "client_credentials"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    if-eqz p2, :cond_0

    .line 186
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "client_id"

    invoke-direct {v10, v11, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    if-eqz p3, :cond_1

    .line 188
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "client_secret"

    move-object/from16 v0, p3

    invoke-direct {v10, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    if-eqz p4, :cond_2

    .line 190
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "third_access_token"

    move-object/from16 v0, p4

    invoke-direct {v10, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_2
    if-eqz p5, :cond_3

    .line 192
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "devid"

    move-object/from16 v0, p5

    invoke-direct {v10, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "https://openapi.baidu.com/xcloud/1.0/token?"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/baidu/oauth/BaiduOAuthUtility;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, url:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v3}, Lcom/baidu/oauth/BaiduOAuthUtility;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 199
    .local v6, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, json:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, jo:Lorg/json/JSONObject;
    new-instance v7, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;

    invoke-direct {v7}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;-><init>()V

    .line 204
    .local v7, ret:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    const-string v10, "error"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 205
    const-string v10, "error"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 217
    .end local v4           #jo:Lorg/json/JSONObject;
    .end local v5           #json:Ljava/lang/String;
    .end local v7           #ret:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Lorg/apache/http/ParseException;
    invoke-virtual {v1}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 226
    .end local v1           #e:Lorg/apache/http/ParseException;
    :goto_0
    const/4 v7, 0x0

    :cond_4
    :goto_1
    return-object v7

    .line 208
    .restart local v4       #jo:Lorg/json/JSONObject;
    .restart local v5       #json:Ljava/lang/String;
    .restart local v7       #ret:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    :cond_5
    :try_start_1
    const-string v10, "access_token"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 209
    const-string v10, "access_token"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setAccessToken(Ljava/lang/String;)V

    .line 210
    :cond_6
    const-string v10, "expires_in"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 211
    const-string v10, "expires_in"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setExpiresIn(Ljava/lang/String;)V

    .line 212
    :cond_7
    const-string v10, "refresh_token"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 213
    const-string v10, "refresh_token"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->setRefreshToken(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 220
    .end local v4           #jo:Lorg/json/JSONObject;
    .end local v5           #json:Ljava/lang/String;
    .end local v7           #ret:Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;
    :catch_1
    move-exception v1

    .line 222
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 224
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected buildParams(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, urlParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 154
    .local v3, ret:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 157
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf8"

    invoke-direct {v2, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 158
    .local v2, paramsEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 171
    .end local v2           #paramsEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v3

    .line 159
    :catch_0
    move-exception v1

    .line 161
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_2
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 56
    const/4 v6, 0x0

    .line 58
    .local v6, ret:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 60
    .local v7, token:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "access_token"

    invoke-direct {v9, v10, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_UserInfo:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/baidu/oauth/BaiduOAuthUtility;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/baidu/oauth/BaiduOAuthUtility;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 70
    .local v5, response:Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_0

    .line 73
    :try_start_0
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 74
    .local v4, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, json:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, jo:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_UserName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    iget-object v9, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_UserName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .end local v0           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v4           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 80
    .restart local v0       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v1       #jo:Lorg/json/JSONObject;
    .restart local v2       #json:Ljava/lang/String;
    .restart local v3       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v4       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #url:Ljava/lang/String;
    :cond_1
    const-string v6, "-"
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v4           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 86
    :catch_1
    move-exception v9

    goto :goto_0

    .line 84
    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method public implicitBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;)V
    .locals 3
    .parameter "context"
    .parameter "apiKey"
    .parameter "apiSecret"
    .parameter "thirdAccessToken"
    .parameter "thirdRefreshToken"
    .parameter "devId"
    .parameter "listener"

    .prologue
    .line 176
    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;

    invoke-direct {v0, p0, p7, p1}, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;-><init>(Lcom/baidu/oauth/BaiduOAuthUtility;Lcom/baidu/oauth/BaiduOAuth$OAuthListener;Landroid/content/Context;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p6, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuthUtility$ImplicitBindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void
.end method

.method public logout()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 101
    const/4 v7, 0x0

    .line 103
    .local v7, ret:Z
    iget-object v8, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->mAccessToken:Ljava/lang/String;

    .line 105
    .local v8, token:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "access_token"

    invoke-direct {v11, v12, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Format:Ljava/lang/String;

    iget-object v13, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Value_Format:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Url_ExpireToken:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v3}, Lcom/baidu/oauth/BaiduOAuthUtility;->buildParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, url:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/baidu/oauth/BaiduOAuthUtility;->sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 117
    .local v5, response:Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_0

    .line 120
    :try_start_0
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 121
    .local v4, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, json:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, jo:Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Logout_Result:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 125
    iget-object v11, p0, Lcom/baidu/oauth/BaiduOAuthUtility;->Key_Logout_Result:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 126
    .local v6, result:I
    if-ne v10, v6, :cond_1

    move v7, v10

    .line 143
    .end local v0           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v4           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #result:I
    .end local v9           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 126
    .restart local v0       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v1       #jo:Lorg/json/JSONObject;
    .restart local v2       #json:Ljava/lang/String;
    .restart local v3       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v4       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #result:I
    .restart local v9       #url:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 128
    .end local v6           #result:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 135
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v2           #json:Ljava/lang/String;
    .end local v4           #resEntity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 133
    :catch_1
    move-exception v10

    goto :goto_0

    .line 131
    :catch_2
    move-exception v10

    goto :goto_0
.end method

.method public logoutInBackground(Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;)Z
    .locals 4
    .parameter "token"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 310
    new-instance v0, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;

    invoke-direct {v0, p0, p2}, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;-><init>(Lcom/baidu/oauth/BaiduOAuthUtility;Lcom/baidu/oauth/BaiduOAuth$ILogoutListener;)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/oauth/BaiduOAuthUtility$LogoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 311
    return v3
.end method

.method protected sendHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "request"

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 353
    .local v1, response:Lorg/apache/http/HttpResponse;
    if-eqz p1, :cond_0

    .line 356
    invoke-static {}, Lcom/baidu/oauth/HttpClientFactory;->makeHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 357
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "compatibility"

    invoke-static {v3, v4}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 359
    if-eqz v0, :cond_0

    .line 361
    const/4 v2, 0x0

    .local v2, retries:I
    :goto_0
    if-nez v1, :cond_0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    .line 389
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #retries:I
    :cond_0
    return-object v1

    .line 368
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #retries:I
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 377
    :goto_1
    if-nez v1, :cond_2

    .line 379
    add-int/lit8 v3, v2, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 361
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v3

    goto :goto_1

    .line 371
    :catch_1
    move-exception v3

    goto :goto_1

    .line 373
    :catch_2
    move-exception v3

    goto :goto_1

    .line 380
    :catch_3
    move-exception v3

    goto :goto_2
.end method
