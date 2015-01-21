.class Lcom/iflytek/ui/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/ui/A;


# direct methods
.method constructor <init>(Lcom/iflytek/ui/A;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/ui/k;->a:Lcom/iflytek/ui/A;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/ui/k;->a:Lcom/iflytek/ui/A;

    invoke-virtual {v0}, Lcom/iflytek/ui/A;->invalidate()V

    iget-object v0, p0, Lcom/iflytek/ui/k;->a:Lcom/iflytek/ui/A;

    invoke-static {v0}, Lcom/iflytek/ui/A;->a(Lcom/iflytek/ui/A;)Lcom/iflytek/ui/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/ui/k;->a:Lcom/iflytek/ui/A;

    invoke-static {v0}, Lcom/iflytek/ui/A;->a(Lcom/iflytek/ui/A;)Lcom/iflytek/ui/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/ui/a;->b()V

    iget-object v0, p0, Lcom/iflytek/ui/k;->a:Lcom/iflytek/ui/A;

    invoke-static {v0}, Lcom/iflytek/ui/A;->a(Lcom/iflytek/ui/A;)Lcom/iflytek/ui/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/ui/a;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/ui/k;->a:Lcom/iflytek/ui/A;

    invoke-static {v1}, Lcom/iflytek/ui/A;->b(Lcom/iflytek/ui/A;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/iflytek/ui/k;->a:Lcom/iflytek/ui/A;

    invoke-static {v1}, Lcom/iflytek/ui/A;->b(Lcom/iflytek/ui/A;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
