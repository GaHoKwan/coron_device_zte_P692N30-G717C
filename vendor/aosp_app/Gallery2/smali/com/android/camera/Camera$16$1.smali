.class Lcom/android/camera/Camera$16$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$16;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$16;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$16;)V
    .locals 0
    .parameter

    .prologue
    .line 2459
    iput-object p1, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2462
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mLastEffectType:I
    invoke-static {v0, v4}, Lcom/android/camera/Camera;->access$2702(Lcom/android/camera/Camera;I)I

    .line 2463
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v0, v6}, Lcom/android/camera/Camera;->access$2802(Lcom/android/camera/Camera;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->onRestoreSettings()V

    .line 2465
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 2466
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v1, v1, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v2, v2, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v3, v3, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Z)V

    .line 2468
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$6200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ZoomManager;->resetZoom()V

    .line 2470
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mVoiceManager:Lcom/android/camera/VoiceManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4500(Lcom/android/camera/Camera;)Lcom/android/camera/VoiceManager;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/VoiceManager;->setVoiceValue(Ljava/lang/String;)V

    .line 2472
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v0

    if-eq v5, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v0, v4}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;Z)V

    .line 2475
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2476
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 2490
    :goto_0
    return-void

    .line 2478
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    goto :goto_0

    .line 2482
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/manager/ModePicker;->setModePreference(Lcom/android/camera/ListPreference;)V

    .line 2484
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2485
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    goto :goto_0

    .line 2487
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera$16$1;->this$1:Lcom/android/camera/Camera$16;

    iget-object v0, v0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    goto :goto_0
.end method
