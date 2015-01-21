.class Lcom/android/camera/Camera$18;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/manager/PickerManager$PickerListener;


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
    .line 2905
    iput-object p1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraPicked(I)Z
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v3, 0x0

    .line 2908
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraPicked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPendingSwitchCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPendingSwitchCameraId:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$6600(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2911
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->stopObjectTrack()V

    .line 2914
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPendingSwitchCameraId:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$6600(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2924
    :cond_1
    :goto_0
    return v3

    .line 2918
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2919
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 2922
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2923
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mPendingSwitchCameraId:I
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$6602(Lcom/android/camera/Camera;I)I

    goto :goto_0
.end method

.method public onFlashPicked(Ljava/lang/String;)Z
    .locals 2
    .parameter "flashMode"

    .prologue
    const/16 v1, 0xc

    .line 2929
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mFlashMode:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$6702(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 2930
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2931
    #calls: Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$000(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 2933
    const/4 v0, 0x1

    return v0
.end method

.method public onModePicked(ILcom/android/camera/ListPreference;)Z
    .locals 2
    .parameter "mode"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 2945
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ModePicker;->setEnabled(Z)V

    .line 2946
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/manager/ModePicker;->setModePreference(Lcom/android/camera/ListPreference;)V

    .line 2947
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2949
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 2955
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2953
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    goto :goto_0
.end method

.method public onStereoPicked(Z)Z
    .locals 1
    .parameter "stereoType"

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mStereoMode:Z
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$6802(Lcom/android/camera/Camera;Z)Z

    .line 2939
    iget-object v0, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->refreshModeRelated()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$6900(Lcom/android/camera/Camera;)V

    .line 2940
    const/4 v0, 0x1

    return v0
.end method
