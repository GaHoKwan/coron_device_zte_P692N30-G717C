.class public final Lcom/autonavi/xmgd/c/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/autonavi/xmgd/c/a;

.field private static d:I


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[I

.field private final f:[I

.field private final g:[I

.field private final h:[I

.field private final i:[I

.field private final j:[Ljava/lang/String;

.field private final k:[[B

.field private l:I

.field private m:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private n:Landroid/os/Handler;

.field private final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/c/a;->b:Lcom/autonavi/xmgd/c/a;

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/xmgd/c/a;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->c:Ljava/util/ArrayList;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->f:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->h:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->i:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->j:[Ljava/lang/String;

    new-array v0, v1, [[B

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->k:[[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/c/a;->l:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->o:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->p:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/autonavi/xmgd/c/a;->d()V

    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/c/a;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/c/a;->b:Lcom/autonavi/xmgd/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/c/a;

    invoke-direct {v0}, Lcom/autonavi/xmgd/c/a;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/c/a;->b:Lcom/autonavi/xmgd/c/a;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/c/a;->b:Lcom/autonavi/xmgd/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/c/a;)Ljava/net/Proxy;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/c/a;->c()Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method private a(III)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_1

    invoke-direct {p0, p3}, Lcom/autonavi/xmgd/c/a;->b(I)Lcom/autonavi/xmgd/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/xmgd/c/e;->onHttpRequestByteReceived(III)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->o:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v2, v3}, Lcom/autonavi/xmgd/c/a;->a(III)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xmgd/c/d;

    iget-object v2, v0, Lcom/autonavi/xmgd/c/d;->a:[B

    iget v0, v0, Lcom/autonavi/xmgd/c/d;->b:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/autonavi/xmgd/c/a;->a([BIII)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xmgd/c/d;

    iget-object v2, v0, Lcom/autonavi/xmgd/c/d;->a:[B

    iget v0, v0, Lcom/autonavi/xmgd/c/d;->b:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/autonavi/xmgd/c/a;->b([BIII)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/SocketTimeoutException;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v2, v3}, Lcom/autonavi/xmgd/c/a;->a(Ljava/net/SocketTimeoutException;II)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const-string v4, "[26]"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/Exception;IILjava/lang/String;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const-string v4, "[27]"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/Exception;IILjava/lang/String;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const-string v4, "[28]"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/Exception;IILjava/lang/String;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const-string v4, "[29]"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/Exception;IILjava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/autonavi/xmgd/c/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/c/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    invoke-direct {p0, p3}, Lcom/autonavi/xmgd/c/a;->b(I)Lcom/autonavi/xmgd/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/c/e;->onHttpException(Ljava/lang/Exception;IILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/c/a;->f()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/net/SocketTimeoutException;II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    invoke-direct {p0, p3}, Lcom/autonavi/xmgd/c/a;->b(I)Lcom/autonavi/xmgd/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/autonavi/xmgd/c/e;->onHttpTimeOut(Ljava/lang/String;II)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/c/a;->f()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a([BIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_1

    iget v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/c/a;->b(I)Lcom/autonavi/xmgd/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/c/e;->onHttpRequestFinish([BIII)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/c/a;->f()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;III)Z
    .locals 7

    :try_start_0
    iget-object v6, p0, Lcom/autonavi/xmgd/c/a;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/autonavi/xmgd/c/f;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xmgd/c/f;-><init>(Lcom/autonavi/xmgd/c/a;Ljava/lang/String;III)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->m:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->o:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->m:Ljava/util/concurrent/Future;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[BIII)Z
    .locals 8

    iget-object v7, p0, Lcom/autonavi/xmgd/c/a;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/autonavi/xmgd/c/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/c/f;-><init>(Lcom/autonavi/xmgd/c/a;Ljava/lang/String;[BIII)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->m:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->o:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->m:Ljava/util/concurrent/Future;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/c/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Lcom/autonavi/xmgd/c/e;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/c;

    iget v2, v0, Lcom/autonavi/xmgd/c/c;->b:I

    if-ne v2, p1, :cond_0

    iget-object v0, v0, Lcom/autonavi/xmgd/c/c;->a:Lcom/autonavi/xmgd/c/e;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b([BIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_1

    iget v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    invoke-direct {p0, p4}, Lcom/autonavi/xmgd/c/a;->b(I)Lcom/autonavi/xmgd/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/c/e;->onHttpTaskCanceled([BIII)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/c/a;->f()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()Ljava/net/Proxy;
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MOBILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private d()V
    .locals 5

    const/16 v4, 0xa

    const/4 v1, 0x0

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->p:Ljava/util/concurrent/ExecutorService;

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    const/4 v3, 0x2

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/autonavi/xmgd/c/a;->l:I

    new-instance v0, Lcom/autonavi/xmgd/c/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/c/b;-><init>(Lcom/autonavi/xmgd/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->n:Landroid/os/Handler;

    return-void
.end method

.method private e()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->p:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/c/a;->b:Lcom/autonavi/xmgd/c/a;

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpService free awaitTermination"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 6

    const/16 v4, 0xa

    const/4 v0, 0x0

    const/4 v3, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aget v1, v1, v0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->f:[I

    aget v1, v1, v0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->j:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/autonavi/xmgd/c/a;->i:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/autonavi/xmgd/c/a;->h:[I

    aget v0, v4, v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;III)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->f:[I

    aget v1, v1, v0

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->j:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->k:[[B

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/autonavi/xmgd/c/a;->i:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/autonavi/xmgd/c/a;->h:[I

    aget v5, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[BIII)Z

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/a;->a:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/autonavi/xmgd/c/a;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/c/a;->l:I

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aput v3, v0, v1

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/c/e;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/c/c;->a:Lcom/autonavi/xmgd/c/e;

    if-ne v0, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/c/e;I)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/c;

    iget-object v2, v0, Lcom/autonavi/xmgd/c/c;->a:Lcom/autonavi/xmgd/c/e;

    if-ne v2, p1, :cond_0

    iget v0, v0, Lcom/autonavi/xmgd/c/c;->b:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/autonavi/xmgd/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/c/c;-><init>(Lcom/autonavi/xmgd/c/a;Lcom/autonavi/xmgd/c/b;)V

    iput p2, v0, Lcom/autonavi/xmgd/c/c;->b:I

    iput-object p1, v0, Lcom/autonavi/xmgd/c/c;->a:Lcom/autonavi/xmgd/c/e;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[B[III)Z
    .locals 7

    const/16 v4, 0xa

    const/4 v6, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTTPService] url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTTPService] requestStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aget v2, v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aput v0, v2, v1

    sget v2, Lcom/autonavi/xmgd/c/a;->d:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/autonavi/xmgd/c/a;->d:I

    aput v2, p3, v0

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->e:[I

    aget v3, p3, v0

    aput v3, v2, v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->h:[I

    aput p5, v2, v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->i:[I

    aput p4, v2, v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->f:[I

    aput v6, v2, v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->j:[Ljava/lang/String;

    aput-object p1, v2, v1

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->k:[[B

    aput-object p2, v2, v1

    iget v2, p0, Lcom/autonavi/xmgd/c/a;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/autonavi/xmgd/c/a;->l:I

    iget v2, p0, Lcom/autonavi/xmgd/c/a;->l:I

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/c/a;->g:[I

    aput v6, v2, v1

    aget v3, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[BIII)Z

    :cond_2
    move v0, v6

    :cond_3
    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/c/a;->e()V

    return-void
.end method
