.class Lcom/android/camera/Camera$24;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->doShowIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3726
    iput-object p1, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3729
    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3730
    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCsSpeedManager:Lcom/android/camera/manager/ShowCSSpeedManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$7300(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShowCSSpeedManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3731
    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 3732
    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNormalViewState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3733
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 3735
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCurrentViewState:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$7500(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 3736
    iget-object v0, p0, Lcom/android/camera/Camera$24;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$7400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 3738
    :cond_2
    return-void
.end method
