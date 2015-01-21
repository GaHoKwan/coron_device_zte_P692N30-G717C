.class Lcom/autonavi/xmgd/logic/u;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/logic/t;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/t;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/u;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/u;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/t;->a(Lcom/autonavi/xmgd/logic/t;)Lcom/autonavi/a/a/k;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/autonavi/a/a/k;->a(Landroid/location/Location;)Lcom/autonavi/a/a/l;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/u;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v0, v4}, Lcom/autonavi/xmgd/logic/t;->a(Lcom/autonavi/xmgd/logic/t;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/u;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/t;->b(Lcom/autonavi/xmgd/logic/t;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "autonavi60"

    const-string v3, "\u7f51\u7edc\u5b9a\u4f4d\u5f02\u5e38:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 v2, 0x22b8

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/u;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v0, v4}, Lcom/autonavi/xmgd/logic/t;->a(Lcom/autonavi/xmgd/logic/t;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/u;->a:Lcom/autonavi/xmgd/logic/t;

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/logic/t;->a(Lcom/autonavi/xmgd/logic/t;Z)Z

    throw v0
.end method
