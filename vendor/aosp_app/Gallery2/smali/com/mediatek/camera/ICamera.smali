.class public interface abstract Lcom/mediatek/camera/ICamera;
.super Ljava/lang/Object;
.source "ICamera.java"


# virtual methods
.method public abstract addCallbackBuffer([B)V
.end method

.method public abstract addRawImageCallbackBuffer([B)V
.end method

.method public abstract autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract cancelContinuousShot()V
.end method

.method public abstract cancelSDPreview()V
.end method

.method public abstract getInstance()Landroid/hardware/Camera;
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract lock()V
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setASDCallback(Landroid/hardware/Camera$ASDCallback;)V
.end method

.method public abstract setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V
.end method

.method public abstract setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V
.end method

.method public abstract setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
.end method

.method public abstract setCSDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setContinuousShotState(II)V
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
.end method

.method public abstract setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
.end method

.method public abstract setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V
.end method

.method public abstract setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V
.end method

.method public abstract setParameters(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
.end method

.method public abstract setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
.end method

.method public abstract setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
.end method

.method public abstract startAUTORAMA(I)V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startMAV(I)V
.end method

.method public abstract startMotionTrack(I)V
.end method

.method public abstract startOT(II)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract startSDPreview()V
.end method

.method public abstract startSmoothZoom(I)V
.end method

.method public abstract stopAUTORAMA(I)V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopMAV(I)V
.end method

.method public abstract stopMotionTrack()V
.end method

.method public abstract stopOT()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end method

.method public abstract unlock()V
.end method
