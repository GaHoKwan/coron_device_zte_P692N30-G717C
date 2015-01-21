.class Lcom/mediatek/mock/hardware/MockCamera$EventHandler;
.super Landroid/os/Handler;
.source "MockCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mock/hardware/MockCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Lcom/mediatek/mock/hardware/MockCamera;

.field final synthetic this$0:Lcom/mediatek/mock/hardware/MockCamera;


# direct methods
.method public constructor <init>(Lcom/mediatek/mock/hardware/MockCamera;Lcom/mediatek/mock/hardware/MockCamera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    .line 475
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 476
    iput-object p2, p0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->mCamera:Lcom/mediatek/mock/hardware/MockCamera;

    .line 477
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 483
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleMessage: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 673
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown message type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 487
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$000(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$000(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 493
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 499
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 501
    const-string v20, "evbracketshot"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v21, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mCaptureMode:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/mediatek/mock/hardware/MockCamera;->access$300(Lcom/mediatek/mock/hardware/MockCamera;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 509
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$400(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v14

    .line 510
    .local v14, pCb:Landroid/hardware/Camera$PreviewCallback;
    if-eqz v14, :cond_0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mOneShot:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$500(Lcom/mediatek/mock/hardware/MockCamera;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/mediatek/mock/hardware/MockCamera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v20 .. v21}, Lcom/mediatek/mock/hardware/MockCamera;->access$402(Lcom/mediatek/mock/hardware/MockCamera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 522
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 516
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mWithBuffer:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$600(Lcom/mediatek/mock/hardware/MockCamera;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    #calls: Lcom/mediatek/mock/hardware/MockCamera;->setHasPreviewCallback(ZZ)V
    invoke-static/range {v20 .. v22}, Lcom/mediatek/mock/hardware/MockCamera;->access$700(Lcom/mediatek/mock/hardware/MockCamera;ZZ)V

    goto :goto_1

    .line 527
    .end local v14           #pCb:Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$800(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$800(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 533
    :sswitch_5
    const/4 v6, 0x0

    .line 534
    .local v6, cb:Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$900(Lcom/mediatek/mock/hardware/MockCamera;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 535
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1000(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v6

    .line 536
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    if-eqz v6, :cond_0

    .line 538
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    const/4 v15, 0x0

    .line 539
    .local v15, success:Z
    :goto_2
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v6, v15, v0}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 536
    .end local v15           #success:Z
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 538
    :cond_3
    const/4 v15, 0x1

    goto :goto_2

    .line 544
    .end local v6           #cb:Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    :goto_3
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    const/16 v20, 0x0

    goto :goto_3

    .line 550
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Landroid/hardware/Camera$Face;

    check-cast v20, [Landroid/hardware/Camera$Face;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 556
    :sswitch_8
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1300(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1300(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 563
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1400(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1400(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    const/16 v20, 0x0

    :goto_4
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x1

    goto :goto_4

    .line 569
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 615
    :pswitch_0
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown MTK-extended notify message type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 572
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1500(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1500(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto/16 :goto_0

    .line 578
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1600(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ASDCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1600(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ASDCallback;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/hardware/Camera$ASDCallback;->onDetecte(I)V

    goto/16 :goto_0

    .line 584
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1700(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1700(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$MAVCallback;->onFrame()V

    goto/16 :goto_0

    .line 590
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1800(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1800(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/hardware/Camera$ContinuousShotDone;->onConinuousShotDone(I)V

    goto/16 :goto_0

    .line 595
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1900(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$1900(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$ZSDPreviewDone;->onPreviewDone()V

    goto/16 :goto_0

    .line 600
    :pswitch_6
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "preview frame arrived, sFrameReporter = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/mediatek/mock/hardware/MockCamera;->access$2000()Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$2100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/graphics/SurfaceTexture;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 603
    .local v7, clz:Ljava/lang/Class;
    const-string v20, "mEventHandler"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 604
    .local v11, field:Ljava/lang/reflect/Field;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$2100(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/graphics/SurfaceTexture;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Handler;

    .line 606
    .local v16, tempHandler:Landroid/os/Handler;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 607
    .local v12, hCls:Ljava/lang/Class;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 608
    .end local v7           #clz:Ljava/lang/Class;
    .end local v11           #field:Ljava/lang/reflect/Field;
    .end local v12           #hCls:Ljava/lang/Class;
    .end local v16           #tempHandler:Landroid/os/Handler;
    :catch_0
    move-exception v9

    .line 609
    .local v9, e1:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 610
    .end local v9           #e1:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v10

    .line 611
    .local v10, e2:Ljava/lang/IllegalAccessException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 621
    .end local v10           #e2:Ljava/lang/IllegalAccessException;
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    .line 667
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown MTK-extended data message type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 624
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v5, v20

    check-cast v5, [B

    .line 626
    .local v5, byteArray:[B
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v5

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 629
    .local v13, intBuf:Ljava/nio/IntBuffer;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v20

    if-nez v20, :cond_6

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$2200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 631
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v17

    .line 632
    .local v17, x:I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v19

    .line 633
    .local v19, y:I
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    .line 634
    .local v8, dir:I
    const v20, 0xffff

    and-int v20, v20, v17

    shl-int/lit8 v20, v20, 0x10

    const v21, 0xffff

    and-int v21, v21, v19

    add-int v18, v20, v21

    .line 635
    .local v18, xy:I
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "call mAUTORAMAMVCallback: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/mock/hardware/MockCamera;->access$2300(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dir:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " x:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " y:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " xy:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$2200(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1, v8}, Landroid/hardware/Camera$AUTORAMAMVCallback;->onFrame(II)V

    goto/16 :goto_0

    .line 640
    .end local v8           #dir:I
    .end local v17           #x:I
    .end local v18           #xy:I
    .end local v19           #y:I
    :cond_6
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "call mAUTORAMACallback: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/mock/hardware/MockCamera;->access$2300(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$2300(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$2300(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/hardware/Camera$AUTORAMACallback;->onCapture()V

    goto/16 :goto_0

    .line 649
    .end local v5           #byteArray:[B
    .end local v13           #intBuf:Ljava/nio/IntBuffer;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v5, v20

    check-cast v5, [B

    .line 651
    .restart local v5       #byteArray:[B
    const-string v20, "MockCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v5

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$2400(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mock/hardware/MockCamera$EventHandler;->this$0:Lcom/mediatek/mock/hardware/MockCamera;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/mock/hardware/MockCamera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/mock/hardware/MockCamera;->access$2400(Lcom/mediatek/mock/hardware/MockCamera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v4

    .line 662
    .local v4, afDatacb:Landroid/hardware/Camera$AFDataCallback;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 485
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_b
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x40000000 -> :sswitch_a
    .end sparse-switch

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 621
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
