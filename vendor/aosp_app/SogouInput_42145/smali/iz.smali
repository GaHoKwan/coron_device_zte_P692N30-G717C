.class Liz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Liu;


# direct methods
.method constructor <init>(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Liz;->a:Liu;

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
    .line 689
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 654
    packed-switch p2, :pswitch_data_0

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 656
    :pswitch_0
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Liz;->a:Liu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Liu;->a(Liu;Z)Z

    .line 658
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    iget-boolean v0, v0, Lgw;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    iget-boolean v0, v0, Lgw;->d:Z

    if-nez v0, :cond_0

    .line 660
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 661
    iput v2, v0, Landroid/os/Message;->what:I

    .line 662
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 663
    iget-object v1, p0, Liz;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 667
    :pswitch_1
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 670
    :cond_2
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 671
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    :cond_3
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0, v1}, Liu;->a(Liu;Z)Z

    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_4

    .line 676
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 678
    :cond_4
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 679
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    :cond_5
    iget-object v0, p0, Liz;->a:Liu;

    invoke-static {v0, v1}, Liu;->a(Liu;Z)Z

    goto/16 :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
