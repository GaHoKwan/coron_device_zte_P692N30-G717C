.class Laij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Laij;->a:Laia;

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
    .line 216
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x68

    .line 173
    .line 175
    packed-switch p2, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 180
    iget-object v1, p0, Laij;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 181
    iget-object v2, p0, Laij;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Laiq;

    move-result-object v2

    invoke-virtual {v2}, Laiq;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 182
    iget-object v2, p0, Laij;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Lahr;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lahr;->a(II)V

    .line 183
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lahr;

    move-result-object v0

    invoke-virtual {v0}, Lahr;->b()V

    goto :goto_0

    .line 185
    :cond_1
    if-nez v0, :cond_2

    .line 186
    iget-object v2, p0, Laij;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Lahr;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lahr;->a(II)V

    .line 187
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lahr;

    move-result-object v0

    invoke-virtual {v0}, Lahr;->b()V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    :cond_3
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lahr;

    move-result-object v0

    invoke-virtual {v0}, Lahr;->a()V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lahr;

    move-result-object v0

    invoke-virtual {v0}, Lahr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 202
    :pswitch_2
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    :cond_4
    iget-object v0, p0, Laij;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lahr;

    move-result-object v0

    invoke-virtual {v0}, Lahr;->a()V

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
