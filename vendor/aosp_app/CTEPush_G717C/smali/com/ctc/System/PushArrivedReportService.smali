.class public Lcom/ctc/System/PushArrivedReportService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/ctc/c/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/PushArrivedReportService;)Lcom/ctc/c/n;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/PushArrivedReportService;->a:Lcom/ctc/c/n;

    return-object v0
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

    iput-object v0, p0, Lcom/ctc/System/PushArrivedReportService;->a:Lcom/ctc/c/n;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.ctc.epush.PushArrivedReportServiceIsDestory"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ctc/System/PushArrivedReportService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/ctc/c/l;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ctc/b/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-instance v3, Lcom/ctc/System/p;

    invoke-direct {v3, p0}, Lcom/ctc/System/p;-><init>(Lcom/ctc/System/PushArrivedReportService;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ctc/c/l;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLcom/ctc/c/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ctc/c/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushArrivedReportService Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ctc/System/PushArrivedReportService;->stopSelf()V

    goto :goto_0
.end method
