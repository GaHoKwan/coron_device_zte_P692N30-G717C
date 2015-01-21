.class Ltmsdkobf/lv$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x1e

    const/16 v7, 0x15

    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 779
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 780
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 782
    :pswitch_0
    invoke-static {}, Ltmsdkobf/lv;->cI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ltmsdkobf/lv;->dP()J

    move-result-wide v2

    invoke-static {v2, v3}, Ltmsdkobf/lu;->y(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 786
    .local v1, startDate:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ltmsdkobf/lu;->z(J)Ljava/util/Date;

    move-result-object v0

    .line 787
    .local v0, endDate:Ljava/util/Date;
    invoke-static {}, Ltmsdkobf/lv;->ha()I

    move-result v2

    if-ge v2, v8, :cond_1

    invoke-static {v1, v0}, Ltmsdkobf/lu;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 788
    invoke-static {}, Ltmsdkobf/lv;->hb()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    invoke-static {}, Ltmsdkobf/lv;->hb()Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 791
    :cond_1
    invoke-static {v5}, Ltmsdkobf/lv;->cj(I)I

    .line 793
    invoke-static {}, Ltmsdkobf/lv;->hc()V

    goto :goto_0

    .line 798
    .end local v0           #endDate:Ljava/util/Date;
    .end local v1           #startDate:Ljava/util/Date;
    :pswitch_1
    invoke-static {}, Ltmsdkobf/lv;->cI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ltmsdkobf/lv;->dP()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 802
    .restart local v1       #startDate:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ltmsdkobf/lv;->hd()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 803
    .restart local v0       #endDate:Ljava/util/Date;
    invoke-static {}, Ltmsdkobf/lv;->he()I

    move-result v2

    if-ge v2, v8, :cond_2

    invoke-static {v1, v0}, Ltmsdkobf/lu;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 804
    invoke-static {}, Ltmsdkobf/lv;->hb()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    invoke-static {}, Ltmsdkobf/lv;->hb()Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 807
    :cond_2
    invoke-static {v5}, Ltmsdkobf/lv;->ck(I)I

    goto :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
