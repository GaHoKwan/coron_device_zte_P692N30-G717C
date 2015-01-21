.class public Lcn/com/zte/nlt/down/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method private static connect(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 46
    .local v6, is:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 48
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, httpUrl:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 50
    const-string v11, "Connection"

    const-string v12, "close"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/16 v11, 0x3a98

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 52
    const/16 v11, 0x7530

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 53
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 54
    const-string v11, "connect"

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 57
    const-string v11, "Content-Type"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, contentType:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contentType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "application/vnd.wap.wmlc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 60
    new-instance v11, Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;

    const-string v12, "Receive contentType=\'application/vnd.wap.wmlc\' from netgate.reconnect to server."

    invoke-direct {v11, v12}, Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v3           #contentType:Ljava/lang/String;
    .end local v5           #httpUrl:Ljava/net/URL;
    :catchall_0
    move-exception v11

    .line 80
    :goto_0
    if-eqz v6, :cond_0

    .line 81
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_0
    if-eqz v8, :cond_1

    .line 84
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v11

    .line 64
    .restart local v3       #contentType:Ljava/lang/String;
    .restart local v5       #httpUrl:Ljava/net/URL;
    :cond_2
    :try_start_2
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v10, strBuffer:Ljava/lang/StringBuffer;
    const-string v11, "getInputStream"

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 67
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_3
    const-string v11, "Contents of get request"

    invoke-static {v11}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 70
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, lines:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 71
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 79
    .end local v7           #lines:Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 74
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #lines:Ljava/lang/String;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, content:Ljava/lang/String;
    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    if-eqz v6, :cond_4

    .line 81
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_4
    if-eqz v9, :cond_5

    .line 84
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 87
    :catch_0
    move-exception v4

    .line 88
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 87
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #contentType:Ljava/lang/String;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #httpUrl:Ljava/net/URL;
    .end local v7           #lines:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    .end local v10           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 88
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static httpConnect(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const-string v0, ""

    .line 28
    .local v0, content:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcn/com/zte/nlt/down/HttpUtils;->connect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcn/com/zte/nlt/down/HttpUtils$ReconnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v1

    .line 32
    .local v1, e:Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;
    invoke-virtual {v1}, Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 34
    :try_start_1
    invoke-static {p0}, Lcn/com/zte/nlt/down/HttpUtils;->connect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcn/com/zte/nlt/down/HttpUtils$ReconnectException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 36
    :catch_1
    move-exception v2

    .line 37
    .local v2, e1:Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;
    invoke-virtual {v2}, Lcn/com/zte/nlt/down/HttpUtils$ReconnectException;->printStackTrace()V

    goto :goto_0
.end method

.method public static httpConnect2File(Ljava/lang/String;Ljava/lang/String;Lcn/com/zte/nlt/down/IDownloadCallback;)I
    .locals 14
    .parameter "url"
    .parameter "filePath"
    .parameter "callback"

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 104
    .local v7, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 106
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v6, httpUrl:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 108
    const-string v12, "Connection"

    const-string v13, "close"

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v12, "GET"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 110
    const/16 v12, 0x3a98

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 111
    const/16 v12, 0x7530

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 112
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 113
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 114
    const-string v12, "connect"

    invoke-static {v12}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 118
    .local v10, status:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 119
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_2

    .line 120
    const/4 v8, -0x1

    .line 151
    if-eqz v7, :cond_0

    .line 152
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 154
    :cond_0
    if-eqz v4, :cond_1

    .line 155
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 163
    .end local v6           #httpUrl:Ljava/net/URL;
    .end local v10           #status:I
    :goto_1
    return v8

    .line 158
    .restart local v6       #httpUrl:Ljava/net/URL;
    .restart local v10       #status:I
    :catch_0
    move-exception v3

    .line 159
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v12, "getInputStream"

    invoke-static {v12}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 124
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 125
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_3
    new-array v1, v12, [B

    .line 126
    .local v1, buffer:[B
    const/4 v9, 0x0

    .line 127
    .local v9, read:I
    const/4 v8, 0x0

    .line 128
    .local v8, len:I
    const-string v12, "write data stream"

    invoke-static {v12}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 129
    :cond_3
    :goto_2
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_7

    .line 130
    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 131
    add-int/2addr v8, v9

    .line 132
    if-eqz p2, :cond_3

    .line 133
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcn/com/zte/nlt/down/IDownloadCallback;->updateDownloadProcess(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 141
    .end local v1           #buffer:[B
    .end local v8           #len:I
    .end local v9           #read:I
    :catch_1
    move-exception v3

    move-object v4, v5

    .line 142
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #httpUrl:Ljava/net/URL;
    .end local v10           #status:I
    .local v3, e:Ljava/lang/Exception;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    .line 144
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v11, tmpFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 146
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    :cond_4
    if-eqz v7, :cond_5

    .line 152
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 154
    :cond_5
    if-eqz v4, :cond_6

    .line 155
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 161
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 163
    const/4 v8, -0x1

    goto :goto_1

    .line 136
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v1       #buffer:[B
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #httpUrl:Ljava/net/URL;
    .restart local v8       #len:I
    .restart local v9       #read:I
    .restart local v10       #status:I
    :cond_7
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 137
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 151
    if-eqz v7, :cond_8

    .line 152
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 154
    :cond_8
    if-eqz v5, :cond_9

    .line 155
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 161
    :cond_9
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 158
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 159
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 158
    .end local v1           #buffer:[B
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #httpUrl:Ljava/net/URL;
    .end local v8           #len:I
    .end local v9           #read:I
    .end local v10           #status:I
    .local v3, e:Ljava/lang/Exception;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_3
    move-exception v3

    .line 159
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 150
    .end local v3           #e:Ljava/io/IOException;
    .end local v11           #tmpFile:Ljava/io/File;
    :catchall_0
    move-exception v12

    .line 151
    :goto_6
    if-eqz v7, :cond_a

    .line 152
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 154
    :cond_a
    if-eqz v4, :cond_b

    .line 155
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 161
    :cond_b
    :goto_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v12

    .line 158
    :catch_4
    move-exception v3

    .line 159
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 150
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #httpUrl:Ljava/net/URL;
    .restart local v10       #status:I
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 141
    .end local v6           #httpUrl:Ljava/net/URL;
    .end local v10           #status:I
    :catch_5
    move-exception v3

    goto :goto_3
.end method
