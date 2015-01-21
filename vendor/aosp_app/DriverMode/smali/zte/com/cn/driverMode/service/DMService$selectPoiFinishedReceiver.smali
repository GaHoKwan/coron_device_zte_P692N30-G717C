.class public Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "DMService"

    const-string v1, "selectPoiFinishedReceiver---onReceive!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte.com.cn.driverMode.SelectPoiToNav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "index"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "###index = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/DMService;->f()V

    :cond_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v1, v1, Lzte/com/cn/driverMode/service/DMService;->aJ:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iput v0, v1, Lzte/com/cn/driverMode/service/DMService;->aw:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->l(Lzte/com/cn/driverMode/service/DMService;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMService;->b(Lzte/com/cn/driverMode/service/DMService;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$selectPoiFinishedReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMService;->c(Lzte/com/cn/driverMode/service/DMService;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
