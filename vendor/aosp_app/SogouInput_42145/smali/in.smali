.class Lin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lim;


# direct methods
.method constructor <init>(Lim;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lin;->a:Lim;

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
    .line 413
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 378
    packed-switch p2, :pswitch_data_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lin;->a:Lim;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim;->a(Lim;Z)Z

    .line 382
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    iget-boolean v0, v0, Lgw;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    iget-boolean v0, v0, Lgw;->d:Z

    if-nez v0, :cond_0

    .line 384
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 385
    iput v2, v0, Landroid/os/Message;->what:I

    .line 386
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    iget-object v1, p0, Lin;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 394
    :cond_2
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    :cond_3
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0, v1}, Lim;->a(Lim;Z)Z

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_4

    .line 400
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 402
    :cond_4
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    :cond_5
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0, v1}, Lim;->a(Lim;Z)Z

    goto/16 :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
