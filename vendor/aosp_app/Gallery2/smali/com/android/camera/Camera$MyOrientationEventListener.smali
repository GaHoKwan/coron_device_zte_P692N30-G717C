.class Lcom/android/camera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field private mLock:Z

.field private mRestoreOrientation:I

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 2683
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    .line 2684
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 2680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->mLock:Z

    .line 2685
    return-void
.end method


# virtual methods
.method public getLock()Z
    .locals 1

    .prologue
    .line 2695
    iget-boolean v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->mLock:Z

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/16 v3, 0x5a

    const/16 v4, 0x10e

    .line 2703
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 2766
    :goto_0
    return-void

    .line 2706
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->mLock:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2710
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1, v3}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-static {p1, v4}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2713
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->onDisplayRotate()V

    .line 2715
    :cond_2
    iput p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->mRestoreOrientation:I

    goto :goto_0

    .line 2718
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    .line 2719
    .local v0, newOrientation:I
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2, v0}, Lcom/android/camera/Camera;->access$602(Lcom/android/camera/Camera;I)I

    .line 2722
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    .line 2726
    .local v1, orientationCompensation:I
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2732
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isNeedToSetLandScape()Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6300(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2733
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/android/camera/Camera;->setCameraRequestOrientaion(I)V

    .line 2734
    const/4 v1, 0x0

    .line 2740
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDisplayRotation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 2741
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)V

    .line 2743
    :cond_5
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnOrientChange()V

    .line 2745
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)I

    move-result v2

    if-eq v2, v0, :cond_6

    .line 2746
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/actor/CameraActor;->onOrientationChanged(I)V

    .line 2749
    :cond_6
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6400(Lcom/android/camera/Camera;)I

    move-result v2

    if-eq v2, v1, :cond_8

    .line 2750
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v2, v1}, Lcom/android/camera/Camera;->access$6402(Lcom/android/camera/Camera;I)I

    .line 2751
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyOrientationChanged()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)V

    .line 2752
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ReviewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraState:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2753
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;Z)V

    .line 2755
    :cond_7
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    new-instance v3, Lcom/android/camera/Camera$MyOrientationEventListener$1;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$MyOrientationEventListener$1;-><init>(Lcom/android/camera/Camera$MyOrientationEventListener;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 2763
    :cond_8
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOrientationChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v4}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOrientationCompensation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientationCompensation:I
    invoke-static {v4}, Lcom/android/camera/Camera;->access$6400(Lcom/android/camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnOrientChange()V

    goto/16 :goto_0

    .line 2736
    :cond_9
    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->setCameraRequestOrientaion(I)V

    goto/16 :goto_0
.end method

.method public setLock(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 2688
    iput-boolean p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->mLock:Z

    .line 2689
    iget-boolean v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->mLock:Z

    if-nez v0, :cond_0

    .line 2690
    iget v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->mRestoreOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->onOrientationChanged(I)V

    .line 2692
    :cond_0
    return-void
.end method
