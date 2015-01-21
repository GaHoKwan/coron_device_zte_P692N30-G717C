.class Lcom/android/camera/Camera$1;
.super Landroid/os/Handler;
.source "Camera.java"


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
    .line 288
    iput-object p1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 291
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/MMProfileManager;->startProfileHandleMessage(Ljava/lang/String;)V

    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileHandleMessage()V

    .line 366
    return-void

    .line 295
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-static {v0, v4}, Lcom/android/camera/Camera;->access$102(Lcom/android/camera/Camera;Lcom/android/camera/Camera$CameraStartUpThread;)Lcom/android/camera/Camera$CameraStartUpThread;

    goto :goto_0

    .line 298
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyParametersReady()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$200(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 301
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyPreferenceReady()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$300(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 309
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    const/4 v1, -0x1

    #setter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$602(Lcom/android/camera/Camera;I)I

    .line 312
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->onDisplayRotate()V

    .line 314
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #calls: Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/Camera;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayed 100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyOrientationChanged()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 323
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 326
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    goto/16 :goto_0

    .line 329
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 332
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doShowIndicator()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 338
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;Z)V

    goto/16 :goto_0

    .line 341
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-static {v0, v4}, Lcom/android/camera/Camera;->access$102(Lcom/android/camera/Camera;Lcom/android/camera/Camera$CameraStartUpThread;)Lcom/android/camera/Camera$CameraStartUpThread;

    .line 342
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOpenCameraFail:Z
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$1402(Lcom/android/camera/Camera;Z)Z

    .line 343
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    const v1, 0x7f0c0117

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 346
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-static {v0, v4}, Lcom/android/camera/Camera;->access$102(Lcom/android/camera/Camera;Lcom/android/camera/Camera$CameraStartUpThread;)Lcom/android/camera/Camera$CameraStartUpThread;

    .line 347
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraDisabled:Z
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$1502(Lcom/android/camera/Camera;Z)Z

    .line 348
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    const v1, 0x7f0c0118

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 351
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)V

    goto/16 :goto_0

    .line 355
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 356
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDelayShowInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/InfoManager;->showText(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDelayOtherMessageTime:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)I

    move-result v1

    #calls: Lcom/android/camera/Camera;->showIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;I)V

    goto/16 :goto_0

    .line 360
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ModePicker;->setEnabled(Z)V

    goto/16 :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
