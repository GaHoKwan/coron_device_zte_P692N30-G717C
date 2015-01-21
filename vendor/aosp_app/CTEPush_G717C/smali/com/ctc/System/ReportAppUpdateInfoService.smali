.class public Lcom/ctc/System/ReportAppUpdateInfoService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/ctc/a/c;

.field private b:Lcom/ctc/System/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/ReportAppUpdateInfoService;)Lcom/ctc/a/c;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/ReportAppUpdateInfoService;->a:Lcom/ctc/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/ctc/System/ReportAppUpdateInfoService;Lcom/ctc/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/ReportAppUpdateInfoService;->a:Lcom/ctc/a/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ctc/a/c;Landroid/content/Context;)V
    .locals 4

    invoke-static {p2, p1}, Lcom/ctc/b/b;->a(Landroid/content/Context;Lcom/ctc/a/c;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/ctc/c/l;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v3, Lcom/ctc/System/s;

    invoke-direct {v3, p0, p2}, Lcom/ctc/System/s;-><init>(Lcom/ctc/System/ReportAppUpdateInfoService;Landroid/content/Context;)V

    invoke-direct {v1, p2, v2, v0, v3}, Lcom/ctc/c/l;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLcom/ctc/c/o;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/ctc/c/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/ctc/System/t;

    invoke-direct {v0, p0}, Lcom/ctc/System/t;-><init>(Lcom/ctc/System/ReportAppUpdateInfoService;)V

    iput-object v0, p0, Lcom/ctc/System/ReportAppUpdateInfoService;->b:Lcom/ctc/System/t;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ctc.epush.ReportAppUpdate_Action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/ReportAppUpdateInfoService;->b:Lcom/ctc/System/t;

    invoke-virtual {p0, v1, v0}, Lcom/ctc/System/ReportAppUpdateInfoService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "pushModel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/c;

    iput-object v0, p0, Lcom/ctc/System/ReportAppUpdateInfoService;->a:Lcom/ctc/a/c;

    iget-object v0, p0, Lcom/ctc/System/ReportAppUpdateInfoService;->a:Lcom/ctc/a/c;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
