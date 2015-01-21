.class final Lcom/ctc/System/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ctc/c/o;


# instance fields
.field final synthetic a:Lcom/ctc/System/ReportAppUpdateInfoService;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ctc/System/ReportAppUpdateInfoService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/s;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    iput-object p2, p0, Lcom/ctc/System/s;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/ctc/System/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ctc/c/h;->e(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/ctc/System/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ctc/c/h;->d(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ctc/System/s;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-virtual {v0}, Lcom/ctc/System/ReportAppUpdateInfoService;->stopSelf()V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5e94\u7528\u66f4\u65b0\u4e0a\u62a5\u63a5\u53e3\u8fd4\u56de\u7684responseJson: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ctc/c/n;

    iget-object v2, p0, Lcom/ctc/System/s;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/ctc/System/s;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/ctc/c/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/ctc/System/s;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-virtual {v0}, Lcom/ctc/System/ReportAppUpdateInfoService;->stopSelf()V

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ctc/System/s;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-virtual {v0}, Lcom/ctc/System/ReportAppUpdateInfoService;->stopSelf()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ctc/System/s;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-virtual {v1}, Lcom/ctc/System/ReportAppUpdateInfoService;->stopSelf()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
