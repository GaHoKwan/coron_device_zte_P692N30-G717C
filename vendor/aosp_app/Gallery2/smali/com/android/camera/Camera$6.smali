.class Lcom/android/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/manager/ModePicker$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
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
    .line 1883
    iput-object p1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 7
    .parameter "newMode"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1886
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onModeChanged("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") current mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraState:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v4

    if-eq v4, p1, :cond_1

    .line 1890
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsModeChanged:Z
    invoke-static {v4, v0}, Lcom/android/camera/Camera;->access$5002(Lcom/android/camera/Camera;Z)Z

    .line 1891
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsSwitchActorRunning:Z
    invoke-static {v4, v0}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;Z)Z

    .line 1892
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->releaseCameraActor()V
    invoke-static {v4}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)V

    .line 1893
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1894
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/FocusManager;->stopObjectTrack()V

    .line 1896
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1939
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/PhotoActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    .line 1942
    :goto_0
    :sswitch_0
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    iget-boolean v4, v4, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v4, :cond_2

    .line 1960
    :cond_1
    :goto_1
    return-void

    .line 1898
    :sswitch_1
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/PhotoActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1901
    :sswitch_2
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/HdrActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/HdrActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1904
    :sswitch_3
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/FaceBeautyActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/FaceBeautyActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1907
    :sswitch_4
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/PanoramaActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/PanoramaActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1910
    :sswitch_5
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/MavActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/MavActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1913
    :sswitch_6
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/AsdActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/AsdActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1916
    :sswitch_7
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/SmileActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/SmileActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1919
    :sswitch_8
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/MotionTrackActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/MotionTrackActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1922
    :sswitch_9
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/VideoActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/VideoActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1925
    :sswitch_a
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/VideoEffectsActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto/16 :goto_0

    .line 1928
    :sswitch_b
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-object v6, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/actor/VideoLivePhotoActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto/16 :goto_0

    .line 1946
    :cond_2
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFocusManager()V
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)V

    .line 1947
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->clearDeviceCallbacks()V
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)V

    .line 1948
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyDeviceCallbacks()V
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)V

    .line 1949
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->clearViewCallbacks()V
    invoke-static {v4}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)V

    .line 1950
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applayViewCallbacks()V
    invoke-static {v4}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)V

    .line 1951
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyOrientationChanged()V
    invoke-static {v4}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)V

    .line 1953
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastMode:I
    invoke-static {v4}, Lcom/android/camera/Camera;->access$5400(Lcom/android/camera/Camera;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/SettingChecker;->getCameraMode(I)I

    move-result v2

    .line 1954
    .local v2, oldCameraMode:I
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/SettingChecker;->getCameraMode(I)I

    move-result v1

    .line 1956
    .local v1, newCameraMode:I
    if-ne v2, v1, :cond_3

    invoke-static {v1}, Lcom/android/camera/SettingChecker;->isVideoCameraMode(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1957
    .local v0, needRestart:Z
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v4, v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;Z)V

    .line 1958
    iget-object v4, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsModeChanged:Z
    invoke-static {v4, v3}, Lcom/android/camera/Camera;->access$5002(Lcom/android/camera/Camera;Z)Z

    goto/16 :goto_1

    .end local v0           #needRestart:Z
    :cond_4
    move v0, v3

    .line 1956
    goto :goto_2

    .line 1896
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_b
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_0
        0x6d -> :sswitch_0
        0xc8 -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method
