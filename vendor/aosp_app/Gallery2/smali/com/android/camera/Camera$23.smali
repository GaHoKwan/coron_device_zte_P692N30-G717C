.class Lcom/android/camera/Camera$23;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->doShowRemaining(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$showAways:Z


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3692
    iput-object p1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    iput-boolean p2, p0, Lcom/android/camera/Camera$23;->val$showAways:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3695
    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCurrentViewState:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$7500(Lcom/android/camera/Camera;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 3696
    const/4 v0, 0x0

    .line 3697
    .local v0, remainingShown:Z
    iget-boolean v1, p0, Lcom/android/camera/Camera$23;->val$showAways:Z

    if-eqz v1, :cond_3

    .line 3698
    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/RemainingManager;->showAways()Z

    move-result v0

    .line 3702
    :goto_0
    if-eqz v0, :cond_2

    .line 3703
    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$7400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/IndicatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3704
    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3705
    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNormalViewState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3706
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 3708
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    const/16 v2, 0xbb8

    #calls: Lcom/android/camera/Camera;->showIndicator(I)V
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;I)V

    .line 3711
    .end local v0           #remainingShown:Z
    :cond_2
    return-void

    .line 3700
    .restart local v0       #remainingShown:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera$23;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/RemainingManager;->showIfNeed()Z

    move-result v0

    goto :goto_0
.end method
