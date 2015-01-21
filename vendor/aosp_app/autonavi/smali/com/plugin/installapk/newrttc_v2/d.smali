.class Lcom/plugin/installapk/newrttc_v2/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/plugin/installapk/newrttc_v2/c;


# direct methods
.method constructor <init>(Lcom/plugin/installapk/newrttc_v2/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/d;->a:Lcom/plugin/installapk/newrttc_v2/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/d;->a:Lcom/plugin/installapk/newrttc_v2/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/c;->a(Lcom/plugin/installapk/newrttc_v2/c;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
