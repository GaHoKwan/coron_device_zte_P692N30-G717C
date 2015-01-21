.class public Lcom/mediatek/gallery3d/mpo/MavRenderThread;
.super Ljava/lang/Thread;
.source "MavRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/mpo/MavRenderThread$1;,
        Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;,
        Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;
    }
.end annotation


# static fields
.field public static final CONTINUOUS_FRAME_ANIMATION:I = 0x0

.field public static final CONTINUOUS_FRAME_ANIMATION_CHANGE_THRESHOLD:I = 0x2

.field public static final INTERRUPT_FRAME_ANIMATION:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

.field private mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field public mIsActive:Z

.field private mOnDrawMavFrameListener:Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;

.field private mRenderLock:Ljava/lang/Object;

.field public mRenderRequested:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2
    .parameter "galleryActivity"

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "MavRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v0, "Gallery2/MavPlayer"

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->TAG:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    .line 14
    iput-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mOnDrawMavFrameListener:Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderLock:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderRequested:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mIsActive:Z

    .line 26
    iput-object p1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 27
    new-instance v0, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;-><init>(Lcom/mediatek/gallery3d/mpo/MavRenderThread;Lcom/mediatek/gallery3d/mpo/MavRenderThread$1;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    .line 28
    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gallery3d/mpo/MavRenderThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public animationFinished()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    #calls: Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->isFinished()Z
    invoke-static {v0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->access$500(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)Z

    move-result v0

    return v0
.end method

.method public getAnimationTagetIndex()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    #calls: Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->getTagetFrameIndex()I
    invoke-static {v0}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->access$400(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)I

    move-result v0

    return v0
.end method

.method public initAnimation(II)V
    .locals 1
    .parameter "index"
    .parameter "type"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->initAnimation(II)V

    .line 81
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 43
    const/4 v2, -0x4

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 44
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run~~~~~~~~~~~~~~~~~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    mRenderRequested=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderRequested:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->hasPausedActivity()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mIsActive:Z

    if-nez v2, :cond_3

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->TAG:Ljava/lang/String;

    const-string v3, "MavRenderThread:run: exit MavRenderThread"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    :goto_1
    return-void

    .line 50
    :cond_3
    const/4 v1, 0x0

    .line 51
    .local v1, isFinished:Z
    iget-object v3, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 52
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderRequested:Z

    if-eqz v2, :cond_5

    .line 53
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    #calls: Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->advanceAnimation()Z
    invoke-static {v2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->access$100(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)Z

    move-result v1

    .line 54
    if-nez v1, :cond_4

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderRequested:Z

    .line 55
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mOnDrawMavFrameListener:Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;

    iget-object v4, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    #calls: Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->getCurrentFramIndex()I
    invoke-static {v4}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->access$200(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;->drawMavFrame(I)V

    .line 63
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-nez v1, :cond_0

    .line 66
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mAnimation:Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;

    #calls: Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->getIntervalTime()D
    invoke-static {v2}, Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;->access$300(Lcom/mediatek/gallery3d/mpo/MavRenderThread$Animation;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 58
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 59
    :catch_1
    move-exception v0

    .line 60
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit v3

    goto :goto_1

    .line 63
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mIsActive:Z

    .line 39
    return-void
.end method

.method public setOnDrawMavFrameListener(Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;)V
    .locals 0
    .parameter "lisenter"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mOnDrawMavFrameListener:Lcom/mediatek/gallery3d/mpo/MavRenderThread$OnDrawMavFrameListener;

    .line 149
    return-void
.end method

.method public setRenderRequester(Z)V
    .locals 2
    .parameter "request"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderRequested:Z

    .line 33
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavRenderThread;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
