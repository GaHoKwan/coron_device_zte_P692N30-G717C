.class Lcom/baidu/location/h$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/location/h;


# direct methods
.method constructor <init>(Lcom/baidu/location/h;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h$1;->a:Lcom/baidu/location/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/location/h$1;->a:Lcom/baidu/location/h;

    invoke-virtual {v0}, Lcom/baidu/location/h;->m()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method