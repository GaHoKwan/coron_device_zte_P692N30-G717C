.class Lcom/android/camera/Camera$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancel:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancel:Z

    .line 480
    return-void
.end method

.method public isCanceled()Z
    .locals 3

    .prologue
    .line 483
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCanceled() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-boolean v0, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancel:Z

    return v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/16 v12, 0x9

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 375
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraStartUp()V

    .line 377
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v7}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v7

    #calls: Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    invoke-static {v6, v7}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;Lcom/android/camera/ComboPreferences;)I

    move-result v0

    .line 378
    .local v0, cameraId:I
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)I

    move-result v6

    if-eq v6, v0, :cond_0

    .line 379
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CameraStartUpThread.run() camera id preference="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", memory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v8}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v7}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 383
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    const/4 v7, 0x0

    #setter for: Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v6, v7}, Lcom/android/camera/Camera;->access$2602(Lcom/android/camera/Camera;Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    .line 385
    :cond_0
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v3

    .line 386
    .local v3, effectType:I
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v2

    .line 387
    .local v2, effectParameter:Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectType:I
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)I

    move-result v6

    if-ne v3, v6, :cond_2

    if-nez v2, :cond_1

    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 389
    :cond_2
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CameraStartUpThread.run() preference=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") memory=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectType:I
    invoke-static {v8}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectType:I
    invoke-static {v7}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastEffectParameter:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/camera/CameraSettings;->writePreferredVideoEffect(Landroid/content/SharedPreferences;ILjava/lang/Object;)V

    .line 394
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v8, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v8}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    #setter for: Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v6, v7}, Lcom/android/camera/Camera;->access$2902(Lcom/android/camera/Camera;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 396
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->prepareMockCamera()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;)V

    .line 397
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    const/4 v7, 0x1

    #setter for: Lcom/android/camera/Camera;->mCameraOpened:Z
    invoke-static {v6, v7}, Lcom/android/camera/Camera;->access$3102(Lcom/android/camera/Camera;Z)Z
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getOriginalParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    #setter for: Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v6, v7}, Lcom/android/camera/Camera;->access$3202(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 416
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraParameterCopy()V

    .line 417
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->copy()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    #setter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6, v7}, Lcom/android/camera/Camera;->access$3302(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 418
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v7}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/camera/ModeChecker;->updateModeMatrix(Lcom/android/camera/Camera;I)V

    .line 419
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraParameterCopy()V

    .line 420
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/actor/CameraActor;->onCameraOpenDone()V

    .line 421
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraPreviewPreReadyBlock()V

    .line 422
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Landroid/os/ConditionVariable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->block()V

    .line 423
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraPreviewPreReadyBlock()V

    .line 424
    iget-boolean v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancel:Z

    if-eqz v6, :cond_4

    .line 425
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraStartUp()V

    .line 476
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, e:Lcom/android/camera/CameraHardwareException;
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/actor/CameraActor;->onCameraOpenFailed()V

    .line 400
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOpenCameraFail:Z
    invoke-static {v6, v9}, Lcom/android/camera/Camera;->access$1402(Lcom/android/camera/Camera;Z)Z

    .line 401
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    #calls: Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;
    invoke-static {v12}, Lcom/android/camera/Camera;->access$000(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraStartUp()V

    goto :goto_0

    .line 406
    .end local v1           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 407
    .local v1, e:Lcom/android/camera/CameraDisabledException;
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/actor/CameraActor;->onCameraDisabled()V

    .line 408
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraDisabled:Z
    invoke-static {v6, v9}, Lcom/android/camera/Camera;->access$1502(Lcom/android/camera/Camera;Z)Z

    .line 409
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    #calls: Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;
    invoke-static {v13}, Lcom/android/camera/Camera;->access$000(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraStartUp()V

    goto :goto_0

    .line 428
    .end local v1           #e:Lcom/android/camera/CameraDisabledException;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFocusManager()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)V

    .line 429
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)V

    .line 432
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeCameraPreferences()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)V

    .line 433
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->clearDeviceCallbacks()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)V

    .line 434
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyDeviceCallbacks()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)V

    .line 435
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->clearViewCallbacks()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)V

    .line 436
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applayViewCallbacks()V
    invoke-static {v6}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)V

    .line 439
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/Camera;->getPowerLevel()I

    move-result v7

    iput v7, v6, Lcom/android/camera/Camera;->mPowerLevel:I

    .line 440
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget v6, v6, Lcom/android/camera/Camera;->mPowerLevel:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_7

    .line 441
    sput-boolean v9, Lcom/android/camera/Camera;->mPowerLow:Z

    .line 442
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6, v10}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 443
    .local v4, pref:Lcom/android/camera/ListPreference;
    if-eqz v4, :cond_5

    .line 444
    const-string v6, "off"

    invoke-virtual {v4, v6}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 451
    .end local v4           #pref:Lcom/android/camera/ListPreference;
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v6, v9}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;Z)V

    .line 452
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    #setter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v6, v7, v8}, Lcom/android/camera/Camera;->access$802(Lcom/android/camera/Camera;J)J

    .line 453
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 454
    #calls: Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;
    invoke-static {v11}, Lcom/android/camera/Camera;->access$000(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 457
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    #calls: Lcom/android/camera/Camera;->getMsgLabel(I)Ljava/lang/String;
    invoke-static {v9}, Lcom/android/camera/Camera;->access$000(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/manager/MMProfileManager;->triggersSendMessage(Ljava/lang/String;)V

    .line 461
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v6}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/manager/ModePicker;->getCurrentMode()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 462
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedCaptureMode()Ljava/util/List;

    move-result-object v5

    .line 463
    .local v5, supportedCaptureMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    const-string v6, "continuousshot"

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 466
    iget-object v6, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    new-instance v7, Lcom/android/camera/Camera$CameraStartUpThread$1;

    invoke-direct {v7, p0}, Lcom/android/camera/Camera$CameraStartUpThread$1;-><init>(Lcom/android/camera/Camera$CameraStartUpThread;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 475
    .end local v5           #supportedCaptureMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraStartUp()V

    goto/16 :goto_0

    .line 448
    :cond_7
    sput-boolean v10, Lcom/android/camera/Camera;->mPowerLow:Z

    goto :goto_1
.end method
