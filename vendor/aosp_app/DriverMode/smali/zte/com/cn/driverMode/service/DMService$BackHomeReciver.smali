.class public Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x1021

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BackHomeReciver,action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BackHomeReciver,lastScene="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v3, v3, Lzte/com/cn/driverMode/service/DMService;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "curScene="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v3, v3, Lzte/com/cn/driverMode/service/DMService;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "zte.com.cn.driverMode.TaskBackHome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "DMService"

    const-string v1, "BackHomeReciver----stopForeground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->stopForeground(Z)V

    const-string v0, "DMService"

    const-string v1, "BackHomeReciver----unClock..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->h:Lzte/com/cn/driverMode/service/y;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/y;->e()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMService;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "DMService"

    const-string v1, "BackHomeReciver---\u8fd4\u56de\u97f3\u4e50\uff0c\u5ef6\u8fdf2\u79d2\u542f\u52a8musicbargin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->q()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0, v4}, Lzte/com/cn/driverMode/service/bv;->removeMessages(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v4, v1, v2}, Lzte/com/cn/driverMode/service/bv;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "zte.com.cn.driverMode.Backhome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->bn:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->bn:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMService;->a:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->h(Lzte/com/cn/driverMode/service/DMService;)I

    move-result v0

    const-string v1, "DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "btState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->c(Lzte/com/cn/driverMode/service/DMService;)V

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3008

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$BackHomeReciver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
