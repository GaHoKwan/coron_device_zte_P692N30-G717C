.class Lji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Ljf;


# direct methods
.method constructor <init>(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lji;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 629
    packed-switch p2, :pswitch_data_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 631
    :pswitch_0
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->b(Ljf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lji;->a:Ljf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljf;->a(Ljf;Z)Z

    .line 633
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    iget-boolean v0, v0, Lgw;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    iget-boolean v0, v0, Lgw;->d:Z

    if-nez v0, :cond_0

    .line 635
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 636
    iput v2, v0, Landroid/os/Message;->what:I

    .line 637
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 638
    iget-object v1, p0, Lji;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 642
    :pswitch_1
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 645
    :cond_2
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    :cond_3
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0, v1}, Ljf;->a(Ljf;Z)Z

    goto :goto_0

    .line 650
    :pswitch_2
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_4

    .line 651
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 653
    :cond_4
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 654
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    :cond_5
    iget-object v0, p0, Lji;->a:Ljf;

    invoke-static {v0, v1}, Ljf;->a(Ljf;Z)Z

    goto/16 :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
