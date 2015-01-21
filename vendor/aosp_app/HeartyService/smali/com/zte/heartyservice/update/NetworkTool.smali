.class public Lcom/zte/heartyservice/update/NetworkTool;
.super Ljava/lang/Object;
.source "NetworkTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkTool"

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/update/NetworkTool;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMultiUpdate(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 11
    .parameter "toArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, url:Ljava/net/URL;
    const/4 v0, 0x0

    .line 81
    .local v0, backArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 82
    .local v5, objOutputStrm:Ljava/io/ObjectOutputStream;
    const/4 v4, 0x0

    .line 83
    .local v4, inStrm:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 88
    .local v2, httpUrlConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v8, "http://cloud.ztedevices.com/zteappupgrade/multiupdate"

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v6           #url:Ljava/net/URL;
    .local v7, url:Ljava/net/URL;
    :try_start_1
    invoke-static {v7}, Lcom/zte/heartyservice/update/NetworkTool;->setConnectionProps(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lcom/zte/heartyservice/update/NetworkTool;->getObjOutStream(Ljava/net/HttpURLConnection;)Ljava/io/ObjectOutputStream;

    move-result-object v5

    .line 94
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 99
    const-string v8, "NetworkTool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResponseCode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 106
    invoke-static {v4}, Lcom/zte/heartyservice/update/NetworkTool;->readObjectFromServer(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v3

    .line 108
    .local v3, inObj:Ljava/lang/Object;
    invoke-static {v3}, Lcom/zte/heartyservice/update/NetworkTool;->doJsonObjectFromServer(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 113
    invoke-static {v2}, Lcom/zte/heartyservice/update/NetworkTool;->closeNetStream(Ljava/net/HttpURLConnection;)V

    return-object v0

    .line 110
    .end local v3           #inObj:Ljava/lang/Object;
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    :goto_0
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_1
    invoke-static {v2}, Lcom/zte/heartyservice/update/NetworkTool;->closeNetStream(Ljava/net/HttpURLConnection;)V

    throw v8

    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_1

    .line 110
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_0
.end method

.method private static closeNetStream(Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter "httpUrlConnection"

    .prologue
    .line 120
    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 123
    :cond_0
    return-void
.end method

.method private static doJsonObjectFromServer(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 2
    .parameter "inObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, injson:Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    .line 176
    new-instance v0, Lorg/json/JSONArray;

    .end local v0           #injson:Lorg/json/JSONArray;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v0       #injson:Lorg/json/JSONArray;
    :cond_0
    return-object v0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
    .locals 17
    .parameter "downLoadUrl"
    .parameter "summary"
    .parameter "fileName"
    .parameter "appLable"
    .parameter "versionName"

    .prologue
    .line 224
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    const-string v13, "download"

    invoke-virtual {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 225
    .local v3, downloadManager:Landroid/app/DownloadManager;
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 226
    .local v11, uri:Landroid/net/Uri;
    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v12}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 227
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_1

    .line 228
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v6

    .line 229
    .local v6, internalSD:Ljava/io/File;
    if-eqz v6, :cond_0

    .line 230
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    const-string v12, "Download"

    invoke-direct {v4, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_1

    .line 232
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v13

    const v14, 0x7f0a013b

    invoke-virtual {v13, v14}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 233
    const-wide/16 v7, -0x1

    .line 271
    .end local v6           #internalSD:Ljava/io/File;
    :goto_0
    return-wide v7

    .line 236
    .restart local v6       #internalSD:Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v13

    const v14, 0x7f0a013b

    invoke-virtual {v13, v14}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 237
    const-wide/16 v7, -0x1

    goto :goto_0

    .line 249
    .end local v6           #internalSD:Ljava/io/File;
    :cond_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 250
    .local v5, fileuri:Landroid/net/Uri;
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v11}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 251
    .local v2, downLoadRequest:Landroid/app/DownloadManager$Request;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    .line 252
    .local v10, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    invoke-static/range {p0 .. p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, mimeString:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v5, :cond_2

    .line 254
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 256
    :cond_2
    invoke-virtual {v2, v9}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 257
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .local v1, buf:Ljava/lang/StringBuffer;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    .line 259
    :cond_3
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 266
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 267
    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 268
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 269
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 270
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v7

    .line 271
    .local v7, lastDownLoadId:J
    goto/16 :goto_0

    .line 261
    .end local v7           #lastDownLoadId:J
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v13

    const v14, 0x7f0a0145

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p4, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v6, sb:Ljava/lang/StringBuilder;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 60
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 62
    .local v2, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v7, 0xbb8

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    const/16 v7, 0x1388

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 65
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 66
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    .line 67
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x2000

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 69
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 70
    .local v3, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 75
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getObjOutStream(Ljava/net/HttpURLConnection;)Ljava/io/ObjectOutputStream;
    .locals 2
    .parameter "httpUrlConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 140
    .local v1, outStrm:Ljava/io/OutputStream;
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    .local v0, objOutputStrm:Ljava/io/ObjectOutputStream;
    return-object v0
.end method

.method private static readObjectFromServer(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .parameter "inStrm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, inObj:Ljava/lang/Object;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    .local v2, objInStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    .end local v1           #inObj:Ljava/lang/Object;
    .end local v2           #objInStream:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v1

    .line 157
    .restart local v1       #inObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static setConnectionProps(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7530

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .local v1, rulConnection:Ljava/net/URLConnection;
    move-object v0, v1

    .line 193
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 196
    .local v0, httpUrlConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 198
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 206
    const-string v2, "Content-type"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 211
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 212
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 213
    return-object v0
.end method

.method public static startDownloadMonitor()V
    .locals 3

    .prologue
    .line 277
    sget-object v1, Lcom/zte/heartyservice/update/NetworkTool;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Lcom/zte/heartyservice/update/NetworkTool$1;

    invoke-direct {v1}, Lcom/zte/heartyservice/update/NetworkTool$1;-><init>()V

    sput-object v1, Lcom/zte/heartyservice/update/NetworkTool;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/update/NetworkTool;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    :cond_0
    return-void
.end method

.method public static stopDownloadMonitor()V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/zte/heartyservice/update/NetworkTool;->sReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/update/NetworkTool;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/update/NetworkTool;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    :cond_0
    return-void
.end method

.method public static testNanoTimeCost(Ljava/lang/String;)J
    .locals 11
    .parameter "urlStr"

    .prologue
    .line 310
    const-wide/16 v6, -0x1

    .line 314
    .local v6, t:J
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 315
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 316
    .local v1, connection:Ljava/net/URLConnection;
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 317
    .local v2, httpUrlConnection:Ljava/net/HttpURLConnection;
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 318
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 319
    .local v4, startTime:J
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 320
    .local v3, ret:I
    const/16 v9, 0xc8

    if-ne v3, v9, :cond_0

    .line 321
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v6, v9, v4

    .line 323
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v1           #connection:Ljava/net/URLConnection;
    .end local v2           #httpUrlConnection:Ljava/net/HttpURLConnection;
    .end local v3           #ret:I
    .end local v4           #startTime:J
    .end local v8           #url:Ljava/net/URL;
    :goto_0
    return-wide v6

    .line 324
    :catch_0
    move-exception v9

    goto :goto_0
.end method
