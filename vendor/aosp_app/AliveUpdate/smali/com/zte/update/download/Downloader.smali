.class public Lcom/zte/update/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# static fields
.field private static final HTTP_CONN_TIMEOUT:I = 0x1388

.field private static final HTTP_GET_REQ_METHOD:Ljava/lang/String; = "GET"

.field private static final HTTP_READ_TIMEOUT:I = 0x1388

.field private static final HTTP_REQ_PROP_IMEI:Ljava/lang/String; = "imei"

.field private static final HTTP_REQ_PROP_RANGE:Ljava/lang/String; = "Range"

.field private static final SEPERATOR:Ljava/lang/String; = "-"

.field private static final STR_BUF_INIT_VAL:Ljava/lang/String; = "bytes="

.field private static final nRetry:I = 0xa


# instance fields
.field protected volatile cancel:Z

.field private filename:Ljava/lang/String;

.field protected info:Lcom/zte/update/data/DownloadInfo;

.field protected volatile isFinish:Z

.field private pathPrefix:Ljava/lang/String;

.field private pathname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/update/data/DownloadInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/zte/update/download/Downloader;->isFinish:Z

    .line 37
    iput-boolean v1, p0, Lcom/zte/update/download/Downloader;->cancel:Z

    .line 38
    iput-object v0, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    .line 48
    iput-object v0, p0, Lcom/zte/update/download/Downloader;->pathPrefix:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/zte/update/download/Downloader;->filename:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/zte/update/download/Downloader;->pathname:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    .line 54
    return-void
.end method

.method private configConnection(Ljava/lang/String;Ljava/lang/String;J)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter "url"
    .parameter "method"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1388

    const/4 v2, 0x1

    .line 162
    invoke-virtual {p0, p1}, Lcom/zte/update/download/Downloader;->convertURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 163
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 164
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 165
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 167
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 168
    const-string v1, "imei"

    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    .line 172
    const-string v1, "Range"

    invoke-virtual {p0, p3, p4}, Lcom/zte/update/download/Downloader;->getDownloadRange(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-object v0
.end method

.method private download(Ljava/io/RandomAccessFile;[B)V
    .locals 8
    .parameter "randomAccessFile"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/zte/update/download/Downloader;->getFileInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 123
    .local v0, ins:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, length:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 124
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/zte/update/download/Downloader;->cancel:Z

    if-ne v4, v5, :cond_0

    .line 135
    :goto_1
    return-void

    .line 127
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 131
    iget-object v4, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v4}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v4

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 132
    .local v2, offset:J
    iget-object v4, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v2, v3}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    goto :goto_0

    .line 134
    .end local v2           #offset:J
    :cond_1
    invoke-static {v0}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method private getFileInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getDownloadUrlstr()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v3}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/zte/update/download/Downloader;->buildGetRequest(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 139
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 142
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 143
    .local v1, ins:Ljava/io/InputStream;
    return-object v1
.end method


# virtual methods
.method protected buildGetRequest(Ljava/lang/String;J)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "url"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v1, "GET"

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/zte/update/download/Downloader;->configConnection(Ljava/lang/String;Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 151
    .local v0, connection:Ljava/net/HttpURLConnection;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "range="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "imei"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http connection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method protected checkDownloadCompelete()Z
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v0}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected close(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected convertURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .parameter "urlStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p1}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, buildurl:Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, url:Ljava/net/URL;
    return-object v1
.end method

.method protected downloadFile(Ljava/io/RandomAccessFile;)V
    .locals 7
    .parameter "randomAccessFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const/16 v3, 0x2800

    new-array v0, v3, [B

    .line 94
    .local v0, buffer:[B
    const-string v3, "before buildGetRequest"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x0

    .local v2, retry:I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 99
    :try_start_0
    const-string v3, "downloadFile nRetry =10"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v4, 0xd

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/zte/update/download/Downloader;->download(Ljava/io/RandomAccessFile;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_1
    const-string v3, "before getInputStream"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, ioExp1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFile exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-boolean v3, p0, Lcom/zte/update/download/Downloader;->cancel:Z

    if-eqz v3, :cond_1

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFile cancel ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/zte/update/download/Downloader;->cancel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getDownloadRange(J)Ljava/lang/String;
    .locals 2
    .parameter "offset"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 180
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/zte/update/download/Downloader;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPathPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/update/download/Downloader;->pathPrefix:Ljava/lang/String;

    return-object v0
.end method

.method protected restart()V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/zte/update/download/Downloader;->cancel:Z

    if-ne v0, v1, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/update/download/Downloader;->cancel:Z

    .line 204
    :cond_0
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/zte/update/download/Downloader;->filename:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setPathPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "pathPrefix"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/zte/update/download/Downloader;->pathPrefix:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    const/16 v2, 0xd

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/zte/update/data/DownloadInfo;->change(IJ)V

    .line 59
    iget-object v1, p0, Lcom/zte/update/download/Downloader;->filename:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadfileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/update/download/Downloader;->filename:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadDir()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/update/download/Downloader;->filename:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 63
    :cond_1
    const-string v1, "The path name is not completed"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getDownloadDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/download/Downloader;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/update/download/Downloader;->pathname:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/zte/update/download/Downloader;->pathname:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/update/data/storage/AndroidFileStorage;->getStorageAccessFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    .line 69
    .local v0, rafile:Ljava/io/RandomAccessFile;
    iget-object v1, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 70
    iget-object v1, p0, Lcom/zte/update/download/Downloader;->info:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 72
    const-string v1, "before dwonloadapk"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/zte/update/download/Downloader;->downloadFile(Ljava/io/RandomAccessFile;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0
.end method

.method protected stop()V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/update/download/Downloader;->cancel:Z

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop canel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/update/download/Downloader;->cancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    return-void
.end method
