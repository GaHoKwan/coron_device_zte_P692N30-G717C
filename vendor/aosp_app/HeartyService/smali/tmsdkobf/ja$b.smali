.class Ltmsdkobf/ja$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic sP:Ltmsdkobf/ja;


# direct methods
.method public constructor <init>(Ltmsdkobf/ja;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 631
    iput-object p1, p0, Ltmsdkobf/ja$b;->sP:Ltmsdkobf/ja;

    .line 632
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 633
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 637
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 663
    :goto_0
    return-void

    .line 639
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Ltmsdkobf/ja$b;->removeMessages(I)V

    .line 645
    iget-object v2, p0, Ltmsdkobf/ja$b;->sP:Ltmsdkobf/ja;

    invoke-static {v2}, Ltmsdkobf/ja;->a(Ltmsdkobf/ja;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    const-string v2, "ThreadPool"

    const-string v3, "thread pool is pause"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 650
    .local v0, currTime:J
    invoke-static {}, Ltmsdkobf/ja;->dP()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Ltmsdkobf/ja;->dQ()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {}, Ltmsdkobf/ja;->dP()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 651
    const-string v2, "ThreadPool"

    const-string v3, "thread pool is auto wakeup"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    iget-object v2, p0, Ltmsdkobf/ja$b;->sP:Ltmsdkobf/ja;

    invoke-virtual {v2}, Ltmsdkobf/ja;->dL()V

    .line 654
    :cond_0
    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Ltmsdkobf/ja$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 656
    .end local v0           #currTime:J
    :cond_1
    iget-object v2, p0, Ltmsdkobf/ja$b;->sP:Ltmsdkobf/ja;

    invoke-static {v2}, Ltmsdkobf/ja;->b(Ltmsdkobf/ja;)V

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
