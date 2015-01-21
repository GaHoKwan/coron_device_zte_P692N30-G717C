.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 127
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 132
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v2, :sswitch_data_0

    .line 331
    :goto_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->openSig()V
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$400(Lcom/android/camera/CameraManager;)V

    .line 332
    :goto_1
    return-void

    .line 136
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraRelease()V

    .line 137
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->release()V

    .line 138
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraRelease()V

    .line 139
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Lcom/mediatek/camera/ICamera;)Lcom/mediatek/camera/ICamera;

    .line 140
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/RuntimeException;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 322
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 326
    :goto_2
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2, v5}, Lcom/android/camera/CameraManager;->access$002(Lcom/android/camera/CameraManager;Lcom/mediatek/camera/ICamera;)Lcom/mediatek/camera/ICamera;

    .line 327
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2, v5}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 329
    :cond_0
    throw v0

    .line 144
    .end local v0           #e:Ljava/lang/RuntimeException;
    :sswitch_2
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 146
    :try_start_4
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->reconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 147
    :catch_1
    move-exception v1

    .line 148
    .local v1, ex:Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v2, v1}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 153
    .end local v1           #ex:Ljava/io/IOException;
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->unlock()V

    goto :goto_0

    .line 157
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->lock()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 162
    :sswitch_5
    :try_start_6
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 163
    :catch_2
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_6
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStartPreview()V

    .line 170
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->startPreview()V

    .line 171
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStartPreview()V

    goto/16 :goto_1

    .line 175
    :sswitch_7
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStopPreview()V

    .line 176
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->stopPreview()V

    .line 177
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStopPreview()V

    goto/16 :goto_0

    .line 181
    :sswitch_8
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 186
    :sswitch_9
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 190
    :sswitch_a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 194
    :sswitch_b
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 198
    :sswitch_c
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_0

    .line 203
    :sswitch_d
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/mediatek/camera/ICamera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 207
    :sswitch_e
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 212
    :sswitch_f
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 217
    :sswitch_10
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->startFaceDetection()V

    goto/16 :goto_0

    .line 221
    :sswitch_11
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->stopFaceDetection()V

    goto/16 :goto_0

    .line 225
    :sswitch_12
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ErrorCallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 229
    :sswitch_13
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSetParameters()V

    .line 230
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$Parameters;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 231
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSetParameters()V

    goto/16 :goto_0

    .line 235
    :sswitch_14
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileGetParameters()V

    .line 236
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/camera/ICamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$302(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 237
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileGetParameters()V

    goto/16 :goto_0

    .line 241
    :sswitch_15
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSetParameters()V

    .line 242
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$Parameters;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 243
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSetParameters()V

    goto/16 :goto_1

    .line 250
    :sswitch_16
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/mediatek/camera/ICamera;->startSmoothZoom(I)V

    goto/16 :goto_0

    .line 253
    :sswitch_17
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AUTORAMACallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    goto/16 :goto_0

    .line 256
    :sswitch_18
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AUTORAMAMVCallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    goto/16 :goto_0

    .line 259
    :sswitch_19
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/mediatek/camera/ICamera;->startAUTORAMA(I)V

    goto/16 :goto_0

    .line 262
    :sswitch_1a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/mediatek/camera/ICamera;->stopAUTORAMA(I)V

    goto/16 :goto_0

    .line 265
    :sswitch_1b
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$MAVCallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    goto/16 :goto_0

    .line 268
    :sswitch_1c
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/mediatek/camera/ICamera;->startMAV(I)V

    goto/16 :goto_0

    .line 271
    :sswitch_1d
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/mediatek/camera/ICamera;->stopMAV(I)V

    goto/16 :goto_0

    .line 274
    :sswitch_1e
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ASDCallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setASDCallback(Landroid/hardware/Camera$ASDCallback;)V

    goto/16 :goto_0

    .line 277
    :sswitch_1f
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$SmileCallback;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    goto/16 :goto_0

    .line 280
    :sswitch_20
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->startSDPreview()V

    goto/16 :goto_0

    .line 283
    :sswitch_21
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->cancelSDPreview()V

    goto/16 :goto_0

    .line 286
    :sswitch_22
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->cancelContinuousShot()V

    goto/16 :goto_0

    .line 289
    :sswitch_23
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/mediatek/camera/ICamera;->setContinuousShotState(II)V

    goto/16 :goto_0

    .line 292
    :sswitch_24
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ZSDPreviewDone;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    goto/16 :goto_0

    .line 295
    :sswitch_25
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ContinuousShotDone;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setCSDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V

    goto/16 :goto_0

    .line 298
    :sswitch_26
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->addRawImageCallbackBuffer([B)V

    goto/16 :goto_0

    .line 301
    :sswitch_27
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/mediatek/camera/ICamera;->startOT(II)V

    goto/16 :goto_0

    .line 304
    :sswitch_28
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->stopOT()V

    goto/16 :goto_0

    .line 307
    :sswitch_29
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ObjectTrackingListener;

    invoke-interface {v3, v2}, Lcom/mediatek/camera/ICamera;->setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V

    goto/16 :goto_0

    .line 310
    :sswitch_2a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/mediatek/camera/ICamera;->startMotionTrack(I)V

    goto/16 :goto_0

    .line 313
    :sswitch_2b
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/camera/ICamera;->stopMotionTrack()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 323
    .local v0, e:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 324
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "CameraManager"

    const-string v3, "Fail to release the camera."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_0
        0x17 -> :sswitch_27
        0x18 -> :sswitch_28
        0x19 -> :sswitch_29
        0x64 -> :sswitch_16
        0x65 -> :sswitch_17
        0x66 -> :sswitch_18
        0x67 -> :sswitch_19
        0x68 -> :sswitch_1a
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_1c
        0x6b -> :sswitch_1d
        0x6c -> :sswitch_1e
        0x6d -> :sswitch_1f
        0x6e -> :sswitch_20
        0x6f -> :sswitch_21
        0x70 -> :sswitch_22
        0x72 -> :sswitch_24
        0x73 -> :sswitch_25
        0x74 -> :sswitch_26
        0x75 -> :sswitch_2a
        0x76 -> :sswitch_2b
        0x77 -> :sswitch_23
    .end sparse-switch
.end method
