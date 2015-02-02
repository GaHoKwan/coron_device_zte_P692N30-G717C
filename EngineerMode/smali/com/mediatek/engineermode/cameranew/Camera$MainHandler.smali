.class Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x3

    const-wide/16 v8, 0x64

    const/16 v7, 0x66

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 295
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 508
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 297
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 300
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->initializeFirstTime()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$500(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto :goto_0

    .line 303
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mDisplayRotation:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$600(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 304
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->setDisplayOrientation()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$700(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 306
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mOnResumeTime:J
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$800(Lcom/mediatek/engineermode/cameranew/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 311
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$900(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto :goto_0

    .line 314
    :sswitch_5
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 316
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->setCameraState(I)V
    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1200(Lcom/mediatek/engineermode/cameranew/Camera;I)V

    .line 317
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$900(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 318
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->capture()V

    .line 319
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-virtual {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->onShutterButtonFocus(Z)V

    .line 320
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->startPreview()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1300(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto :goto_0

    .line 325
    :sswitch_6
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1400(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 326
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1502(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 327
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mTripleCount:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1602(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 329
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 330
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 331
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->isLockAeAwbAfMode(I)Z
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2000(Lcom/mediatek/engineermode/cameranew/Camera;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2100(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mEnableAeAwbLock:Z
    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2102(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 333
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1, v5}, Lcom/mediatek/engineermode/cameranew/FocusManager;->setAeAwbLock(Z)V

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->startPreview()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1300(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 336
    const-string v1, "test/camera"

    const-string v2, "Enabled mCaptureBtn"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :sswitch_7
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1400(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    const-string v1, "test/camera"

    const-string v2, "Disabled mCaptureBtn"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->resetPrivateParams()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2200(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto/16 :goto_0

    .line 344
    :sswitch_8
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CAPTURE_ACTION af mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mCameraState:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-eq v1, v10, :cond_3

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    :cond_3
    const-string v1, "test/camera"

    const-string v2, "EVENT_CAPTURE_ACTION return1"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->isStorageEnough4Capture()Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2300(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 351
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const-string v2, "storage space is not enough or unavailable"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 353
    const-string v1, "test/camera"

    const-string v2, "[FOR_NATA_CAMERA_NO_AVAILABLE_STORAGE]"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_5
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableShutterDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mEnableShutterDelay:Z
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2400(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mShutterDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterDelay:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mEnableShutterDelay:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2400(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterDelay:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-lez v1, :cond_6

    .line 358
    const/16 v1, 0x12e

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mShutterDelay:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 362
    :cond_6
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, v2, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2602(Lcom/mediatek/engineermode/cameranew/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 363
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-ne v1, v6, :cond_c

    .line 364
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-eqz v1, :cond_b

    .line 365
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 366
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 367
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getBestFocusStep()I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketBestPos:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 368
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxFocusStep()I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2802(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 369
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinFocusStep()I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2902(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 370
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bracket max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bracket min "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bracket best "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketBestPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_7
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1708(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 374
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1800(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 375
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketBestPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketIntervel:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v4}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 376
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-le v1, v2, :cond_a

    .line 377
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 378
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 379
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1508(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 381
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 385
    :cond_8
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketBestPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketIntervel:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v4}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 386
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-lt v1, v2, :cond_9

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketRange:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3200(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-le v1, v2, :cond_a

    .line 387
    :cond_9
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 391
    :cond_a
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bracket position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusEngStep(I)V

    .line 393
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 395
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1508(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 402
    :cond_c
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-ne v1, v10, :cond_e

    .line 403
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-nez v1, :cond_16

    .line 404
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 405
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxFocusStep()I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2802(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 406
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinFocusStep()I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2902(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 407
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "through max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " through min "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughDirect:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3300(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-nez v1, :cond_f

    .line 409
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 410
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 471
    :cond_d
    :goto_2
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "through position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusEngStep(I)V

    .line 473
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 475
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    :goto_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3708(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 480
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1508(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 482
    :cond_e
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->capture()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4000(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto/16 :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 411
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_f
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughDirect:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3300(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-ne v1, v6, :cond_10

    .line 412
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 413
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    goto :goto_2

    .line 415
    :cond_10
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-gt v1, v2, :cond_13

    .line 416
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 417
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-lt v1, v2, :cond_11

    .line 418
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 424
    :goto_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-gt v1, v2, :cond_12

    .line 425
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2802(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    goto/16 :goto_2

    .line 420
    :cond_11
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 421
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v2, 0x7f080502

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->setThroughFocusManualPos(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V

    goto :goto_4

    .line 427
    :cond_12
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v2, 0x7f080503

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->setThroughFocusManualPos(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V

    goto/16 :goto_2

    .line 430
    :cond_13
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-le v1, v2, :cond_d

    .line 431
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 432
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-gt v1, v2, :cond_14

    .line 433
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusStartPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 439
    :goto_5
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-lt v1, v2, :cond_15

    .line 440
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mThroughFocusEndPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2902(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    goto/16 :goto_2

    .line 435
    :cond_14
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 436
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v2, 0x7f080502

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->setThroughFocusManualPos(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V

    goto :goto_5

    .line 442
    :cond_15
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v2, 0x7f080503

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->setThroughFocusManualPos(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V

    goto/16 :goto_2

    .line 448
    :cond_16
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1708(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 449
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1800(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 451
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepeat:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_17

    .line 452
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughIntervel:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 453
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 455
    :cond_17
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMaxPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-le v1, v2, :cond_d

    .line 456
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 461
    :cond_18
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepeat:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_19

    .line 462
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughIntervel:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    sub-int/2addr v2, v3

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 463
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfThroughRepearPointer:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 465
    :cond_19
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPosValue:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketMinPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 466
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 476
    :catch_1
    move-exception v0

    .line 477
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 485
    .end local v0           #e:Ljava/lang/InterruptedException;
    :sswitch_9
    const-string v1, "test/camera"

    const-string v2, "EVENT_PREVIEW_RAW_DUMP"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-virtual {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->onShutterButtonFocus(Z)V

    goto/16 :goto_0

    .line 494
    :sswitch_a
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->updateUiCameraInfo()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4100(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 496
    const/16 v1, 0x12d

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 500
    :sswitch_b
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mPausing:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mEnableShutterDelay:Z
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2402(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 502
    const/16 v1, 0x6a

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0xc9 -> :sswitch_0
        0x12d -> :sswitch_a
        0x12e -> :sswitch_b
    .end sparse-switch
.end method
