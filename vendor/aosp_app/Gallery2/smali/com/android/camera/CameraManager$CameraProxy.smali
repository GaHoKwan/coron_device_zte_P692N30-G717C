.class public Lcom/android/camera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# static fields
.field private static final ENGINE_ACCESS_MAX_TIMEOUT_MS:I = 0x1f4


# instance fields
.field private mAsyncRunnable:Ljava/lang/Runnable;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraManager;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 357
    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->assertError(Z)V

    .line 358
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/CameraManager$CameraProxy;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private lockParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 691
    const-string v0, "CameraManager"

    const-string v1, "lockParameters: grabbing lock"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 693
    const-string v0, "CameraManager"

    const-string v1, "lockParameters: grabbed lock"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method private tryLockParameters(J)Z
    .locals 4
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 702
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try lock: grabbing lock with timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 704
    .local v0, acquireSem:Z
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try lock: grabbed lock status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return v0
.end method

.method private unlockParameters()V
    .locals 2

    .prologue
    .line 697
    const-string v0, "CameraManager"

    const-string v1, "lockParameters: releasing lock"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 699
    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2
    .parameter "callbackBuffer"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 413
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 414
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 415
    return-void
.end method

.method public addRawImageCallbackBuffer([B)V
    .locals 2
    .parameter "callbackBuffer"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 420
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 421
    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 426
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 427
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 431
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 433
    return-void
.end method

.method public cancelContinuousShot()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 652
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 653
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 654
    return-void
.end method

.method public cancelSDPreview()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 647
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 648
    return-void
.end method

.method public getCamera()Lcom/mediatek/camera/ICamera;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 567
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 568
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 387
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 389
    return-void
.end method

.method public lockParametersRun(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "runnable"

    .prologue
    .line 710
    const/4 v1, 0x0

    .line 712
    .local v1, lockedParameters:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraProxy;->lockParameters()V

    .line 713
    const/4 v1, 0x1

    .line 714
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    if-eqz v1, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraProxy;->unlockParameters()V

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "CameraManager"

    const-string v3, "lockParametersRun() not successfull."

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    if-eqz v1, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraProxy;->unlockParameters()V

    goto :goto_0

    .line 718
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 719
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraProxy;->unlockParameters()V

    :cond_1
    throw v2
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 372
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 374
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 377
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 366
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 368
    return-void
.end method

.method public setASDCallback(Landroid/hardware/Camera$ASDCallback;)V
    .locals 2
    .parameter "asdCallback"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 628
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 629
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 630
    return-void
.end method

.method public setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V
    .locals 2
    .parameter "autoramaCallback"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 586
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 587
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 588
    return-void
.end method

.method public setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V
    .locals 2
    .parameter "autoramamvCallback"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 592
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 593
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 594
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 439
    return-void
.end method

.method public setCShotDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 670
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 671
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 672
    return-void
.end method

.method public setContinuousShotState(II)V
    .locals 2
    .parameter "storedSize"
    .parameter "leftMemory"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 659
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 660
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 457
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 459
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 460
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 505
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 506
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 507
    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 470
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 471
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 472
    return-void
.end method

.method public setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V
    .locals 2
    .parameter "mavCallback"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 610
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 611
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 612
    return-void
.end method

.method public setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 488
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 489
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 490
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 511
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 512
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 513
    return-void
.end method

.method public setParametersAsync(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    const/16 v1, 0x15

    .line 516
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 518
    return-void
.end method

.method public setParametersAsync(Lcom/android/camera/Camera;I)V
    .locals 3
    .parameter "context"
    .parameter "zoomValue"

    .prologue
    .line 522
    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    :cond_0
    new-instance v0, Lcom/android/camera/CameraManager$CameraProxy$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/camera/CameraManager$CameraProxy$2;-><init>(Lcom/android/camera/CameraManager$CameraProxy;ILcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;

    .line 559
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 560
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParametersAsync("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mAsyncRunnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    monitor-exit p0

    .line 562
    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 408
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 409
    return-void
.end method

.method public setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 664
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 665
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 666
    return-void
.end method

.method public setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 393
    return-void
.end method

.method public setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
    .locals 2
    .parameter "smileCallback"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 634
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 635
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 636
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 465
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 466
    return-void
.end method

.method public startAUTORAMA(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 598
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 599
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 600
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 476
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 477
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 478
    return-void
.end method

.method public startMAV(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 616
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 617
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 618
    return-void
.end method

.method public startMotionTrack(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 676
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x75

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 677
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 678
    return-void
.end method

.method public startOT(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 493
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 494
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 495
    return-void
.end method

.method public startPreviewAsync()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    return-void
.end method

.method public startSDPreview()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 640
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 642
    return-void
.end method

.method public startSmoothZoom(I)V
    .locals 3
    .parameter "zoomValue"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 582
    return-void
.end method

.method public stopAUTORAMA(I)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 604
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 605
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 606
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 482
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 483
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 484
    return-void
.end method

.method public stopMAV(I)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 622
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 623
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 624
    return-void
.end method

.method public stopMotionTrack()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 682
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 683
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 684
    return-void
.end method

.method public stopOT()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 499
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 500
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 501
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 401
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 403
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 7
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 445
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/camera/CameraManager$CameraProxy$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraManager$CameraProxy$1;-><init>(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 453
    return-void
.end method

.method public tryLockParametersRun(Ljava/lang/Runnable;)Z
    .locals 5
    .parameter "runnable"

    .prologue
    .line 725
    const/4 v1, 0x0

    .line 727
    .local v1, lockedParameters:Z
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->tryLockParameters(J)Z

    move-result v1

    .line 728
    if-eqz v1, :cond_0

    .line 729
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :cond_0
    if-eqz v1, :cond_1

    .line 735
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraProxy;->unlockParameters()V

    .line 738
    :cond_1
    :goto_0
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryLockParametersRun("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return v1

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "CameraManager"

    const-string v3, "tryLockParametersRun() not successfull."

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    if-eqz v1, :cond_1

    .line 735
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraProxy;->unlockParameters()V

    goto :goto_0

    .line 734
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 735
    invoke-direct {p0}, Lcom/android/camera/CameraManager$CameraProxy;->unlockParameters()V

    :cond_2
    throw v2
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 381
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 383
    return-void
.end method

.method public waitForIdle()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->closeSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$600(Lcom/android/camera/CameraManager;)V

    .line 573
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #calls: Lcom/android/camera/CameraManager;->blockSig()V
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)V

    .line 575
    return-void
.end method
