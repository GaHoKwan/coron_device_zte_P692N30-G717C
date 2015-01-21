.class public Lcom/zte/zdm/b/e/a/b/g;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x5

.field private static final c:Ljava/lang/String; = "update.zip"

.field private static final d:I = 0x7530

.field private static final e:I = 0xce

.field private static final f:I = 0xc8

.field private static final g:I = 0x6e


# instance fields
.field b:Ljava/net/URL;

.field private h:J

.field private volatile i:I

.field private j:I

.field private k:Ljava/util/Map;

.field private l:Z

.field private m:I

.field private n:Ljava/io/File;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Lcom/zte/zdm/g/d/b;

.field private s:I

.field private t:I

.field private u:Ljava/io/File;

.field private v:I

.field private volatile w:Ljava/util/List;

.field private x:Ljava/util/concurrent/ExecutorService;

.field private y:Z


# direct methods
.method public constructor <init>(Lcom/zte/zdm/g/d/b;Ljava/lang/String;III)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/zte/zdm/b/e/a/b/g;->h:J

    iput v2, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    iput v2, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/zte/zdm/b/e/a/b/g;->l:Z

    const/16 v0, 0x6e

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->m:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->w:Ljava/util/List;

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/b/g;->r:Lcom/zte/zdm/g/d/b;

    iput-object p2, p0, Lcom/zte/zdm/b/e/a/b/g;->q:Ljava/lang/String;

    iput p3, p0, Lcom/zte/zdm/b/e/a/b/g;->s:I

    iput p4, p0, Lcom/zte/zdm/b/e/a/b/g;->t:I

    invoke-interface {p1}, Lcom/zte/zdm/g/d/b;->c()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->u:Ljava/io/File;

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->u()V

    iput p5, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    return-void
.end method

