.class public Lcom/mediatek/mock/hardware/AutoSceneDetectThread;
.super Ljava/lang/Thread;
.source "AutoSceneDetectThread.java"


# static fields
.field private static final DETECTINGTIME:I = 0x3e8

.field private static final MAGICNUM:I = 0x17

.field private static final SCENENUM:I = 0x9

.field private static final TAG:Ljava/lang/String; = "AutoSceneDetectThread"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mQuit:Z

.field private mRandom:Ljava/util/Random;

.field private mSupportedMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mQuit:Z

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mRandom:Ljava/util/Random;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mHandler:Landroid/os/Handler;

    .line 25
    iget-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mQuit:Z

    .line 36
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 37
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 40
    const/16 v2, 0x3e8

    .line 42
    .local v2, nextScheduleTime:I
    :goto_0
    iget-boolean v5, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mQuit:Z

    if-eqz v5, :cond_0

    .line 67
    return-void

    .line 45
    :cond_0
    iget-object v5, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mRandom:Ljava/util/Random;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 46
    .local v4, seed:I
    rem-int/lit8 v4, v4, 0x17

    .line 47
    const/16 v5, 0xb

    if-le v4, v5, :cond_2

    .line 48
    iget-object v5, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 49
    .local v3, scene:I
    rem-int/lit8 v3, v3, 0x9

    .line 50
    :goto_1
    iget-object v5, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mSupportedMode:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 51
    iget-object v5, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 52
    rem-int/lit8 v3, v3, 0x9

    goto :goto_1

    .line 54
    :cond_1
    mul-int/lit16 v2, v3, 0x3e8

    .line 55
    iget-object v5, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mHandler:Landroid/os/Handler;

    const/high16 v6, 0x4000

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 57
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 62
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #scene:I
    :goto_2
    int-to-long v5, v2

    :try_start_0
    invoke-static {v5, v6}, Lcom/mediatek/mock/hardware/AutoSceneDetectThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "AutoSceneDetectThread"

    const-string v6, "break from Idle"

    invoke-static {v5, v6}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    const/16 v2, 0x3e8

    goto :goto_2
.end method
