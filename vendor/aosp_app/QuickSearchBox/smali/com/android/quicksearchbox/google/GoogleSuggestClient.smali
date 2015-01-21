.class public Lcom/android/quicksearchbox/google/GoogleSuggestClient;
.super Lcom/android/quicksearchbox/google/AbstractGoogleSource;
.source "GoogleSuggestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;
    }
.end annotation


# static fields
.field private static final BAIDU_JSON_START:I = 0x11

.field private static final DBG:Z = false

.field private static final HTTP_TIMEOUT:Ljava/lang/String; = "http.conn-manager.timeout"

.field private static final LOG_TAG:Ljava/lang/String; = "GoogleSearch"

.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mSuggestUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lcom/android/quicksearchbox/Config;)V
    .locals 4
    .parameter "context"
    .parameter "uiThread"
    .parameter "iconLoader"
    .parameter "config"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    .line 78
    iput-object p1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mContext:Landroid/content/Context;

    .line 79
    sget-object v1, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 80
    iget-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 81
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v1, "http.conn-manager.timeout"

    invoke-virtual {p4}, Lcom/android/quicksearchbox/Config;->getHttpConnectTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mSuggestUri:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 254
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 257
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 248
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private query(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 14
    .parameter "query"

    .prologue
    const/4 v9, 0x0

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v9

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->isNetworkConnected()Z

    move-result v10

    if-nez v10, :cond_2

    .line 200
    const-string v10, "GoogleSearch"

    const-string v11, "Not connected to network."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_2
    :try_start_0
    const-string v10, "UTF-8"

    invoke-static {p1, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    iget-object v10, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mSuggestUri:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 207
    .local v1, l:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/quicksearchbox/google/GoogleSearch;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090006

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mSuggestUri:Ljava/lang/String;

    .line 212
    .end local v1           #l:Ljava/util/Locale;
    .end local v2           #language:Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mSuggestUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, suggestUri:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, method:Lorg/apache/http/client/methods/HttpGet;
    iget-object v10, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v10, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 216
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_0

    .line 223
    new-instance v6, Lorg/json/JSONArray;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 224
    .local v6, results:Lorg/json/JSONArray;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 225
    .local v8, suggestions:Lorg/json/JSONArray;
    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 227
    .local v4, popularity:Lorg/json/JSONArray;
    new-instance v10, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;

    invoke-direct {v10, p0, p1, v8, v4}, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v9, v10

    goto :goto_0

    .line 231
    .end local v3           #method:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #popularity:Lorg/json/JSONArray;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #results:Lorg/json/JSONArray;
    .end local v7           #suggestUri:Ljava/lang/String;
    .end local v8           #suggestions:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "GoogleSearch"

    const-string v11, "Error"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 233
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, e:Ljava/io/IOException;
    const-string v10, "GoogleSearch"

    const-string v11, "Error"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 235
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 236
    .local v0, e:Lorg/json/JSONException;
    const-string v10, "GoogleSearch"

    const-string v11, "Error"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSource;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/quicksearchbox/google/GoogleSearch;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".google"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 11
    .parameter "query"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v7

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->isNetworkConnected()Z

    move-result v8

    if-nez v8, :cond_2

    .line 114
    const-string v8, "GoogleSearch"

    const-string v9, "Not connected to network."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    iget-object v8, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/quicksearchbox/QsbApplication;->getSearchEngineInfo()Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/mediatek/common/search/SearchEngineInfo;->getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, suggestUri:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->readUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    iget-object v8, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/quicksearchbox/QsbApplication;->getSearchEngineInfo()Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "baidu"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 137
    const/16 v8, 0x11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, obj:Lorg/json/JSONObject;
    const-string v8, "s"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 141
    .local v6, suggestions:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 161
    .end local v3           #obj:Lorg/json/JSONObject;
    .local v1, descriptions:Lorg/json/JSONArray;
    :cond_3
    :goto_1
    new-instance v8, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;

    invoke-direct {v8, p0, p1, v6, v1}, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    move-object v7, v8

    goto :goto_0

    .line 149
    .end local v1           #descriptions:Lorg/json/JSONArray;
    .end local v6           #suggestions:Lorg/json/JSONArray;
    :cond_4
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 150
    .local v4, results:Lorg/json/JSONArray;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 151
    .restart local v6       #suggestions:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 152
    .restart local v1       #descriptions:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-le v8, v10, :cond_3

    .line 153
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_3

    .line 157
    const/4 v1, 0x0

    goto :goto_1

    .line 162
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #descriptions:Lorg/json/JSONArray;
    .end local v4           #results:Lorg/json/JSONArray;
    .end local v6           #suggestions:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Lorg/json/JSONException;
    const-string v8, "GoogleSearch"

    const-string v9, "Error"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public queryExternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 1
    .parameter "query"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->query(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public queryInternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 1
    .parameter "query"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->getSuggestions(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public readUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 177
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, method:Lorg/apache/http/client/methods/HttpGet;
    iget-object v4, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 179
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 180
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .end local v1           #method:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v3

    .line 182
    .restart local v1       #method:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    const-string v4, "GoogleSearch"

    const-string v5, "Suggestion request failed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v1           #method:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/io/IOException;
    const-string v4, "GoogleSearch"

    const-string v5, "Error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1
    .parameter "shortcutId"
    .parameter "oldExtraData"

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method
