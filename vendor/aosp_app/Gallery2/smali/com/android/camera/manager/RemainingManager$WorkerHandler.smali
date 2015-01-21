.class Lcom/android/camera/manager/RemainingManager$WorkerHandler;
.super Landroid/os/Handler;
.source "RemainingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/RemainingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/RemainingManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/manager/RemainingManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/manager/RemainingManager$WorkerHandler;->this$0:Lcom/android/camera/manager/RemainingManager;

    .line 59
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager$WorkerHandler;->this$0:Lcom/android/camera/manager/RemainingManager;

    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #setter for: Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/camera/manager/RemainingManager;->access$002(Lcom/android/camera/manager/RemainingManager;Ljava/lang/Long;)Ljava/lang/Long;

    .line 67
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
