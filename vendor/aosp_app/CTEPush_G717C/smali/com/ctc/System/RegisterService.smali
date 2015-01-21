.class public Lcom/ctc/System/RegisterService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/ctc/System/r;

.field private b:Lcom/ctc/c/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ctc/System/RegisterService;->a:Lcom/ctc/System/r;

    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {p0}, Lcom/ctc/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/ctc/c/l;

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ctc/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-instance v4, Lcom/ctc/System/q;

    invoke-direct {v4, p0}, Lcom/ctc/System/q;-><init>(Lcom/ctc/System/RegisterService;)V

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/ctc/c/l;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLcom/ctc/c/o;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ctc/c/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/ctc/System/RegisterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/ctc/System/RegisterService;->a()V

    return-void
.end method

.method static synthetic b(Lcom/ctc/System/RegisterService;)Lcom/ctc/c/n;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/RegisterService;->b:Lcom/ctc/c/n;

    return-object v0
.end method

.method static synthetic c(Lcom/ctc/System/RegisterService;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/KeepAliveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ctc/System/RegisterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ctc/System/RegisterService;->b:Lcom/ctc/c/n;

    const-string v1, "MyConstant.REGISTER_SUCCESS_FOR_KEEPALIVE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/System/RegisterService;->b:Lcom/ctc/c/n;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/RegisterService;->a:Lcom/ctc/System/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/RegisterService;->a:Lcom/ctc/System/r;

    invoke-virtual {p0, v0}, Lcom/ctc/System/RegisterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-static {p0}, Lcom/ctc/c/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ctc/System/RegisterService;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/ctc/System/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ctc/System/r;-><init>(Lcom/ctc/System/RegisterService;B)V

    iput-object v0, p0, Lcom/ctc/System/RegisterService;->a:Lcom/ctc/System/r;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/RegisterService;->a:Lcom/ctc/System/r;

    invoke-virtual {p0, v1, v0}, Lcom/ctc/System/RegisterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/ctc/a/b;

    invoke-direct {v0}, Lcom/ctc/a/b;-><init>()V

    iget-object v0, p0, Lcom/ctc/System/RegisterService;->b:Lcom/ctc/c/n;

    const-string v1, "ISDATA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/ctc/c/h;

    invoke-direct {v1}, Lcom/ctc/c/h;-><init>()V

    invoke-static {p0, v0}, Lcom/ctc/c/h;->a(Landroid/content/Context;Lcom/ctc/c/n;)V

    const-string v1, "ISDATA"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AsyncImageLoader1.onStart().Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
