.class public final Lzte/com/cn/driverMode/service/cg;
.super Ljava/lang/Thread;


# static fields
.field private static k:[Z


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/net/URL;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Lzte/com/cn/driverMode/service/ch;

.field private volatile h:Z

.field private volatile i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Z

    sput-object v0, Lzte/com/cn/driverMode/service/cg;->k:[Z

    return-void
.end method

.method public constructor <init>(ILzte/com/cn/driverMode/service/ch;Ljava/net/URL;Ljava/io/File;III)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/cg;->f:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/cg;->h:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/cg;->i:Z

    iput-object p3, p0, Lzte/com/cn/driverMode/service/cg;->b:Ljava/net/URL;

    iput-object p4, p0, Lzte/com/cn/driverMode/service/cg;->a:Ljava/io/File;

    iput p5, p0, Lzte/com/cn/driverMode/service/cg;->c:I

    iput-object p2, p0, Lzte/com/cn/driverMode/service/cg;->g:Lzte/com/cn/driverMode/service/ch;

    iput p7, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    iput p6, p0, Lzte/com/cn/driverMode/service/cg;->e:I

    iput p1, p0, Lzte/com/cn/driverMode/service/cg;->j:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new Thread----threadId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/cg;->k:[Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reset exception flags----threadId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/cg;->k:[Z

    add-int/lit8 v1, p7, -0x1

    aput-boolean v2, v0, v1

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static e()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lzte/com/cn/driverMode/service/cg;->k:[Z

    if-eqz v2, :cond_1

    sget-object v2, Lzte/com/cn/driverMode/service/cg;->k:[Z

    array-length v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v4, Lzte/com/cn/driverMode/service/cg;->k:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAllThreadsHasException---ret= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadThread"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/cg;->f:Z

    return v0
.end method

.method public final b()J
    .locals 2

    iget v0, p0, Lzte/com/cn/driverMode/service/cg;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/cg;->h:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/cg;->i:Z

    return-void
.end method

.method public final run()V
    .locals 10

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lzte/com/cn/driverMode/service/cg;->e:I

    iget v1, p0, Lzte/com/cn/driverMode/service/cg;->c:I

    if-ge v0, v1, :cond_3

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/cg;->h:Z

    iput-boolean v2, p0, Lzte/com/cn/driverMode/service/cg;->i:Z

    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/cg;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1388

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Language"

    const-string v2, "zh-CN"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Referer"

    iget-object v2, p0, Lzte/com/cn/driverMode/service/cg;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lzte/com/cn/driverMode/service/cg;->c:I

    iget v2, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Lzte/com/cn/driverMode/service/cg;->e:I

    add-int/2addr v1, v2

    iget v2, p0, Lzte/com/cn/driverMode/service/cg;->c:I

    iget v4, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v4, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :try_start_2
    iget v2, p0, Lzte/com/cn/driverMode/service/cg;->j:I

    mul-int/lit16 v2, v2, 0x400

    new-array v5, v2, [B

    const-string v2, "DownloadThread"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BufferSize:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lzte/com/cn/driverMode/service/cg;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lzte/com/cn/driverMode/service/cg;->a:Ljava/io/File;

    const-string v7, "rwd"

    invoke-direct {v2, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    int-to-long v6, v1

    :try_start_3
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v8, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v3, p0, Lzte/com/cn/driverMode/service/cg;->e:I

    add-int/2addr v3, v1

    iput v3, p0, Lzte/com/cn/driverMode/service/cg;->e:I

    iget-object v3, p0, Lzte/com/cn/driverMode/service/cg;->g:Lzte/com/cn/driverMode/service/ch;

    iget v6, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    iget v7, p0, Lzte/com/cn/driverMode/service/cg;->e:I

    invoke-virtual {v3, v6, v7}, Lzte/com/cn/driverMode/service/ch;->a(II)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/cg;->g:Lzte/com/cn/driverMode/service/ch;

    invoke-virtual {v3, v1}, Lzte/com/cn/driverMode/service/ch;->a(I)V

    iget-boolean v1, p0, Lzte/com/cn/driverMode/service/cg;->h:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/cg;->g:Lzte/com/cn/driverMode/service/ch;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/cg;->g:Lzte/com/cn/driverMode/service/ch;

    invoke-virtual {v3}, Lzte/com/cn/driverMode/service/ch;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lzte/com/cn/driverMode/service/ch;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Thread "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " download pause"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DownloadThread"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    invoke-static {v2}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_4
    iget-boolean v1, p0, Lzte/com/cn/driverMode/service/cg;->i:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lzte/com/cn/driverMode/service/cg;->g:Lzte/com/cn/driverMode/service/ch;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/cg;->g:Lzte/com/cn/driverMode/service/ch;

    invoke-virtual {v3}, Lzte/com/cn/driverMode/service/ch;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lzte/com/cn/driverMode/service/ch;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Thread "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " download cancel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DownloadThread"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    invoke-static {v2}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_7
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Thread "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " download finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DownloadThread"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lzte/com/cn/driverMode/service/cg;->f:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    invoke-static {v2}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_1
    const/4 v4, -0x1

    :try_start_6
    iput v4, p0, Lzte/com/cn/driverMode/service/cg;->e:I

    sget-object v4, Lzte/com/cn/driverMode/service/cg;->k:[Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set exception flag to true----threadId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DownloadThread"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lzte/com/cn/driverMode/service/cg;->k:[Z

    iget v5, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Thread "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lzte/com/cn/driverMode/service/cg;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DownloadThread"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lzte/com/cn/driverMode/service/cg;->e()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lzte/com/cn/driverMode/service/cg;->g:Lzte/com/cn/driverMode/service/ch;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lzte/com/cn/driverMode/service/ch;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    invoke-static {v1}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    invoke-static {v3}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lzte/com/cn/driverMode/service/cg;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v3

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v3, v4

    move-object v9, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_1
.end method
