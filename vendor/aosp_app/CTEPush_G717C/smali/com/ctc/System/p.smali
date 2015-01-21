.class final Lcom/ctc/System/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ctc/c/o;


# instance fields
.field final synthetic a:Lcom/ctc/System/PushArrivedReportService;


# direct methods
.method constructor <init>(Lcom/ctc/System/PushArrivedReportService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/p;->a:Lcom/ctc/System/PushArrivedReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/p;->a:Lcom/ctc/System/PushArrivedReportService;

    iget-object v2, p0, Lcom/ctc/System/p;->a:Lcom/ctc/System/PushArrivedReportService;

    invoke-static {v2}, Lcom/ctc/System/PushArrivedReportService;->a(Lcom/ctc/System/PushArrivedReportService;)Lcom/ctc/c/n;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/ctc/c/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/ctc/System/p;->a:Lcom/ctc/System/PushArrivedReportService;

    invoke-static {v0}, Lcom/ctc/System/PushArrivedReportService;->a(Lcom/ctc/System/PushArrivedReportService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "MyConstant.HAS_REPORT"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ctc/System/p;->a:Lcom/ctc/System/PushArrivedReportService;

    invoke-virtual {v0}, Lcom/ctc/System/PushArrivedReportService;->stopSelf()V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ctc/System/p;->a:Lcom/ctc/System/PushArrivedReportService;

    invoke-static {v0}, Lcom/ctc/System/PushArrivedReportService;->a(Lcom/ctc/System/PushArrivedReportService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "MyConstant.HAS_REPORT"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ctc/System/p;->a:Lcom/ctc/System/PushArrivedReportService;

    invoke-static {v1}, Lcom/ctc/System/PushArrivedReportService;->a(Lcom/ctc/System/PushArrivedReportService;)Lcom/ctc/c/n;

    move-result-object v1

    const-string v2, "MyConstant.HAS_REPORT"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/ctc/System/p;->a:Lcom/ctc/System/PushArrivedReportService;

    invoke-virtual {v1}, Lcom/ctc/System/PushArrivedReportService;->stopSelf()V

    throw v0
.end method
