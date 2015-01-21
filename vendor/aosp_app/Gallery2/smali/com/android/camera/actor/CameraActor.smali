.class public abstract Lcom/android/camera/actor/CameraActor;
.super Ljava/lang/Object;
.source "CameraActor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraActor"


# instance fields
.field protected final mContext:Lcom/android/camera/Camera;

.field protected mFocusManager:Lcom/android/camera/FocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    .line 36
    return-void
.end method


# virtual methods
.method public cancelContinuousShotforRotate()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public getASDCallback()Landroid/hardware/Camera$ASDCallback;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAUTORAMACallback()Landroid/hardware/Camera$AUTORAMACallback;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAUTORAMAMVCallback()Landroid/hardware/Camera$AUTORAMAMVCallback;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Lcom/android/camera/Camera;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method public getContinuousShotDone()Landroid/hardware/Camera$ContinuousShotDone;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaceDetectionListener()Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusManagerListener()Lcom/android/camera/FocusManager$Listener;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMAVCallback()Landroid/hardware/Camera$MAVCallback;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMode()I
.end method

.method public getObjectTrackingListener()Landroid/hardware/Camera$ObjectTrackingListener;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnZoomChangeListener()Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewCallback()Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRetakeListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmileCallback()Landroid/hardware/Camera$SmileCallback;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getonLongPressListener()Lcom/android/camera/Camera$OnLongPressListener;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleFocus()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method protected isFromInternal()Z
    .locals 5

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 195
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, action:Ljava/lang/String;
    const-string v2, "CameraActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 111
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraClose()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onCameraDisabled()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onCameraOpenDone()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onCameraOpenFailed()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 0
    .parameter "startPreview"

    .prologue
    .line 169
    return-void
.end method

.method public onDisplayRotate()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onEffectsDeactive()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 203
    return-void
.end method

.method public onMediaEject()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 189
    return-void
.end method

.method public onRestoreSettings()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onUserInteraction()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public setSurfaceTextureReady(Z)V
    .locals 0
    .parameter "ready"

    .prologue
    .line 208
    return-void
.end method

.method public showOtToast()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public stopPreview()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
