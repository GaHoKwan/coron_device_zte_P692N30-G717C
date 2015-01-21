.class final Lcom/ctc/System/u;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ctc/System/ReportClientInfoService;


# direct methods
.method constructor <init>(Lcom/ctc/System/ReportClientInfoService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/u;->a:Lcom/ctc/System/ReportClientInfoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/u;)Lcom/ctc/System/ReportClientInfoService;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/u;->a:Lcom/ctc/System/ReportClientInfoService;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lcom/ctc/c/l;

    iget-object v2, p0, Lcom/ctc/System/u;->a:Lcom/ctc/System/ReportClientInfoService;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v4, Lcom/ctc/System/v;

    invoke-direct {v4, p0}, Lcom/ctc/System/v;-><init>(Lcom/ctc/System/u;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/ctc/c/l;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLcom/ctc/c/o;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/ctc/c/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/ctc/System/u;->a:Lcom/ctc/System/ReportClientInfoService;

    invoke-virtual {v0}, Lcom/ctc/System/ReportClientInfoService;->stopSelf()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ctc/System/u;->a:Lcom/ctc/System/ReportClientInfoService;

    invoke-virtual {v0}, Lcom/ctc/System/ReportClientInfoService;->stopSelf()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ctc/System/u;->a:Lcom/ctc/System/ReportClientInfoService;

    invoke-virtual {v1}, Lcom/ctc/System/ReportClientInfoService;->stopSelf()V

    throw v0
.end method
