.class public Lcom/ctc/System/KeepAliveService;
.super Landroid/app/Service;


# instance fields
.field a:Z

.field b:J

.field c:Landroid/app/NotificationManager;

.field private d:Lcom/ctc/c/n;

.field private e:Lcom/ctc/System/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ctc/System/KeepAliveService;->e:Lcom/ctc/System/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ctc/System/KeepAliveService;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ctc/System/KeepAliveService;->b:J

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/KeepAliveService;)Lcom/ctc/c/n;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/KeepAliveService;->d:Lcom/ctc/c/n;

    return-object v0
.end method

.method static synthetic a()V
    .locals 0

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ctc/System/KeepAliveService;->a:Z

    invoke-static {p0}, Lcom/ctc/b/b;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/ctc/c/l;

    new-instance v2, Lcom/ctc/System/f;

    invoke-direct {v2, p0}, Lcom/ctc/System/f;-><init>(Lcom/ctc/System/KeepAliveService;)V

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/ctc/c/l;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLcom/ctc/c/o;)V

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/ctc/c/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/ctc/System/KeepAliveService;)V
    .locals 0

    invoke-direct {p0}, Lcom/ctc/System/KeepAliveService;->b()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/System/KeepAliveService;->d:Lcom/ctc/c/n;

    new-instance v0, Lcom/ctc/System/g;

    invoke-direct {v0, p0}, Lcom/ctc/System/g;-><init>(Lcom/ctc/System/KeepAliveService;)V

    iput-object v0, p0, Lcom/ctc/System/KeepAliveService;->e:Lcom/ctc/System/g;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ctc.epush.DownloadException_Action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/KeepAliveService;->e:Lcom/ctc/System/g;

    invoke-virtual {p0, v1, v0}, Lcom/ctc/System/KeepAliveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/ctc/System/KeepAliveService;->e:Lcom/ctc/System/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/KeepAliveService;->e:Lcom/ctc/System/g;

    invoke-virtual {p0, v0}, Lcom/ctc/System/KeepAliveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/KeepAliveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ctc/System/KeepAliveService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/ctc/System/KeepAliveService;->d:Lcom/ctc/c/n;

    const-string v1, "MyConstant.REGISTER_SUCCESS_FOR_KEEPALIVE"

    new-array v2, v3, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ctc/System/KeepAliveService;->b()V

    iget-object v0, p0, Lcom/ctc/System/KeepAliveService;->d:Lcom/ctc/c/n;

    const-string v1, "MyConstant.REGISTER_SUCCESS_FOR_KEEPALIVE"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
