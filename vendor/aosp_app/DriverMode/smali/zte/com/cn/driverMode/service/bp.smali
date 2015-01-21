.class public final Lzte/com/cn/driverMode/service/bp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bp;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->j()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bp;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->k()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bp;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {}, Lzte/com/cn/driverMode/service/DMService;->i()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
