.class public Lcom/mediatek/mock/hardware/FaceDetectionThread;
.super Ljava/lang/Thread;
.source "FaceDetectionThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetection"


# instance fields
.field private mQuit:Z

.field private mRandom:Ljava/util/Random;

.field private mStartDetect:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mock/hardware/FaceDetectionThread;->mRandom:Ljava/util/Random;

    .line 14
    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/FaceDetectionThread;->mStartDetect:Z

    .line 15
    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/FaceDetectionThread;->mQuit:Z

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 32
    const/16 v1, 0x3e8

    .line 34
    .local v1, nextScheduleTime:I
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/mock/hardware/FaceDetectionThread;->mQuit:Z

    if-eqz v3, :cond_0

    .line 47
    return-void

    .line 37
    :cond_0
    iget-boolean v3, p0, Lcom/mediatek/mock/hardware/FaceDetectionThread;->mStartDetect:Z

    if-eqz v3, :cond_1

    .line 38
    iget-object v3, p0, Lcom/mediatek/mock/hardware/FaceDetectionThread;->mRandom:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 39
    .local v2, seed:I
    rem-int/lit8 v3, v2, 0x17

    .line 42
    .end local v2           #seed:I
    :cond_1
    int-to-long v3, v1

    :try_start_0
    invoke-static {v3, v4}, Lcom/mediatek/mock/hardware/FaceDetectionThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "FaceDetection"

    const-string v4, "break from Idle"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/FaceDetectionThread;->mStartDetect:Z

    .line 23
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 24
    return-void
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/FaceDetectionThread;->mStartDetect:Z

    .line 28
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 29
    return-void
.end method
