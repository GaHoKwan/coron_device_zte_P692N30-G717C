.class Lcom/mediatek/op/policy/DualClockImp$3;
.super Landroid/os/Handler;
.source "DualClockImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/policy/DualClockImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/policy/DualClockImp;


# direct methods
.method constructor <init>(Lcom/mediatek/op/policy/DualClockImp;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mediatek/op/policy/DualClockImp$3;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 357
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 359
    :pswitch_0
    const-string v1, "DualClockImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler handleMessage, ROAMING_UPDATE msg.arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 361
    .local v0, bRoaming:Z
    :goto_1
    iget-object v1, p0, Lcom/mediatek/op/policy/DualClockImp$3;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    #calls: Lcom/mediatek/op/policy/DualClockImp;->setPropertyRoaming(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/op/policy/DualClockImp;->access$400(Lcom/mediatek/op/policy/DualClockImp;Z)V

    .line 362
    iget-object v1, p0, Lcom/mediatek/op/policy/DualClockImp$3;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    #calls: Lcom/mediatek/op/policy/DualClockImp;->udpateDualClock(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/op/policy/DualClockImp;->access$100(Lcom/mediatek/op/policy/DualClockImp;Z)V

    goto :goto_0

    .line 360
    .end local v0           #bRoaming:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
