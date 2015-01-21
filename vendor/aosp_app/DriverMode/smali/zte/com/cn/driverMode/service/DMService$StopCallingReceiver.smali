.class public Lzte/com/cn/driverMode/service/DMService$StopCallingReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$StopCallingReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopCallingReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMService;->an:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopCallingReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ca;->d()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopCallingReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->g()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopCallingReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->n()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopCallingReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    const v1, 0x7f0800ac

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopCallingReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x0

    iput v1, v0, Lzte/com/cn/driverMode/service/DMService;->ab:I

    goto :goto_0
.end method
