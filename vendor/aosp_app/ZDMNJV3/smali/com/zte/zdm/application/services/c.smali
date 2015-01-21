.class public Lcom/zte/zdm/application/services/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/zte/zdm/application/services/c;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/zte/zdm/application/services/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/services/c;->a:Lcom/zte/zdm/application/services/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/services/c;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/services/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zdm/application/services/c;->a:Lcom/zte/zdm/application/services/c;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/services/c;->a:Lcom/zte/zdm/application/services/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "start servcie for ui fumo session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zte.zdm.application.services.ZdmService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OPERATION"

    const-string v2, "com.zte.zdm.REQUEST_UI_FUMO_SESSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "start servcie for RestartDLSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zte.zdm.application.services.ZdmService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OPERATION"

    const-string v2, "com.zte.zdm.REQUEST_RESTART_LAST_FUMO_SESSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "START_SERVICE_BYUSER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a([B)V
    .locals 3

    const-string v0, "start servcie for ni session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zte.zdm.application.services.ZdmService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OPERATION"

    const-string v2, "com.zte.zdm.REQUEST_NI_SESSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "start servcie for ci fumo session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zte.zdm.application.services.ZdmService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OPERATION"

    const-string v2, "com.zte.zdm.REQUEST_CI_FUMO_SESSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "start servcie for fumo session without waiting dialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zte.zdm.application.services.ZdmService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OPERATION"

    const-string v2, "com.zte.zdm.REQUEST_RESTART_LAST_FUMO_SESSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "startServiceforFumoReportSession"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zte.zdm.application.services.ZdmService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OPERATION"

    const-string v2, "com.zte.zdm.REQUEST_REPORT_FUMO_SESSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public e()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zdm/application/b/cn;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/b/cn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZdmServiceCaller.setNetwork() apn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZdmServiceCaller.setNetwork() proxy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZdmServiceCaller.setNetwork() port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dm_proxy"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dl_proxy"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dm_proxy"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "dl_proxy"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "dl_proxy"

    invoke-virtual {v2, v3, v6}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v2

    const-string v3, "dl_proxy_addr"

    invoke-virtual {v2, v3, v0}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v2, "dl_proxy_port"

    invoke-virtual {v0, v2, v1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/services/c;->b:Landroid/content/Context;

    return-object v0
.end method
