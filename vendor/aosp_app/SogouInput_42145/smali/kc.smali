.class final Lkc;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private final a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

.field private final a:Ljava/util/Hashtable;

.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lq;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-object p1, p0, Lkc;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    .line 48
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lkc;->a:Ljava/util/concurrent/CountDownLatch;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lkc;->a:Ljava/util/Hashtable;

    .line 54
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 56
    sget-object v0, Lka;->b:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 57
    sget-object v0, Lka;->c:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 58
    sget-object v0, Lka;->d:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_1
    iget-object v0, p0, Lkc;->a:Ljava/util/Hashtable;

    sget-object v1, Le;->c:Le;

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    if-eqz p3, :cond_2

    .line 63
    iget-object v0, p0, Lkc;->a:Ljava/util/Hashtable;

    sget-object v1, Le;->e:Le;

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    iget-object v0, p0, Lkc;->a:Ljava/util/Hashtable;

    sget-object v1, Le;->h:Le;

    invoke-virtual {v0, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lkc;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iget-object v0, p0, Lkc;->a:Landroid/os/Handler;

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 80
    new-instance v0, Lkb;

    iget-object v1, p0, Lkc;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    iget-object v2, p0, Lkc;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lkb;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;Ljava/util/Hashtable;)V

    iput-object v0, p0, Lkc;->a:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Lkc;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 83
    return-void
.end method
