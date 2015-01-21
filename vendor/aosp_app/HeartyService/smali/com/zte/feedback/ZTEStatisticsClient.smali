.class public Lcom/zte/feedback/ZTEStatisticsClient;
.super Ljava/lang/Object;
.source "ZTEStatisticsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/feedback/ZTEStatisticsClient$1;,
        Lcom/zte/feedback/ZTEStatisticsClient$MyTrustManager;,
        Lcom/zte/feedback/ZTEStatisticsClient$MyHostnameVerifier;
    }
.end annotation


# static fields
.field private static final ENDPOINT_BASE:Ljava/lang/String;

.field public static defualtUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "https://cloud.ztedevice.com/dcs/"

    sput-object v0, Lcom/zte/feedback/ZTEStatisticsClient;->defualtUrl:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/feedback/ZTEStatisticsClient;->defualtUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DataCollection?cmd=saveData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/feedback/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private postHttpJSON(Ljava/lang/String;)I
    .locals 13
    .parameter "json"

    .prologue
    const/16 v10, 0x7530

    const/4 v9, -0x1

    .line 89
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    .local v3, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 91
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 93
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    sget-object v10, Lcom/zte/feedback/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 95
    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "Content-Type"

    const-string v11, "application/json"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v10, "Accept"

    const-string v11, "application/json"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v10, "Crypt"

    const-string v11, "NO"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, content:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 102
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Posting JSON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    const-string v11, "UTF-8"

    invoke-direct {v10, p1, v11}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 104
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 105
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 106
    const/16 v10, 0x400

    new-array v5, v10, [B

    .line 108
    .local v5, line:[B
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, size:I
    if-eq v8, v9, :cond_1

    .line 109
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v5           #line:[B
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error posting JSON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-eqz v4, :cond_0

    .line 120
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    return v9

    .line 111
    .restart local v5       #line:[B
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #size:I
    :cond_1
    :try_start_3
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v9

    .line 118
    if-eqz v4, :cond_0

    .line 120
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v10

    goto :goto_1

    .line 118
    .end local v5           #line:[B
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_2

    .line 120
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 122
    :cond_2
    :goto_2
    throw v9

    .line 121
    .restart local v1       #e:Ljava/io/IOException;
    :catch_2
    move-exception v10

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_2
.end method

.method private postHttpsJSON(Ljava/lang/String;)I
    .locals 13
    .parameter "json"

    .prologue
    .line 53
    :try_start_0
    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 54
    .local v7, sc:Ljavax/net/ssl/SSLContext;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljavax/net/ssl/TrustManager;

    const/4 v10, 0x0

    new-instance v11, Lcom/zte/feedback/ZTEStatisticsClient$MyTrustManager;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/zte/feedback/ZTEStatisticsClient$MyTrustManager;-><init>(Lcom/zte/feedback/ZTEStatisticsClient;Lcom/zte/feedback/ZTEStatisticsClient$1;)V

    aput-object v11, v9, v10

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 55
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 56
    new-instance v8, Lcom/zte/feedback/ZTEStatisticsClient$MyHostnameVerifier;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/zte/feedback/ZTEStatisticsClient$MyHostnameVerifier;-><init>(Lcom/zte/feedback/ZTEStatisticsClient;Lcom/zte/feedback/ZTEStatisticsClient$1;)V

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 57
    new-instance v8, Ljava/net/URL;

    sget-object v9, Lcom/zte/feedback/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 58
    .local v2, conn:Ljavax/net/ssl/HttpsURLConnection;
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v8, "Accept"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v8, "Crypt"

    const-string v9, "NO"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 63
    const/16 v8, 0x2710

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 64
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 65
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 66
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 68
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 69
    .local v5, outStream:Ljava/io/OutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 71
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 73
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sc:Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v3

    .line 83
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 85
    const/4 v1, -0x1

    .end local v3           #e:Ljava/lang/Exception;
    :goto_1
    return v1

    .line 79
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #conn:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    .restart local v7       #sc:Ljavax/net/ssl/SSLContext;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 80
    .local v1, code:I
    goto :goto_1
.end method


# virtual methods
.method public postJSON(Ljava/lang/String;)I
    .locals 2
    .parameter "json"

    .prologue
    .line 44
    sget-object v0, Lcom/zte/feedback/ZTEStatisticsClient;->defualtUrl:Ljava/lang/String;

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/zte/feedback/ZTEStatisticsClient;->postHttpsJSON(Ljava/lang/String;)I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/feedback/ZTEStatisticsClient;->postHttpJSON(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
