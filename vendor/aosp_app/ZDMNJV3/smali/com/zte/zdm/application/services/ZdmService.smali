.class public Lcom/zte/zdm/application/services/ZdmService;
.super Landroid/app/Service;


# static fields
.field private static a:Lcom/zte/zdm/application/services/ZdmService;


# instance fields
.field private volatile b:Landroid/os/Looper;

.field private volatile c:Lcom/zte/zdm/application/services/d;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/services/ZdmService;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/services/ZdmService;->a:Lcom/zte/zdm/application/services/ZdmService;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/zte/zdm/application/services/ZdmService;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/zte/zdm/application/services/ZdmService;->a:Lcom/zte/zdm/application/services/ZdmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/zte/zdm/application/services/ZdmService;->a:Lcom/zte/zdm/application/services/ZdmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 2

    const-string v0, "Appinit registBroadcastReciever()  :"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/a;->a()Lcom/zte/zdm/application/receiver/a;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/receiver/a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/services/ZdmService;->d:Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0, p0}, Lcom/zte/zdm/application/services/ZdmService;->a(Lcom/zte/zdm/application/services/ZdmService;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntentService[ZdmService]"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmService;->b:Landroid/os/Looper;

    new-instance v0, Lcom/zte/zdm/application/services/d;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmService;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/zte/zdm/application/services/d;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/zdm/application/services/ZdmService;->c:Lcom/zte/zdm/application/services/d;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-direct {p0}, Lcom/zte/zdm/application/services/ZdmService;->b()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/services/ZdmService;->c:Lcom/zte/zdm/application/services/d;

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/application/services/ZdmService;->c()V

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/zdm/application/services/ZdmService;->c:Lcom/zte/zdm/application/services/d;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/services/d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p1, p3}, Lcom/zte/zdm/application/services/ZdmService;->onStart(Landroid/content/Intent;I)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/services/ZdmService;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