.method private A()V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/e/a/b/g;->y:Z

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    if-ge v1, v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performDownload thread ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] InterruptedException"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performDownload thread ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] ExecutionException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/b/g;->b()Z

    iput-boolean v2, p0, Lcom/zte/zdm/b/e/a/b/g;->y:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/e/a/b/g;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDownload over shutdown!  this.downloadSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->x:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/a/b/g;->y:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "download failed!!"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performDownload thread ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] CancellationException"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method private B()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFileServiceData() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->r:Lcom/zte/zdm/g/d/b;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->q:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zte/zdm/g/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/b/e/a/b/f;)V
    .locals 2

    :cond_0
    :goto_0
    const-wide/16 v0, 0x44c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/e/a/b/f;->a(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Listener interrupted exception"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/a/b/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a/b/g;->a(Lcom/zte/zdm/b/e/a/b/f;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/a/i;Ljava/net/HttpURLConnection;)V
    .locals 3

    const/16 v0, 0x7530

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v1, "zh-CN"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Referer"

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->q:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "http.proxyHost"

    invoke-virtual {p1}, Lcom/zte/zdm/d/a/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "http.proxyPort"

    invoke-virtual {p1}, Lcom/zte/zdm/d/a/i;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "dl.meta:print"

    invoke-static {v0, p0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/zte/zdm/b/e/a/b/f;ILcom/zte/zdm/d/a/i;)I
    .locals 2

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->z()V

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a/b/g;->b(Lcom/zte/zdm/b/e/a/b/f;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->A()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/b/g;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadSize["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = fileSize["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], download complete!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/e/a/b/f;->a(I)V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->B()V

    :cond_0
    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    return v0
.end method

.method private b(J)V
    .locals 1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/zte/zdm/b/e/a/b/f;)V
    .locals 2

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/e/a/b/f;->b(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/zte/zdm/b/e/a/b/h;

    invoke-direct {v1, p0, p1}, Lcom/zte/zdm/b/e/a/b/h;-><init>(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/a/b/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;)V
    .locals 4

    invoke-static {p0}, Lcom/zte/zdm/b/e/a/b/g;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/b/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delete() OK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delete() Failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/net/HttpURLConnection;)I
    .locals 4

    const-string v0, "connectImpl do it!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x6e

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {p1}, Lcom/zte/zdm/b/e/a/b/g;->b(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/a/b/g;->a(I)V

    return v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->u:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->u:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->u:Ljava/io/File;

    const-string v2, "update.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    return-void
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete ret is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 3

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method private x()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveFile path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/b/g;->a()V

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->o:I

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/g;->o:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->p:I

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->w()V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->B()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->r:Lcom/zte/zdm/g/d/b;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/zte/zdm/g/d/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private declared-synchronized y()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized z()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->y()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lcom/zte/zdm/b/e/a/b/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, p0, v1, v0}, Lcom/zte/zdm/b/e/a/b/c;-><init>(Lcom/zte/zdm/b/e/a/b/g;II)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->x:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/e/a/b/f;ILcom/zte/zdm/d/a/i;)I
    .locals 7

    iput p2, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->b:Ljava/net/URL;

    new-instance v0, Lcom/zte/zdm/b/e/a/b/b;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/zte/zdm/b/e/a/b/b;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->x:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->x()V

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zdm/b/e/a/b/g;->b(Lcom/zte/zdm/b/e/a/b/f;ILcom/zte/zdm/d/a/i;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    return v0
.end method

.method a()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->r:Lcom/zte/zdm/g/d/b;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/g;->q:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/zte/zdm/g/d/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    if-ne v1, v2, :cond_2

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    if-ge v1, v0, :cond_0

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already download length is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/b/g;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    move v1, v0

    :goto_1
    iget v2, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/e/a/b/g;->m:I

    return-void
.end method

.method protected declared-synchronized a(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->r:Lcom/zte/zdm/g/d/b;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->q:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/zte/zdm/g/d/b;->a(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zte/zdm/b/e/a/b/g;->h:J

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;ILcom/zte/zdm/d/a/i;)V
    .locals 3

    invoke-direct {p0, p3, p1}, Lcom/zte/zdm/b/e/a/b/g;->a(Lcom/zte/zdm/d/a/i;Ljava/net/HttpURLConnection;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->s:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a/b/g;->c(Ljava/net/HttpURLConnection;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    const/16 v2, 0xce

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    if-gtz v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->v()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "connect to server failed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    iget-wide v1, p0, Lcom/zte/zdm/b/e/a/b/g;->h:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->v()V

    const-string v0, "verifyUrlavailable  InterruptedException"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/b/e/a/b/g;->l:Z

    return-void
.end method

.method protected declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "userCancelDownloadTasks"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const-string v2, "future.cancel!"

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return v3
.end method

.method c()V
    .locals 1

    const-string v0, "timeOutCancelDownloadTasks"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/e/a/b/g;->y:Z

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/b/g;->b()Z

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "handle User Cancel!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/e/a/b/g;->l:Z

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/b/g;->h()Z

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->m:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/a/b/g;->l:Z

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    return v0
.end method

.method public h()Z
    .locals 2

    const-string v0, "remove Save File"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/g;->B()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSaveFile() file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/a/b/g;->b(Z)V

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/b/e/a/b/g;->b(J)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method i()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->b:Ljava/net/URL;

    return-object v0
.end method

.method public declared-synchronized j()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method k()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->k:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method l()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->s:I

    return v0
.end method

.method m()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->t:I

    return v0
.end method

.method n()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->p:I

    return v0
.end method

.method o()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->o:I

    return v0
.end method

.method p()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->v:I

    return v0
.end method

.method q()I
    .locals 1

    const/16 v0, 0x7530

    return v0
.end method

.method r()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->n:Ljava/io/File;

    return-object v0
.end method

.method s()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/g;->x:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public t()Z
    .locals 2

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    if-ne v0, v1, :cond_0

    const-string v0, "return true: fileSize != 0 && downloadSize != 0 && fileSize == downloadSize"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "return false: else"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/g;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
