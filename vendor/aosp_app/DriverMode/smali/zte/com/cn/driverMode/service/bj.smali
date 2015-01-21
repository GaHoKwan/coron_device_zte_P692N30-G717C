.class final Lzte/com/cn/driverMode/service/bj;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missedCallNoticeReceiver ...........bNeedReturnToNav:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-boolean v2, v2, Lzte/com/cn/driverMode/service/DMService;->aS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x0

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMService;->aj:Ljava/lang/String;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ca;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/ca;->a(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ca;->d()V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->g()Z

    :cond_1
    const-string v0, "TYPE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    const v1, 0x7f0801b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bj;->a:Lzte/com/cn/driverMode/service/DMService;

    const v1, 0x7f0801a2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
