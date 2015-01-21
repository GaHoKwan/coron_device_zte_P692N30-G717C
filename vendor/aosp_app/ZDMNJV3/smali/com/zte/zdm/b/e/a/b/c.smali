.class public Lcom/zte/zdm/b/e/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/a/b/a;


# static fields
.field private static final f:I = 0x133

.field private static p:I

.field private static q:Ljava/lang/String;


# instance fields
.field a:I

.field volatile b:Z

.field c:Ljava/util/concurrent/BlockingQueue;

.field d:Ljava/lang/Integer;

.field private e:I

.field private g:Lcom/zte/zdm/b/e/a/b/g;

.field private h:Ljava/net/HttpURLConnection;

.field private i:Ljava/net/URL;

.field private volatile j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/zte/zdm/b/e/a/b/c;->p:I

    const-string v0, "application/octet-stream"

    sput-object v0, Lcom/zte/zdm/b/e/a/b/c;->q:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/zte/zdm/b/e/a/b/g;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/c;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->r:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->d:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    iput p2, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    iput p3, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->i()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->i:Ljava/net/URL;

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->l()I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/c;->m:I

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->m()I

    move-result v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->m:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/c;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry_wait_time ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryTimes ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/b/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/b/e/a/b/c;)Lcom/zte/zdm/b/e/a/b/g;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a/b/c;->b(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Interrupted Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 7

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/high16 v0, 0x1

    new-array v0, v0, [B

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/a/b/g;->r()Ljava/io/File;

    move-result-object v3

    const-string v4, "rwd"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/c;->j()V

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v4}, Lcom/zte/zdm/b/e/a/b/g;->o()I

    move-result v4

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-boolean v4, p0, Lcom/zte/zdm/b/e/a/b/c;->b:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/zte/zdm/b/e/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    iget-object v5, p0, Lcom/zte/zdm/b/e/a/b/c;->d:Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v4, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    iget-object v4, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    iget v5, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    iget v6, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    invoke-virtual {v4, v5, v6}, Lcom/zte/zdm/b/e/a/b/g;->a(II)V

    iget-object v4, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v4, v3}, Lcom/zte/zdm/b/e/a/b/g;->b(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zte/zdm/b/e/a/b/c;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v2}, Lcom/zte/zdm/b/e/a/b/c;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/zte/zdm/b/e/a/b/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-direct {p0, v2}, Lcom/zte/zdm/b/e/a/b/c;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/zte/zdm/b/e/a/b/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/b/e/a/b/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a/b/c;->a(I)V

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout! so kill fileDownloader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->c()V

    return-void
.end method

.method private g()Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/a/b/c;->b:Z

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "doDownload begain!"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->i:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/c;->i()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/c;->h()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content type is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/b/e/a/b/c;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentType : ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is not correct "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/b/e/a/b/g;->a(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getResponseCode() code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x133

    if-le v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " start download from position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/c;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/c;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/c;->k:I

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/c;->l:I

    invoke-direct {p0, v0, v2}, Lcom/zte/zdm/b/e/a/b/c;->a(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doDownload failed catch IOException!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doDownload failed catch IOException!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No space"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "http.getHeaderFields()==null, then return"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_3

    iget-object v3, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/zdm/b/e/a/b/c;->r:Ljava/lang/String;

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header is: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/a/b/g;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/a/b/g;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    const-string v2, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Language"

    const-string v2, "zh-CN"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    const-string v1, "Referer"

    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/c;->i:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->s()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/b/e/a/b/d;

    invoke-direct {v1, p0}, Lcom/zte/zdm/b/e/a/b/d;-><init>(Lcom/zte/zdm/b/e/a/b/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/e/a/b/c;->b:Z

    return-void
.end method

.method public b()Ljava/util/concurrent/RunnableFuture;
    .locals 1

    new-instance v0, Lcom/zte/zdm/b/e/a/b/e;

    invoke-direct {v0, p0, p0}, Lcom/zte/zdm/b/e/a/b/e;-><init>(Lcom/zte/zdm/b/e/a/b/c;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final c()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->p()I

    move-result v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/zdm/b/e/a/b/c;->o:Z

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->o()I

    move-result v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/b/e/a/b/c;->k:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tNumber ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/a/b/g;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/a/b/c;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->o()I

    move-result v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/zte/zdm/b/e/a/b/c;->l:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPos ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endPos ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/b/c;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public call()Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/a/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v5

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/zte/zdm/b/e/a/b/c;->m:I

    if-ge v0, v2, :cond_2

    iput-boolean v1, p0, Lcom/zte/zdm/b/e/a/b/c;->n:Z

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a/b/c;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/c;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " download failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is to resetRetryTimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/zdm/b/e/a/b/c;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/zte/zdm/b/e/a/b/c;->n:Z

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/zte/zdm/b/e/a/b/c;->n:Z

    move v0, v1

    :cond_4
    iget-object v2, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/a/b/g;->o()I

    move-result v2

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zte/zdm/b/e/a/b/c;->k:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \'s DownloadTask will start in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] milllSeconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryTimes i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/zte/zdm/b/e/a/b/c;->e:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method d()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/zte/zdm/b/e/a/b/c;->o:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    iget-object v3, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/a/b/g;->o()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/zte/zdm/b/e/a/b/c;->j:I

    iget-object v3, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/a/b/g;->g()I

    move-result v3

    iget-object v4, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v4}, Lcom/zte/zdm/b/e/a/b/g;->p()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/zte/zdm/b/e/a/b/c;->g:Lcom/zte/zdm/b/e/a/b/g;

    invoke-virtual {v5}, Lcom/zte/zdm/b/e/a/b/g;->o()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/c;->k:I

    return v0
.end method

.method f()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/b/c;->l:I

    return v0
.end method
