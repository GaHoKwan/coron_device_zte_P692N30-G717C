.class public Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;
.super Ljava/lang/Object;
.source "ZTEFeedbackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyHostnameVerifier;,
        Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyTrustManager;
    }
.end annotation


# static fields
.field private static final ENDPOINT_BASE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DataCollection?cmd=saveData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;->ENDPOINT_BASE:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private postHttpJSON(Ljava/lang/String;)I
    .locals 14
    .parameter "json"

    .prologue
    const/16 v10, 0x7530

    const/4 v9, -0x1

    .line 54
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 55
    .local v3, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 58
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    sget-object v10, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 60
    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "Content-Type"

    const-string v11, "application/json"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v10, "Accept"

    const-string v11, "application/json"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v10, "Crypt"

    const-string v11, "NO"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, content:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 67
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

    invoke-static {v10, v11}, Lcom/zte/feedback/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    const-string v11, "UTF-8"

    invoke-direct {v10, p1, v11}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 69
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 70
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 71
    const/16 v10, 0x400

    new-array v5, v10, [B

    .line 73
    .local v5, line:[B
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, size:I
    if-ne v8, v9, :cond_1

    .line 76
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/zte/feedback/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const-string v10, "- %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/zte/feedback/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 85
    if-eqz v4, :cond_0

    .line 87
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 92
    .end local v5           #line:[B
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :cond_0
    :goto_1
    return v9

    .line 74
    .restart local v5       #line:[B
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #size:I
    :cond_1
    :try_start_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 81
    .end local v5           #line:[B
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :catch_0
    move-exception v1

    .line 82
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

    invoke-static {v10, v11}, Lcom/zte/feedback/sdk/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    if-eqz v4, :cond_0

    .line 87
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 89
    :catch_1
    move-exception v10

    goto :goto_1

    .line 84
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 85
    if-eqz v4, :cond_2

    .line 87
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 91
    :cond_2
    :goto_2
    throw v9

    .line 89
    .restart local v5       #line:[B
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #size:I
    :catch_2
    move-exception v10

    goto :goto_1

    .end local v5           #line:[B
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #size:I
    :catch_3
    move-exception v10

    goto :goto_2
.end method

.method private postHttpsJSON(Ljava/lang/String;)I
    .locals 13
    .parameter "json"

    .prologue
    .line 97
    :try_start_0
    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 98
    .local v7, sc:Ljavax/net/ssl/SSLContext;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljavax/net/ssl/TrustManager;

    const/4 v10, 0x0

    new-instance v11, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyTrustManager;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyTrustManager;-><init>(Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyTrustManager;)V

    aput-object v11, v9, v10

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 99
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 100
    new-instance v8, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyHostnameVerifier;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyHostnameVerifier;-><init>(Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyHostnameVerifier;)V

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 101
    new-instance v8, Ljava/net/URL;

    sget-object v9, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 102
    .local v2, conn:Ljavax/net/ssl/HttpsURLConnection;
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v8, "Accept"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v8, "Crypt"

    const-string v9, "NO"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 107
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 108
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 110
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 111
    .local v5, outStream:Ljava/io/OutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 112
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 113
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 115
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 122
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 123
    .local v1, code:I
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 130
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #code:I
    .end local v2           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sc:Ljavax/net/ssl/SSLContext;
    :goto_1
    return v1

    .line 119
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

    .line 127
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sc:Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v3

    .line 128
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

    invoke-static {v8, v9}, Lcom/zte/feedback/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public postJSON(Ljava/lang/String;)I
    .locals 2
    .parameter "json"

    .prologue
    .line 45
    sget-object v0, Lcom/zte/feedback/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;->postHttpsJSON(Ljava/lang/String;)I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;->postHttpJSON(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
