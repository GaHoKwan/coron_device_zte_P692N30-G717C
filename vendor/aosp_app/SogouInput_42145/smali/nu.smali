.class Lnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lnu;->a:Lnr;

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
    .line 366
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x65

    .line 323
    .line 325
    packed-switch p2, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 329
    :pswitch_0
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 330
    iget-object v1, p0, Lnu;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    .line 331
    iget-object v2, p0, Lnu;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Lof;

    move-result-object v2

    invoke-virtual {v2}, Lof;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 332
    iget-object v2, p0, Lnu;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Lnb;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnb;->a(II)V

    .line 333
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->b()V

    goto :goto_0

    .line 335
    :cond_1
    if-nez v0, :cond_2

    .line 336
    iget-object v2, p0, Lnu;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Lnb;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnb;->a(II)V

    .line 337
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->b()V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    :cond_3
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->a()V

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    :cond_4
    iget-object v0, p0, Lnu;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->a()V

    goto/16 :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
