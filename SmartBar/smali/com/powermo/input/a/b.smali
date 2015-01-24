.class Lcom/powermo/input/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Lcom/powermo/input/a/d;

.field private final d:Lcom/powermo/input/a/f;

.field private final e:Lcom/powermo/input/a/e;

.field private f:Ljava/net/Socket;

.field private g:Ljava/io/OutputStream;

.field private h:Z

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:Ljava/net/SocketAddress;

.field private final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "InputSinkConnection"

    invoke-static {v0}, Lcom/powermo/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/input/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/input/a/b;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    iput-object v1, p0, Lcom/powermo/input/a/b;->g:Ljava/io/OutputStream;

    iput-boolean v4, p0, Lcom/powermo/input/a/b;->h:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/powermo/input/a/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/powermo/input/a/b;->n:[B

    iput-object p1, p0, Lcom/powermo/input/a/b;->i:Ljava/lang/String;

    iput p2, p0, Lcom/powermo/input/a/b;->j:I

    iput p3, p0, Lcom/powermo/input/a/b;->k:I

    new-instance v0, Lcom/powermo/input/a/d;

    invoke-direct {v0, p0, v1}, Lcom/powermo/input/a/d;-><init>(Lcom/powermo/input/a/b;Lcom/powermo/input/a/c;)V

    iput-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/powermo/input/a/b;->i:Ljava/lang/String;

    iget v2, p0, Lcom/powermo/input/a/b;->j:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/powermo/input/a/b;->l:Ljava/net/SocketAddress;

    new-instance v0, Lcom/powermo/input/a/f;

    invoke-direct {v0, p0}, Lcom/powermo/input/a/f;-><init>(Lcom/powermo/input/a/b;)V

    iput-object v0, p0, Lcom/powermo/input/a/b;->d:Lcom/powermo/input/a/f;

    new-instance v0, Lcom/powermo/input/a/e;

    invoke-direct {v0, p0}, Lcom/powermo/input/a/e;-><init>(Lcom/powermo/input/a/b;)V

    iput-object v0, p0, Lcom/powermo/input/a/b;->e:Lcom/powermo/input/a/e;

    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    invoke-virtual {v0}, Lcom/powermo/input/a/d;->start()V

    :try_start_0
    iget-object v1, p0, Lcom/powermo/input/a/b;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/powermo/input/a/b;->a:Ljava/lang/String;

    const-string v2, "Started Waiting for Poster"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/input/a/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    sget-object v0, Lcom/powermo/input/a/b;->a:Ljava/lang/String;

    const-string v2, "Done Waiting for Poster"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0, v4}, Lcom/powermo/input/a/b;->a(I)V

    invoke-direct {p0}, Lcom/powermo/input/a/b;->b()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/powermo/input/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/powermo/input/a/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/powermo/input/a/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    iget-object v0, v0, Lcom/powermo/input/a/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/input/a/b;->d:Lcom/powermo/input/a/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    iget-object v0, v0, Lcom/powermo/input/a/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/input/a/b;->d:Lcom/powermo/input/a/f;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(IZ)V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/powermo/input/a/b;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/input/a/b;->g:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/powermo/input/a/b;->n:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/powermo/input/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket write error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/powermo/input/a/b;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/powermo/input/a/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/input/a/b;->a(I)V

    return-void
.end method

.method private a(Z)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/powermo/input/a/b;->b()V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/powermo/input/a/b;->h:Z

    if-nez v2, :cond_1

    if-lez v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    iget-object v2, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    iget-object v3, p0, Lcom/powermo/input/a/b;->l:Ljava/net/SocketAddress;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v2, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/input/a/b;->g:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v2, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v2, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTrafficClass(I)V

    iget-object v2, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/net/Socket;->setPerformancePreferences(III)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/powermo/input/a/b;->h:Z

    const/16 v2, 0x1388

    invoke-direct {p0, v2}, Lcom/powermo/input/a/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/powermo/input/a/b;->c()V

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    sget-object v3, Lcom/powermo/input/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/powermo/input/a/b;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/powermo/input/a/b;)I
    .locals 1

    iget v0, p0, Lcom/powermo/input/a/b;->k:I

    return v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    iget-object v0, v0, Lcom/powermo/input/a/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/input/a/b;->e:Lcom/powermo/input/a/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    iget-object v0, v0, Lcom/powermo/input/a/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/input/a/b;->e:Lcom/powermo/input/a/e;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/powermo/input/a/b;)Lcom/powermo/input/a/f;
    .locals 1

    iget-object v0, p0, Lcom/powermo/input/a/b;->d:Lcom/powermo/input/a/f;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/powermo/input/a/b;->h:Z

    iget-object v0, p0, Lcom/powermo/input/a/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :try_start_0
    iget-object v0, p0, Lcom/powermo/input/a/b;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/input/a/b;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/input/a/b;->g:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/input/a/b;->f:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/powermo/input/a/b;)Lcom/powermo/input/a/d;
    .locals 1

    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    return-object v0
.end method

.method static synthetic e(Lcom/powermo/input/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/input/a/b;->c()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    iget-object v0, v0, Lcom/powermo/input/a/d;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :try_start_0
    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    invoke-virtual {v0}, Lcom/powermo/input/a/d;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/powermo/input/a/b;->c()V

    sget-object v0, Lcom/powermo/input/a/b;->a:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lcom/powermo/input/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/input/a/b;->c:Lcom/powermo/input/a/d;

    iget-object v0, v0, Lcom/powermo/input/a/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Lcom/powermo/input/a/a;Z)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/input/a/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powermo/input/a/a;->b(I)V

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/powermo/input/a/b;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/input/a/b;->g:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lcom/powermo/input/a/a;->b()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/powermo/input/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket write error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/powermo/input/a/b;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(Lcom/powermo/input/a/a;Z)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/powermo/input/a/a;->b()[B

    move-result-object v3

    array-length v2, v3

    add-int/2addr v2, v0

    iget-object v4, p0, Lcom/powermo/input/a/b;->n:[B

    array-length v4, v4

    if-lt v2, v4, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/powermo/input/a/b;->a(IZ)V

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/powermo/input/a/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/powermo/input/a/a;->b(I)V

    move v2, v0

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/powermo/input/a/b;->n:[B

    aget-byte v5, v3, v0

    aput-byte v5, v4, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/powermo/input/a/a;->h:Lcom/powermo/input/a/a;

    invoke-virtual {p1}, Lcom/powermo/input/a/a;->d()V

    move-object p1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    invoke-direct {p0, v0, p2}, Lcom/powermo/input/a/b;->a(IZ)V

    :cond_3
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/input/a/b;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
