.class Lcom/android/camera/Camera$22;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->doShowInfo(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$showMs:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3643
    iput-object p1, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$22;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/Camera$22;->val$showMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 3646
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$7400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3647
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3648
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3650
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3651
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3652
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$22;->val$text:Ljava/lang/String;

    #setter for: Lcom/android/camera/Camera;->mDelayShowInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1802(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 3653
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/Camera$22;->val$showMs:I

    #setter for: Lcom/android/camera/Camera;->mDelayOtherMessageTime:I
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2002(Lcom/android/camera/Camera;I)I

    .line 3659
    :goto_0
    return-void

    .line 3655
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3656
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$22;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/InfoManager;->showText(Ljava/lang/String;)V

    .line 3657
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/Camera$22;->val$showMs:I

    #calls: Lcom/android/camera/Camera;->showIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;I)V

    goto :goto_0
.end method
