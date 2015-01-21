.class public Lcom/isw/android/corp/http/WinksHttpExp;
.super Ljava/lang/Object;
.source "WinksHttpExp.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x3c

.field private static final CTNET_CONNECT:I = 0x1

.field private static final CTWAP_CONNECT:I = 0x2

.field private static final PREFERRED_APN_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "MiniWinksHttp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/http/WinksHttpExp;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIsChinaTelecom(Ljava/lang/String;)Z
    .locals 3
    .parameter "imsi"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, res:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "99903"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    const-string v1, "MiniWinksHttp"

    const-string v2, "The user is china telecom imsi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x1

    .line 113
    :cond_1
    return v0
.end method

.method private static getCurrentApnInUse(Landroid/content/Context;)I
    .locals 13
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/isw/android/corp/http/WinksHttpExp;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 161
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 164
    :cond_0
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, id:Ljava/lang/String;
    const-string v0, "apn"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, apn:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, type:Ljava/lang/String;
    const-string v0, "current"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, current:Ljava/lang/String;
    const-string v0, "proxy"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, proxy:Ljava/lang/String;
    const-string v0, "port"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, port:Ljava/lang/String;
    const-string v0, "MiniWinksHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "MiniWinksHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, "MiniWinksHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "MiniWinksHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "MiniWinksHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "proxy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "MiniWinksHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "port: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v0, "10.0.0.200"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "MiniWinksHttp"

    const-string v1, "current connection is ct wap."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 182
    :cond_1
    if-eqz v7, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    :cond_2
    const-string v0, "MiniWinksHttp"

    const-string v1, "current connection is ct net."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 186
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0
.end method

.method private static getHttpClient(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 4
    .parameter "context"
    .parameter "imsi"

    .prologue
    const v2, 0xea60

    .line 83
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 84
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    const/16 v2, 0x2800

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 91
    invoke-static {p1}, Lcom/isw/android/corp/http/WinksHttpExp;->checkIsChinaTelecom(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/isw/android/corp/http/WinksHttpExp;->isCTWap(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const-string v2, "MiniWinksHttp"

    const-string v3, "[getHttpClient]set proxy!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 94
    .local v1, proxy:Lorg/apache/http/HttpHost;
    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 99
    .end local v1           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v2
.end method

.method private static isCTWap(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 124
    .local v2, res:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 125
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 127
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 128
    const-string v3, "WIFI"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    const-string v3, "MiniWinksHttp"

    const-string v4, "[isCTWap]CurrentType WIFI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v2, 0x0

    .line 154
    :cond_0
    :goto_0
    return v2

    .line 132
    :cond_1
    const-string v3, "MOBILE"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-string v3, "MiniWinksHttp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " current net connection type is  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0}, Lcom/isw/android/corp/http/WinksHttpExp;->getCurrentApnInUse(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 147
    const-string v3, "MiniWinksHttp"

    .line 148
    const-string v4, "could not get current net connection type. default as NET"

    .line 147
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :pswitch_0
    const-string v3, "MiniWinksHttp"

    const-string v4, "[isCTWap]CurrentType CTWAP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, 0x1

    .line 140
    goto :goto_0

    .line 143
    :pswitch_1
    const-string v3, "MiniWinksHttp"

    const-string v4, "[isCTWap]CurrentType CTNET"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    .line 145
    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "imsi"

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 36
    .local v3, httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    const-string v5, ""

    .line 37
    .local v5, response:Ljava/lang/String;
    const/4 v6, 0x0

    .line 39
    .local v6, statusCode:I
    const-string v7, "MiniWinksHttp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Request Get Request url: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v3           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .local v4, httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-static {p0, p2}, Lcom/isw/android/corp/http/WinksHttpExp;->getHttpClient(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 45
    .local v1, httpCLient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 47
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 48
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 49
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v3, v4

    .line 58
    .end local v1           #httpCLient:Lorg/apache/http/client/HttpClient;
    .end local v4           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    const-string v7, "MiniWinksHttp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Request: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-object v5

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    const-string v5, ""

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const-string v7, "MiniWinksHttp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1

    .end local v3           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v1       #httpCLient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    move-object v3, v4

    .end local v4           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_0
.end method

.method public static sendRequest(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 8
    .parameter "context"
    .parameter "url"

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 65
    .local v3, httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "MiniWinksHttp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request Get Request url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v3           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .local v4, httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 71
    .local v1, httpCLient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v3, v4

    .line 79
    .end local v1           #httpCLient:Lorg/apache/http/client/HttpClient;
    .end local v4           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v5, "MiniWinksHttp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpgetxml:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1
.end method
