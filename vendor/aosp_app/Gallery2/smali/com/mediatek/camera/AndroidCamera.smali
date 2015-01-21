.class public Lcom/mediatek/camera/AndroidCamera;
.super Ljava/lang/Object;
.source "AndroidCamera.java"

# interfaces
.implements Lcom/mediatek/camera/ICamera;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidCamera"


# instance fields
.field protected mCamera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 1
    .parameter "camera"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->assertError(Z)V

    .line 37
    iput-object p1, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 46
    return-void
.end method

.method public addRawImageCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    .line 50
    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 54
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 58
    return-void
.end method

.method public cancelContinuousShot()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelContinuousShot()V

    .line 62
    return-void
.end method

.method public cancelSDPreview()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelSDPreview()V

    .line 66
    return-void
.end method

.method public getInstance()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 70
    return-void
.end method

.method public reconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 82
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 78
    return-void
.end method

.method public setASDCallback(Landroid/hardware/Camera$ASDCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setASDCallback(Landroid/hardware/Camera$ASDCallback;)V

    .line 86
    return-void
.end method

.method public setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    .line 94
    return-void
.end method

.method public setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 98
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 90
    return-void
.end method

.method public setCSDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setCSDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V

    .line 105
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 101
    return-void
.end method

.method public setContinuousShotState(II)V
    .locals 1
    .parameter "sotredSize"
    .parameter "leftMemory"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera;->setContinuousShotState(II)V

    .line 109
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 113
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 117
    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 121
    return-void
.end method

.method public setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    .line 125
    return-void
.end method

.method public setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V

    .line 173
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 129
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 133
    return-void
.end method

.method public setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    .line 137
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 141
    return-void
.end method

.method public setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 145
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 149
    return-void
.end method

.method public startAUTORAMA(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startAUTORAMA(I)V

    .line 157
    return-void
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 161
    return-void
.end method

.method public startMAV(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startMAV(I)V

    .line 177
    return-void
.end method

.method public startMotionTrack(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startMotionTrack(I)V

    .line 206
    return-void
.end method

.method public startOT(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera;->startOT(II)V

    .line 165
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "AndroidCamera"

    const-string v1, "startPreview()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 182
    return-void
.end method

.method public startSDPreview()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startSDPreview()V

    .line 190
    return-void
.end method

.method public startSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 186
    return-void
.end method

.method public stopAUTORAMA(I)V
    .locals 1
    .parameter "isMerge"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->stopAUTORAMA(I)V

    .line 194
    return-void
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 198
    return-void
.end method

.method public stopMAV(I)V
    .locals 1
    .parameter "isMerge"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->stopMAV(I)V

    .line 202
    return-void
.end method

.method public stopMotionTrack()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopMotionTrack()V

    .line 210
    return-void
.end method

.method public stopOT()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopOT()V

    .line 169
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 214
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 219
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 224
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/camera/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 228
    return-void
.end method
