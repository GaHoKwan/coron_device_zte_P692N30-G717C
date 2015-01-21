.class public Lcom/sdk/http/HttpClientUtil;
.super Ljava/lang/Object;
.source "HttpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/http/HttpClientUtil$TrustAnyHostnameVerifier;,
        Lcom/sdk/http/HttpClientUtil$TrustAnyTrustManager;
    }
.end annotation


# static fields
.field public static final CHARACTER_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final CHARACTER_GBK:Ljava/lang/String; = "GBK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpsPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "requestData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sdk/http/HttpClientUtil;->httpsPostRequest(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static httpsPostRequest(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 12
    .parameter "url"
    .parameter "requestData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 187
    const-string v8, "SSL"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 188
    .local v7, sc:Ljavax/net/ssl/SSLContext;
    new-array v8, v9, [Ljavax/net/ssl/TrustManager;

    const/4 v9, 0x0

    new-instance v10, Lcom/sdk/http/HttpClientUtil$TrustAnyTrustManager;

    invoke-direct {v10, v11}, Lcom/sdk/http/HttpClientUtil$TrustAnyTrustManager;-><init>(Lcom/sdk/http/HttpClientUtil$TrustAnyTrustManager;)V

    aput-object v10, v8, v9

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v11, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 192
    .local v6, sBuffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    .line 193
    new-instance v8, Lcom/sdk/http/HttpClientUtil$TrustAnyHostnameVerifier;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sdk/http/HttpClientUtil$TrustAnyHostnameVerifier;-><init>(Lcom/sdk/http/HttpClientUtil$TrustAnyHostnameVerifier;)V

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 194
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 195
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 196
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 197
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 199
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 200
    .local v3, hurlBufOus:Ljava/io/BufferedOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 202
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 203
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 204
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 206
    const/4 v4, 0x0

    .line 207
    .local v4, in:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 209
    .local v5, inputLine:Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedReader;

    .end local v4           #in:Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    .restart local v4       #in:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 214
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 221
    const/4 v2, 0x0

    .line 225
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 211
    :cond_1
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 216
    .end local v3           #hurlBufOus:Ljava/io/BufferedOutputStream;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v5           #inputLine:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 219
    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 221
    const/4 v2, 0x0

    .line 223
    :cond_2
    throw v8
.end method

.method public static postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "requestData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sdk/http/HttpClientUtil;->postRequest(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static postRequest(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11
    .parameter "url"
    .parameter "requestData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, httpConn:Ljava/net/HttpURLConnection;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    .local v7, sBuffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 78
    const-string v5, "0"

    .line 79
    .local v5, length:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 80
    array-length v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    :cond_0
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 84
    const-string v8, "Content-Type"

    const-string v9, "application/json;charset=utf-8"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v8, "Accept"

    const-string v9, "application/json;charset=utf-8"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v8, "Connection"

    const-string v9, "close"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v8, "Content-Length"

    invoke-virtual {v2, v8, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 89
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 90
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 91
    .local v6, outStream:Ljava/io/OutputStream;
    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 94
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, in:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 99
    .local v4, inputLine:Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedReader;

    .end local v3           #in:Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .restart local v3       #in:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 104
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    const/4 v2, 0x0

    .line 113
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 101
    :cond_2
    :try_start_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #inputLine:Ljava/lang/String;
    .end local v5           #length:Ljava/lang/String;
    .end local v6           #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 108
    if-eqz v2, :cond_3

    .line 109
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    const/4 v2, 0x0

    .line 112
    :cond_3
    throw v8
.end method

.method public static postRequestGBK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "requestData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "GBK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sdk/http/HttpClientUtil;->postRequestGBK(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static postRequestGBK(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11
    .parameter "url"
    .parameter "requestData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, httpConn:Ljava/net/HttpURLConnection;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    .local v7, sBuffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 122
    const-string v5, "0"

    .line 123
    .local v5, length:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 124
    array-length v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    :cond_0
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 128
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 129
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v8, "Connection"

    const-string v9, "close"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v8, "Content-Length"

    invoke-virtual {v2, v8, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 134
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 135
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 136
    .local v6, outStream:Ljava/io/OutputStream;
    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write([B)V

    .line 138
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 139
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, in:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 144
    .local v4, inputLine:Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedReader;

    .end local v3           #in:Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "GBK"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 145
    .restart local v3       #in:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 149
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    const/4 v2, 0x0

    .line 159
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 146
    :cond_2
    :try_start_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #inputLine:Ljava/lang/String;
    .end local v5           #length:Ljava/lang/String;
    .end local v6           #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 154
    if-eqz v2, :cond_3

    .line 155
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    const/4 v2, 0x0

    .line 158
    :cond_3
    throw v8
.end method
