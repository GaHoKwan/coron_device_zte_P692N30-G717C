.class public Lcom/hf/download/Download;
.super Ljava/lang/Object;
.source "Download.java"


# static fields
.field private static final CONNECTION_TIME_OUT:I = 0x7530

.field public static final DOWNLOAD_FAILED:Ljava/lang/String; = "failed"

.field public static final DOWNLOAD_STOP:Ljava/lang/String; = "stop"

.field private static final PTAH:Ljava/lang/String; = "/weather/apk/"

.field private static mInstance:Lcom/hf/download/Download;


# instance fields
.field private filePath:Ljava/lang/String;

.field private isLoading:Z

.field private mDownloadSize:I

.field private mFileSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/hf/download/Download;->mInstance:Lcom/hf/download/Download;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/download/Download;->isLoading:Z

    .line 30
    return-void
.end method

.method private download(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 18
    .parameter "context"
    .parameter "urlStr"
    .parameter "dir"

    .prologue
    .line 68
    const-string v4, ""

    .line 69
    .local v4, fileName:Ljava/lang/String;
    const-string v9, ""

    .line 71
    .local v9, path:Ljava/lang/String;
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput v14, v0, Lcom/hf/download/Download;->mDownloadSize:I

    .line 72
    const-string v14, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, http:Ljava/net/HttpURLConnection;
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, downUrl:Ljava/net/URL;
    invoke-static/range {p1 .. p1}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v7

    .line 77
    .local v7, netType:I
    const/4 v14, 0x1

    if-ne v7, v14, :cond_5

    .line 78
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, proxyHost:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 80
    new-instance v10, Ljava/net/Proxy;

    sget-object v14, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v15, Ljava/net/InetSocketAddress;

    .line 81
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 80
    invoke-direct {v10, v14, v15}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 82
    .local v10, proxy:Ljava/net/Proxy;
    invoke-virtual {v2, v10}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v5

    .end local v5           #http:Ljava/net/HttpURLConnection;
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 89
    .end local v10           #proxy:Ljava/net/Proxy;
    .end local v11           #proxyHost:Ljava/lang/String;
    .restart local v5       #http:Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 90
    const/16 v14, 0x7530

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 91
    const/16 v14, 0x7530

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 92
    const-string v14, "GET"

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 95
    const-string v14, "Referer"

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v14, "Charset"

    const-string v15, "UTF-8"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 100
    .local v6, inStream:Ljava/io/InputStream;
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 101
    .local v1, buffer:[B
    const/4 v8, 0x0

    .line 102
    .local v8, offset:I
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v12, saveFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 105
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 107
    :cond_0
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v14, "rwd"

    invoke-direct {v13, v12, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v13, threadfile:Ljava/io/RandomAccessFile;
    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 109
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/hf/download/Download;->isLoading:Z

    .line 110
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/hf/download/Download;->isLoading:Z

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v6, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v14, -0x1

    if-ne v8, v14, :cond_6

    .line 119
    :cond_2
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 120
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 121
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/hf/download/Download;->isLoading:Z

    if-eqz v14, :cond_7

    .line 122
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/hf/download/Download;->filePath:Ljava/lang/String;

    .line 132
    .end local v1           #buffer:[B
    .end local v2           #downUrl:Ljava/net/URL;
    .end local v5           #http:Ljava/net/HttpURLConnection;
    .end local v6           #inStream:Ljava/io/InputStream;
    .end local v7           #netType:I
    .end local v8           #offset:I
    .end local v12           #saveFile:Ljava/io/File;
    .end local v13           #threadfile:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_2
    return-void

    .line 84
    .restart local v2       #downUrl:Ljava/net/URL;
    .restart local v5       #http:Ljava/net/HttpURLConnection;
    .restart local v7       #netType:I
    .restart local v11       #proxyHost:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .end local v5           #http:Ljava/net/HttpURLConnection;
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 86
    .restart local v5       #http:Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 87
    .end local v11           #proxyHost:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .end local v5           #http:Ljava/net/HttpURLConnection;
    check-cast v5, Ljava/net/HttpURLConnection;

    .restart local v5       #http:Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 111
    .restart local v1       #buffer:[B
    .restart local v6       #inStream:Ljava/io/InputStream;
    .restart local v8       #offset:I
    .restart local v12       #saveFile:Ljava/io/File;
    .restart local v13       #threadfile:Ljava/io/RandomAccessFile;
    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 112
    move-object/from16 v0, p0

    iget v14, v0, Lcom/hf/download/Download;->mDownloadSize:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/hf/download/Download;->mDownloadSize:I

    .line 114
    sget-boolean v14, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v14, :cond_1

    .line 115
    const-string v14, "download"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "mDownloadSize = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/download/Download;->mDownloadSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v1           #buffer:[B
    .end local v2           #downUrl:Ljava/net/URL;
    .end local v5           #http:Ljava/net/HttpURLConnection;
    .end local v6           #inStream:Ljava/io/InputStream;
    .end local v7           #netType:I
    .end local v8           #offset:I
    .end local v12           #saveFile:Ljava/io/File;
    .end local v13           #threadfile:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v3

    .line 127
    .local v3, e:Ljava/lang/Exception;
    sget-boolean v14, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v14, :cond_3

    .line 128
    const-string v14, "Exception"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 124
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #buffer:[B
    .restart local v2       #downUrl:Ljava/net/URL;
    .restart local v5       #http:Ljava/net/HttpURLConnection;
    .restart local v6       #inStream:Ljava/io/InputStream;
    .restart local v7       #netType:I
    .restart local v8       #offset:I
    .restart local v12       #saveFile:Ljava/io/File;
    .restart local v13       #threadfile:Ljava/io/RandomAccessFile;
    :cond_7
    :try_start_1
    const-string v14, "stop"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/hf/download/Download;->filePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/hf/download/Download;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/hf/download/Download;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/download/Download;->mInstance:Lcom/hf/download/Download;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/hf/download/Download;

    invoke-direct {v0}, Lcom/hf/download/Download;-><init>()V

    sput-object v0, Lcom/hf/download/Download;->mInstance:Lcom/hf/download/Download;

    .line 35
    :cond_0
    sget-object v0, Lcom/hf/download/Download;->mInstance:Lcom/hf/download/Download;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/hf/download/Download;->isLoading:Z

    .line 136
    iput v0, p0, Lcom/hf/download/Download;->mDownloadSize:I

    .line 137
    iput v0, p0, Lcom/hf/download/Download;->mFileSize:I

    .line 138
    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/hf/download/Download;->isLoading:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/hf/download/Download;->init()V

    .line 144
    :cond_0
    return-void
.end method

.method public down(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 53
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/weather/apk/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 56
    :cond_0
    const-string v2, "failed"

    iput-object v2, p0, Lcom/hf/download/Download;->filePath:Ljava/lang/String;

    .line 57
    invoke-static {p1, p2}, Lcom/hf/download/DownloadUtils;->getFileSizeWithURL(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/hf/download/Download;->mFileSize:I

    .line 59
    iget v2, p0, Lcom/hf/download/Download;->mFileSize:I

    if-gtz v2, :cond_2

    .line 65
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 62
    .restart local v0       #dir:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/hf/download/Download;->download(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 63
    invoke-direct {p0}, Lcom/hf/download/Download;->init()V

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hf/download/Download;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/hf/download/Download;->mFileSize:I

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/hf/download/Download;->mDownloadSize:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/hf/download/Download;->mFileSize:I

    div-int/2addr v0, v1

    goto :goto_0
.end method
