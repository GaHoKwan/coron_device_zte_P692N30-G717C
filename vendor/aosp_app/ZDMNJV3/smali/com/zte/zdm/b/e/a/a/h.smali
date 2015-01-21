.class public Lcom/zte/zdm/b/e/a/a/h;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/zte/zdm/b/e/a/a/k;

.field private static f:Ljava/lang/String;


# instance fields
.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    sput-object v0, Lcom/zte/zdm/b/e/a/a/h;->d:Ljava/lang/String;

    sput-object v0, Lcom/zte/zdm/b/e/a/a/h;->e:Lcom/zte/zdm/b/e/a/a/k;

    sput-object v0, Lcom/zte/zdm/b/e/a/a/h;->f:Ljava/lang/String;

    const v0, 0x2dc6c0

    sput v0, Lcom/zte/zdm/b/e/a/a/h;->a:I

    const/16 v0, 0xa

    sput v0, Lcom/zte/zdm/b/e/a/a/h;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/zte/zdm/b/e/a/a/h;->g:I

    iput v0, p0, Lcom/zte/zdm/b/e/a/a/h;->h:I

    iput v0, p0, Lcom/zte/zdm/b/e/a/a/h;->i:I

    return-void
.end method

.method private a(Lcom/zte/zdm/b/b/a;)I
    .locals 2

    const-string v0, "retry_times"

    sget v1, Lcom/zte/zdm/b/e/a/a/h;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/zte/zdm/b/e/a/a/h;)I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/a/a/h;->g:I

    return v0
.end method

.method static synthetic a(Lcom/zte/zdm/b/e/a/a/k;)Lcom/zte/zdm/b/e/a/a/k;
    .locals 0

    sput-object p0, Lcom/zte/zdm/b/e/a/a/h;->e:Lcom/zte/zdm/b/e/a/a/k;

    return-object p0
.end method

.method static synthetic a(Lcom/zte/zdm/d/a/k;)Lcom/zte/zdm/b/e/a/a/k;
    .locals 1

    invoke-static {p0}, Lcom/zte/zdm/b/e/a/a/h;->b(Lcom/zte/zdm/d/a/k;)Lcom/zte/zdm/b/e/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/zte/zdm/b/b/a;)I
    .locals 2

    const-string v0, "retry_millionseconds"

    sget v1, Lcom/zte/zdm/b/e/a/a/h;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/b/b/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static b(Lcom/zte/zdm/d/a/k;)Lcom/zte/zdm/b/e/a/a/k;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponserInterface buildResponser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    const-string v1, "application/vnd.oma.dd+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponserInterface buildResponser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/e/a/a/g;

    invoke-direct {v0}, Lcom/zte/zdm/b/e/a/a/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zte/zdm/b/e/a/a/g;->a(Lcom/zte/zdm/d/a/k;)Lcom/zte/zdm/b/e/a/a/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/g;->a()Lcom/zte/zdm/b/e/a/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    const-string v1, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_1

    new-instance v0, Lcom/zte/zdm/b/e/a/a/g;

    invoke-direct {v0}, Lcom/zte/zdm/b/e/a/a/g;-><init>()V

    const-string v1, "ResponserInterface buildResponser application/vnd.wap.wmlc"

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/zte/zdm/b/e/a/a/g;->a(Lcom/zte/zdm/d/a/k;)Lcom/zte/zdm/b/e/a/a/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/g;->a()Lcom/zte/zdm/b/e/a/a/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_2

    new-instance v0, Lcom/zte/zdm/b/e/a/a/a;

    sget-object v1, Lcom/zte/zdm/b/e/a/a/h;->f:Ljava/lang/String;

    sget-object v2, Lcom/zte/zdm/b/e/a/a/h;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/b/e/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/zte/zdm/b/e/a/a/g;

    invoke-direct {v0}, Lcom/zte/zdm/b/e/a/a/g;-><init>()V

    const-string v1, "ResponserInterface buildResponser unknown contentType retry get dd"

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/zte/zdm/b/e/a/a/g;->a(Lcom/zte/zdm/d/a/k;)Lcom/zte/zdm/b/e/a/a/g;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/a/g;->a()Lcom/zte/zdm/b/e/a/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/zte/zdm/b/e/a/a/h;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/zte/zdm/d/a/k;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/b/e/a/a/k;
    .locals 2

    invoke-interface {p1}, Lcom/zte/zdm/d/a/k;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/b/e/a/a/h;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/zte/zdm/b/e/a/a/h;->a(Lcom/zte/zdm/b/b/a;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/e/a/a/h;->h:I

    invoke-direct {p0, p2}, Lcom/zte/zdm/b/e/a/a/h;->b(Lcom/zte/zdm/b/b/a;)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/b/e/a/a/h;->i:I

    iget v0, p0, Lcom/zte/zdm/b/e/a/a/h;->i:I

    iget v1, p0, Lcom/zte/zdm/b/e/a/a/h;->h:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/b/e/a/a/h;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retrytimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/a/h;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; retryLong = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/a/h;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; retryPeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/a/a/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/b/e/a/a/h;->i:I

    invoke-virtual {p0, v0, p1}, Lcom/zte/zdm/b/e/a/a/h;->a(ILcom/zte/zdm/d/a/k;)V

    sget-object v0, Lcom/zte/zdm/b/e/a/a/h;->e:Lcom/zte/zdm/b/e/a/a/k;

    return-object v0
.end method

.method public a(ILcom/zte/zdm/d/a/k;)V
    .locals 5

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/zte/zdm/b/e/a/a/i;

    invoke-direct {v3, p0, p2, v0}, Lcom/zte/zdm/b/e/a/a/i;-><init>(Lcom/zte/zdm/b/e/a/a/h;Lcom/zte/zdm/d/a/k;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v4, Lcom/zte/zdm/b/e/a/a/j;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/zte/zdm/b/e/a/a/j;-><init>(Lcom/zte/zdm/b/e/a/a/h;Ljava/util/concurrent/BlockingQueue;ILjava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    const-string v0, "connect dd success!!!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v0, "no matter dd connection success or not, service.shutdown()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v0, "connect dd FAIL!!!! InterruptedException happen so exit"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/zte/zdm/d/a/e;->M:I

    invoke-interface {p2, v0}, Lcom/zte/zdm/d/a/k;->b(I)V

    new-instance v0, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xd1

    const-string v3, "InterruptedException occurs while opening the connection"

    invoke-direct {v0, v2, v3}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    const-string v2, "no matter dd connection success or not, service.shutdown()"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    const-string v0, "connect dd FAIL!!!! ExecutionException happen so exit"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/zte/zdm/d/a/e;->M:I

    invoke-interface {p2, v0}, Lcom/zte/zdm/d/a/k;->b(I)V

    new-instance v0, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xd1

    const-string v3, "ExecutionException occurs while opening the connection"

    invoke-direct {v0, v2, v3}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/CancellationException;->printStackTrace()V

    const-string v0, "connect dd FAIL!!!! CancellationException happen so exit"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/zte/zdm/d/a/e;->M:I

    invoke-interface {p2, v0}, Lcom/zte/zdm/d/a/k;->b(I)V

    new-instance v0, Lcom/zte/zdm/d/a/a;

    const/16 v2, 0xd1

    const-string v3, "CancellationException occurs while opening the connection"

    invoke-direct {v0, v2, v3}, Lcom/zte/zdm/d/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    return-void
.end method
