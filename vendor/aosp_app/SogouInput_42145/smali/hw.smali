.class Lhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lhw;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0, p2}, Lhr;->a(Lhr;I)I

    .line 563
    iget-object v0, p0, Lhw;->a:Lhr;

    add-int v1, p2, p3

    invoke-static {v0, v1}, Lhr;->b(Lhr;I)I

    .line 564
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0}, Lhr;->b(Lhr;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0}, Lhr;->c(Lhr;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 566
    iget-object v0, p0, Lhw;->a:Lhr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhr;->a(Lhr;Z)Z

    .line 567
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0}, Lhr;->e(Lhr;)V

    .line 569
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0x9

    .line 536
    packed-switch p2, :pswitch_data_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 538
    :pswitch_0
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lhw;->a:Lhr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhr;->b(Lhr;Z)Z

    .line 540
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 541
    iput v2, v0, Landroid/os/Message;->what:I

    .line 542
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 543
    iget-object v1, p0, Lhw;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 547
    :pswitch_1
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :cond_1
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0, v1}, Lhr;->b(Lhr;Z)Z

    goto :goto_0

    .line 552
    :pswitch_2
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    :cond_2
    iget-object v0, p0, Lhw;->a:Lhr;

    invoke-static {v0, v1}, Lhr;->b(Lhr;Z)Z

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
