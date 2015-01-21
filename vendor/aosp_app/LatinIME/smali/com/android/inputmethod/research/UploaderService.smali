.class public final Lcom/android/inputmethod/research/UploaderService;
.super Landroid/app/IntentService;
.source "UploaderService.java"


# static fields
.field private static final BUF_SIZE:I = 0x2000

.field private static final EXTRA_UPLOAD_UNCONDITIONALLY:Ljava/lang/String; = null

.field public static final RUN_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = null

.field protected static final TIMEOUT_IN_MS:I = 0xfa0


# instance fields
.field private mCanUpload:Z

.field private mFilesDir:Ljava/io/File;

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcom/android/inputmethod/research/UploaderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/research/UploaderService;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/inputmethod/research/UploaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".extra.UPLOAD_UNCONDITIONALLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/research/UploaderService;->EXTRA_UPLOAD_UNCONDITIONALLY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "Research Uploader Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private doUpload(Z)V
    .locals 8
    .parameter "isUploadingUnconditionally"

    .prologue
    .line 119
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/inputmethod/research/UploaderService;->isExternallyPowered()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/research/UploaderService;->hasWifiConnection()Z

    move-result v6

    if-nez v6, :cond_1

    .line 141
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v6, p0, Lcom/android/inputmethod/research/UploaderService;->mFilesDir:Ljava/io/File;

    if-eqz v6, :cond_0

    .line 125
    iget-object v6, p0, Lcom/android/inputmethod/research/UploaderService;->mFilesDir:Ljava/io/File;

    new-instance v7, Lcom/android/inputmethod/research/UploaderService$1;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/research/UploaderService$1;-><init>(Lcom/android/inputmethod/research/UploaderService;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 132
    .local v2, files:[Ljava/io/File;
    const/4 v5, 0x1

    .line 133
    .local v5, success:Z
    array-length v6, v2

    if-nez v6, :cond_2

    .line 134
    const/4 v5, 0x0

    .line 136
    :cond_2
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 137
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/inputmethod/research/UploaderService;->uploadFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 138
    const/4 v5, 0x0

    .line 136
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private hasWifiConnection()Z
    .locals 3

    .prologue
    .line 112
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 114
    .local v0, manager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 115
    .local v1, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method private isExternallyPowered()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 104
    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, pluggedState:I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private uploadFile(Ljava/io/File;)Z
    .locals 17
    .parameter "file"

    .prologue
    .line 144
    sget-object v14, Lcom/android/inputmethod/research/UploaderService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attempting upload of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v12, 0x0

    .line 146
    .local v12, success:Z
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v3, v14

    .line 147
    .local v3, contentLength:I
    const/4 v2, 0x0

    .line 148
    .local v2, connection:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 150
    .local v5, fileInputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 151
    .end local v5           #fileInputStream:Ljava/io/InputStream;
    .local v6, fileInputStream:Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/research/UploaderService;->mUrl:Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 152
    const-string v14, "PUT"

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 153
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 154
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 155
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 156
    .local v10, os:Ljava/io/OutputStream;
    const/16 v14, 0x2000

    new-array v1, v14, [B

    .line 158
    .local v1, buf:[B
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, numBytesRead:I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_2

    .line 159
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 175
    .end local v1           #buf:[B
    .end local v9           #numBytesRead:I
    .end local v10           #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 176
    .end local v6           #fileInputStream:Ljava/io/InputStream;
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #fileInputStream:Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    if-eqz v5, :cond_0

    .line 180
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 185
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_3
    move v13, v12

    .line 189
    .end local v12           #success:Z
    .local v13, success:I
    :goto_4
    return v13

    .line 161
    .end local v5           #fileInputStream:Ljava/io/InputStream;
    .end local v13           #success:I
    .restart local v1       #buf:[B
    .restart local v6       #fileInputStream:Ljava/io/InputStream;
    .restart local v9       #numBytesRead:I
    .restart local v10       #os:Ljava/io/OutputStream;
    .restart local v12       #success:Z
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_8

    .line 162
    sget-object v14, Lcom/android/inputmethod/research/UploaderService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "upload failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 164
    .local v8, netInputStream:Ljava/io/InputStream;
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 166
    .local v11, reader:Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 167
    sget-object v14, Lcom/android/inputmethod/research/UploaderService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "| "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 178
    .end local v1           #buf:[B
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #netInputStream:Ljava/io/InputStream;
    .end local v9           #numBytesRead:I
    .end local v10           #os:Ljava/io/OutputStream;
    .end local v11           #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v14

    move-object v5, v6

    .end local v6           #fileInputStream:Ljava/io/InputStream;
    .restart local v5       #fileInputStream:Ljava/io/InputStream;
    :goto_6
    if-eqz v5, :cond_3

    .line 180
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 185
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    .line 186
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 178
    :cond_4
    throw v14

    .line 169
    .end local v5           #fileInputStream:Ljava/io/InputStream;
    .restart local v1       #buf:[B
    .restart local v6       #fileInputStream:Ljava/io/InputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #netInputStream:Ljava/io/InputStream;
    .restart local v9       #numBytesRead:I
    .restart local v10       #os:Ljava/io/OutputStream;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :cond_5
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 178
    if-eqz v6, :cond_6

    .line 180
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 185
    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    .line 186
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v5, v6

    .end local v6           #fileInputStream:Ljava/io/InputStream;
    .restart local v5       #fileInputStream:Ljava/io/InputStream;
    move v13, v12

    .line 170
    .restart local v13       #success:I
    goto :goto_4

    .line 172
    .end local v5           #fileInputStream:Ljava/io/InputStream;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #netInputStream:Ljava/io/InputStream;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .end local v13           #success:I
    .restart local v6       #fileInputStream:Ljava/io/InputStream;
    :cond_8
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 173
    const/4 v12, 0x1

    .line 174
    sget-object v14, Lcom/android/inputmethod/research/UploaderService;->TAG:Ljava/lang/String;

    const-string v15, "upload successful"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 178
    if-eqz v6, :cond_9

    .line 180
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 185
    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    .line 186
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-object v5, v6

    .line 188
    .end local v6           #fileInputStream:Ljava/io/InputStream;
    .restart local v5       #fileInputStream:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 181
    .end local v1           #buf:[B
    .end local v9           #numBytesRead:I
    .end local v10           #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    .line 182
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 181
    .local v4, e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 182
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 181
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fileInputStream:Ljava/io/InputStream;
    .restart local v1       #buf:[B
    .restart local v6       #fileInputStream:Ljava/io/InputStream;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #netInputStream:Ljava/io/InputStream;
    .restart local v9       #numBytesRead:I
    .restart local v10       #os:Ljava/io/OutputStream;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    .line 182
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 181
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #netInputStream:Ljava/io/InputStream;
    .end local v11           #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .line 182
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 178
    .end local v1           #buf:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #fileInputStream:Ljava/io/InputStream;
    .end local v9           #numBytesRead:I
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local v5       #fileInputStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    goto :goto_6

    .line 175
    :catch_5
    move-exception v4

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 66
    iput-boolean v4, p0, Lcom/android/inputmethod/research/UploaderService;->mCanUpload:Z

    .line 67
    iput-object v5, p0, Lcom/android/inputmethod/research/UploaderService;->mFilesDir:Ljava/io/File;

    .line 68
    iput-object v5, p0, Lcom/android/inputmethod/research/UploaderService;->mUrl:Ljava/net/URL;

    .line 70
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 71
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const-string v5, "android.permission.INTERNET"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 73
    .local v1, hasPermission:Z
    :goto_0
    if-nez v1, :cond_2

    .line 88
    :cond_0
    :goto_1
    return-void

    .end local v1           #hasPermission:Z
    :cond_1
    move v1, v4

    .line 71
    goto :goto_0

    .line 78
    .restart local v1       #hasPermission:Z
    :cond_2
    const v4, 0x7f0b00c1

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, urlString:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/research/UploaderService;->mFilesDir:Ljava/io/File;

    .line 83
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/inputmethod/research/UploaderService;->mUrl:Ljava/net/URL;

    .line 84
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/inputmethod/research/UploaderService;->mCanUpload:Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    .end local v3           #urlString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 92
    iget-boolean v2, p0, Lcom/android/inputmethod/research/UploaderService;->mCanUpload:Z

    if-nez v2, :cond_0

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 96
    .local v1, isUploadingUnconditionally:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/inputmethod/research/UploaderService;->EXTRA_UPLOAD_UNCONDITIONALLY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    sget-object v2, Lcom/android/inputmethod/research/UploaderService;->EXTRA_UPLOAD_UNCONDITIONALLY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 100
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/inputmethod/research/UploaderService;->doUpload(Z)V

    goto :goto_0
.end method
