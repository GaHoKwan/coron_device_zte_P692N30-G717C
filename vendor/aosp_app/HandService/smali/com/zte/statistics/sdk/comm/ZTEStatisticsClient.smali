.class public Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;
.super Ljava/lang/Object;
.source "ZTEStatisticsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;,
        Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyTrustManager;
    }
.end annotation


# static fields
.field private static final ENDPOINT_BASE:Ljava/lang/String;

.field private static final ENDPOINT_CONFIGURATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DataCollection?cmd=saveData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "SettingOption?cmd=getSettingOptionByAppUID&appuid=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_CONFIGURATION:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private postHttpJSON(Ljava/lang/String;)I
    .locals 14
    .parameter "json"

    .prologue
    const/16 v10, 0x7530

    const/4 v9, -0x1

    .line 103
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 104
    .local v3, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 105
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 106
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 107
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    sget-object v10, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "Content-Type"

    const-string v11, "application/json"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v10, "Accept"

    const-string v11, "application/json"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-boolean v10, Lcom/zte/statistics/sdk/GlobalInfo;->bCrypt:Z

    if-eqz v10, :cond_1

    .line 112
    const-string v10, "Crypt"

    const-string v11, "YES"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, content:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 120
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Posting JSON: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    const-string v11, "UTF-8"

    invoke-direct {v10, p1, v11}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 123
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 124
    const/16 v10, 0x400

    new-array v5, v10, [B

    .line 126
    .local v5, line:[B
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, size:I
    if-ne v8, v9, :cond_2

    .line 129
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const-string v10, "- %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 138
    if-eqz v4, :cond_0

    .line 140
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 145
    .end local v5           #line:[B
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :cond_0
    :goto_2
    return v9

    .line 114
    .end local v0           #content:Ljava/lang/StringBuilder;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_1
    const-string v10, "Crypt"

    const-string v11, "NO"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .restart local v0       #content:Ljava/lang/StringBuilder;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #line:[B
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #size:I
    :cond_2
    :try_start_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 134
    .end local v5           #line:[B
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error posting JSON: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    if-eqz v4, :cond_0

    .line 140
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 142
    :catch_1
    move-exception v10

    goto :goto_2

    .line 137
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 138
    if-eqz v4, :cond_3

    .line 140
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 144
    :cond_3
    :goto_3
    throw v9

    .line 142
    .restart local v5       #line:[B
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #size:I
    :catch_2
    move-exception v10

    goto :goto_2

    .end local v5           #line:[B
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :catch_3
    move-exception v10

    goto :goto_3
.end method

.method private postHttpsJSON(Ljava/lang/String;)I
    .locals 13
    .parameter "json"

    .prologue
    .line 64
    :try_start_0
    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 65
    .local v7, sc:Ljavax/net/ssl/SSLContext;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljavax/net/ssl/TrustManager;

    const/4 v10, 0x0

    new-instance v11, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyTrustManager;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyTrustManager;-><init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyTrustManager;)V

    aput-object v11, v9, v10

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 66
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 67
    new-instance v8, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;-><init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;)V

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 68
    new-instance v8, Ljava/net/URL;

    sget-object v9, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 69
    .local v2, conn:Ljavax/net/ssl/HttpsURLConnection;
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 70
    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v8, "Accept"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v8, "Crypt"

    const-string v9, "NO"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 74
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 75
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 77
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 78
    .local v5, outStream:Ljava/io/OutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 79
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 80
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 82
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 88
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 90
    .local v1, code:I
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 91
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 99
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #code:I
    .end local v2           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sc:Ljavax/net/ssl/SSLContext;
    :goto_1
    return v1

    .line 86
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #conn:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    .restart local v7       #sc:Ljavax/net/ssl/SSLContext;
    :cond_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sc:Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v3

    .line 96
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getAppConfiguration(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 17
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v1, config:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 152
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    sget-object v13, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_CONFIGURATION:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/zte/statistics/sdk/GlobalInfo;->apiKey:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, uri:Ljava/lang/String;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 154
    .local v5, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 156
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v13, Ljava/net/URI;

    invoke-direct {v13, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 157
    const-string v13, "Content-Type"

    const-string v14, "application/json"

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v13, "Accept"

    const-string v14, "application/json"

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 161
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 162
    .local v0, code:I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Configuration: HTTP response status line: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/16 v13, 0xc8

    if-lt v0, v13, :cond_0

    const/16 v13, 0x12c

    if-ge v0, v13, :cond_0

    .line 165
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, content:Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    .local v10, root:Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 168
    .local v7, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 177
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Configuration: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/zte/statistics/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 190
    .end local v2           #content:Ljava/lang/String;
    .end local v7           #it:Ljava/util/Iterator;
    .end local v10           #root:Lorg/json/JSONObject;
    :cond_0
    if-eqz v6, :cond_1

    .line 192
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 197
    .end local v0           #code:I
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v11           #uri:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 169
    .restart local v0       #code:I
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v7       #it:Ljava/util/Iterator;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    .restart local v10       #root:Lorg/json/JSONObject;
    .restart local v11       #uri:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 170
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 171
    .local v12, value:Ljava/lang/Object;
    instance-of v13, v12, Lorg/json/JSONObject;

    if-eqz v13, :cond_3

    .line 172
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 180
    .end local v0           #code:I
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v7           #it:Ljava/util/Iterator;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #root:Lorg/json/JSONObject;
    .end local v11           #uri:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 181
    .local v3, e:Lorg/json/JSONException;
    :try_start_3
    const-string v13, "Error fetching configuration."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v3, v14}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    if-eqz v6, :cond_1

    .line 192
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 194
    :catch_1
    move-exception v13

    goto :goto_1

    .line 174
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v0       #code:I
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v7       #it:Ljava/util/Iterator;
    .restart local v8       #key:Ljava/lang/String;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    .restart local v10       #root:Lorg/json/JSONObject;
    .restart local v11       #uri:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/Object;
    :cond_3
    :try_start_5
    invoke-virtual {v1, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 183
    .end local v0           #code:I
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v7           #it:Ljava/util/Iterator;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #root:Lorg/json/JSONObject;
    .end local v11           #uri:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 184
    .local v3, e:Ljava/net/URISyntaxException;
    :try_start_6
    const-string v13, "Error fetching configuration."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v3, v14}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 190
    if-eqz v6, :cond_1

    .line 192
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 194
    :catch_3
    move-exception v13

    goto :goto_1

    .line 186
    .end local v3           #e:Ljava/net/URISyntaxException;
    :catch_4
    move-exception v3

    .line 187
    .local v3, e:Ljava/io/IOException;
    :try_start_8
    const-string v13, "Error fetching configuration: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 190
    if-eqz v6, :cond_1

    .line 192
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 194
    :catch_5
    move-exception v13

    goto :goto_1

    .line 189
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 190
    if-eqz v6, :cond_4

    .line 192
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 196
    :cond_4
    :goto_2
    throw v13

    .line 194
    :catch_6
    move-exception v14

    goto :goto_2

    .restart local v0       #code:I
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    .restart local v11       #uri:Ljava/lang/String;
    :catch_7
    move-exception v13

    goto :goto_1
.end method

.method public postJSON(Ljava/lang/String;)I
    .locals 2
    .parameter "json"

    .prologue
    .line 55
    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpsJSON(Ljava/lang/String;)I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpJSON(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
