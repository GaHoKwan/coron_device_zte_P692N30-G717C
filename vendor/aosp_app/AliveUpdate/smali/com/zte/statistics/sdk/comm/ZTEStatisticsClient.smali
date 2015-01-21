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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
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

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private postHttpsJSON(Ljava/lang/String;)I
    .locals 13
    .parameter "json"

    .prologue
    .line 44
    :try_start_0
    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 45
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

    .line 46
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 47
    new-instance v8, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;-><init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;)V

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 48
    new-instance v8, Ljava/net/URL;

    sget-object v9, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 49
    .local v2, conn:Ljavax/net/ssl/HttpsURLConnection;
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v8, "Accept"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v8, "Crypt"

    const-string v9, "NO"

    invoke-virtual {v2, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 54
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 55
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 57
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 58
    .local v5, outStream:Ljava/io/OutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 59
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 60
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 62
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 69
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 70
    .local v1, code:I
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 77
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #code:I
    .end local v2           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sc:Ljavax/net/ssl/SSLContext;
    :goto_1
    return v1

    .line 66
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

    .line 74
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sc:Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v3

    .line 75
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

    .line 77
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public postJSON(Ljava/lang/String;)I
    .locals 2
    .parameter "json"

    .prologue
    .line 34
    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpsJSON(Ljava/lang/String;)I

    move-result v0

    .line 38
    :goto_0
    return v0

    .line 37
    :cond_0
    const-string v0, "not https url"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/16 v0, -0x64

    goto :goto_0
.end method
