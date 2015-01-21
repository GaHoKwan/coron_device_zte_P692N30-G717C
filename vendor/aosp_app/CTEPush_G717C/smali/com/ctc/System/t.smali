.class final Lcom/ctc/System/t;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/ctc/System/ReportAppUpdateInfoService;


# direct methods
.method constructor <init>(Lcom/ctc/System/ReportAppUpdateInfoService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/t;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportAppUpdateInfo-Receiver-action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/ctc/System/t;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    const-string v0, "pushModel"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/c;

    invoke-static {v1, v0}, Lcom/ctc/System/ReportAppUpdateInfoService;->a(Lcom/ctc/System/ReportAppUpdateInfoService;Lcom/ctc/a/c;)V

    iget-object v0, p0, Lcom/ctc/System/t;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-static {v0}, Lcom/ctc/System/ReportAppUpdateInfoService;->a(Lcom/ctc/System/ReportAppUpdateInfoService;)Lcom/ctc/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ctc/System/t;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    iget-object v1, p0, Lcom/ctc/System/t;->a:Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-static {v1}, Lcom/ctc/System/ReportAppUpdateInfoService;->a(Lcom/ctc/System/ReportAppUpdateInfoService;)Lcom/ctc/a/c;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ctc/System/ReportAppUpdateInfoService;->a(Lcom/ctc/a/c;Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
