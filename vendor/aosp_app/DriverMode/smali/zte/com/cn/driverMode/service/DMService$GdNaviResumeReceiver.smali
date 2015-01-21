.class public Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x1020

    const/4 v3, 0x1

    const-string v0, "DMService"

    const-string v1, "receiver navigation resume broadcast!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->n(Lzte/com/cn/driverMode/service/DMService;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMService;->aD:Z

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curScene =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMService;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMService;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMService;->a:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->f()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iput v3, v0, Lzte/com/cn/driverMode/service/DMService;->a:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMService"

    const-string v1, "\u5bfc\u822a\u5237\u65b0\uff0c\u5ef6\u8fdf2\u79d2\u8d77wakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->u:Lzte/com/cn/driverMode/service/by;

    const-string v1, "main_tips_state"

    const-string v2, "tips_waiting"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0, v4}, Lzte/com/cn/driverMode/service/bv;->removeMessages(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$GdNaviResumeReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v4, v1, v2}, Lzte/com/cn/driverMode/service/bv;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
