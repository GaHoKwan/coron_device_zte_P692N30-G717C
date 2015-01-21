.class Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/android/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThread"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field private mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private final mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureReady:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/mediatek/ngin3d/android/GLTextureView;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/android/GLTextureView;Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;)V
    .locals 2
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v1, 0x1

    .line 751
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->this$0:Lcom/mediatek/ngin3d/android/GLTextureView;

    .line 752
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 753
    iput-object p2, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

    .line 754
    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestRender:Z

    .line 755
    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurfaceTextureReady:Z

    .line 756
    iput v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderMode:I

    .line 757
    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 749
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 802
    new-instance v10, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    iget-object v11, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->this$0:Lcom/mediatek/ngin3d/android/GLTextureView;

    invoke-direct {v10, v11}, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;-><init>(Lcom/mediatek/ngin3d/android/GLTextureView;)V

    iput-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    .line 803
    iput-boolean v12, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 804
    iput-boolean v12, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 806
    const/4 v5, 0x0

    .line 807
    .local v5, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v2, 0x0

    .line 808
    .local v2, createEglContext:Z
    const/4 v6, 0x0

    .line 809
    .local v6, lostEglContext:Z
    const/4 v7, 0x0

    .line 810
    .local v7, sizeChanged:Z
    const/4 v9, 0x0

    .line 811
    .local v9, wantRenderNotification:Z
    const/4 v3, 0x0

    .line 812
    .local v3, doRenderNotification:Z
    const/4 v1, 0x0

    .line 813
    .local v1, askedToReleaseEglContext:Z
    const/4 v4, 0x0

    .line 816
    .local v4, event:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 818
    :goto_1
    :try_start_1
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v10, :cond_1

    .line 819
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1030
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v11

    monitor-enter v11

    .line 1031
    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1032
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1033
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 822
    :cond_1
    :try_start_3
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 823
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/Runnable;

    move-object v4, v0

    .line 978
    :goto_2
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 980
    if-eqz v4, :cond_12

    .line 981
    :try_start_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 982
    const/4 v4, 0x0

    .line 983
    goto :goto_0

    .line 828
    :cond_2
    :try_start_5
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mPaused:Z

    iget-boolean v12, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestPaused:Z

    if-eq v10, v12, :cond_3

    .line 829
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestPaused:Z

    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mPaused:Z

    .line 830
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 832
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPaused is now "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_3
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v10, :cond_4

    .line 839
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "releasing EGL context because asked to tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 842
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 843
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 844
    const/4 v1, 0x1

    .line 848
    :cond_4
    if-eqz v6, :cond_5

    .line 849
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 850
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 851
    const/4 v6, 0x0

    .line 855
    :cond_5
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mPaused:Z

    if-eqz v10, :cond_8

    .line 857
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "releasing EGL surface because paused tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 860
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 861
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 863
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "releasing EGL context because paused tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_6
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 867
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;->finish()V

    .line 869
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "terminating EGL because paused tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_7
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

    invoke-interface {v10}, Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;->onPaused()V

    .line 878
    :cond_8
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v10, :cond_a

    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v10, :cond_a

    .line 880
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "noticed surfaceView surface lost tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_9

    .line 883
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 885
    :cond_9
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 889
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 893
    :cond_a
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v10, :cond_b

    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v10, :cond_b

    .line 895
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "noticed surfaceView surface acquired tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 898
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 901
    :cond_b
    if-eqz v3, :cond_c

    .line 903
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sending render notification tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v9, 0x0

    .line 906
    const/4 v3, 0x0

    .line 907
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderComplete:Z

    .line 908
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 911
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->readyToDraw()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 913
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglContext:Z

    if-nez v10, :cond_d

    .line 914
    if-eqz v1, :cond_f

    .line 915
    const/4 v1, 0x0

    .line 930
    :cond_d
    :goto_3
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v10, :cond_e

    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v10, :cond_e

    .line 931
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 932
    const/4 v7, 0x1

    .line 935
    :cond_e
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_11

    .line 936
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->this$0:Lcom/mediatek/ngin3d/android/GLTextureView;

    #getter for: Lcom/mediatek/ngin3d/android/GLTextureView;->mSizeChanged:Z
    invoke-static {v10}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$700(Lcom/mediatek/ngin3d/android/GLTextureView;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 937
    const/4 v7, 0x1

    .line 938
    const/4 v9, 0x1

    .line 940
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "noticing that we want render notification tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->this$0:Lcom/mediatek/ngin3d/android/GLTextureView;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/ngin3d/android/GLTextureView;->mSizeChanged:Z
    invoke-static {v10, v12}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$702(Lcom/mediatek/ngin3d/android/GLTextureView;Z)Z

    .line 956
    :goto_4
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 978
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1030
    :catchall_2
    move-exception v10

    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v11

    monitor-enter v11

    .line 1031
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1032
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1033
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v10

    .line 916
    :cond_f
    :try_start_8
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v10

    if-eqz v10, :cond_d

    .line 918
    :try_start_9
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    iget-object v12, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v10, v12}, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;->start(Landroid/graphics/SurfaceTexture;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 923
    const/4 v10, 0x1

    :try_start_a
    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 924
    const/4 v2, 0x1

    .line 926
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    .line 919
    :catch_0
    move-exception v8

    .line 920
    .local v8, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)V

    .line 921
    throw v8

    .line 953
    .end local v8           #t:Ljava/lang/RuntimeException;
    :cond_10
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestRender:Z

    .line 954
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurfaceTextureReady:Z

    goto :goto_4

    .line 975
    :cond_11
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 986
    :cond_12
    :try_start_b
    iget-boolean v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v10, :cond_0

    .line 990
    if-eqz v2, :cond_13

    .line 992
    const-string v10, "GLThread"

    const-string v11, "onSurfaceCreated"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    iget-object v10, v10, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v10}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v5, v0

    .line 995
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

    iget-object v11, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    iget-object v11, v11, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v10, v5, v11}, Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 996
    const/4 v2, 0x0

    .line 999
    :cond_13
    if-eqz v7, :cond_14

    .line 1001
    const-string v10, "GLThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSurfaceChanged("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;->purgeBuffers()V

    .line 1004
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

    iget v11, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWidth:I

    iget v12, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHeight:I

    invoke-interface {v10, v5, v11, v12}, Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1005
    const/4 v7, 0x0

    .line 1012
    :cond_14
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;

    invoke-interface {v10, v5}, Lcom/mediatek/ngin3d/android/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1014
    iget-object v10, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;->swap()Z

    move-result v10

    if-nez v10, :cond_15

    .line 1016
    const-string v10, "GLThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "egl context lost tid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1018
    const/4 v6, 0x1

    .line 1021
    :cond_15
    if-eqz v9, :cond_0

    .line 1022
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1033
    :catchall_3
    move-exception v10

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v10
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1042
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurfaceTextureReady:Z

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;->finish()V

    .line 797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 798
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)V

    .line 800
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 786
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$EglHelper;->destroySurface()V

    .line 788
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1060
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1061
    :try_start_0
    iget v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 1123
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1125
    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurfaceTextureReady:Z

    .line 1128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1129
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1130
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    .line 1132
    const-string v1, "Main thread"

    const-string v3, "onPause waiting for mPaused."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    :try_start_1
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1140
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1141
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 1144
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1146
    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestRender:Z

    .line 1150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1151
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1153
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_0

    .line 1155
    const-string v1, "Main thread"

    const-string v3, "onResume waiting for !mPaused."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    :try_start_1
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1163
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1164
    return-void
.end method

.method public onWindowResize(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1167
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1168
    :try_start_0
    iput p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWidth:I

    .line 1169
    iput p2, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHeight:I

    .line 1170
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->this$0:Lcom/mediatek/ngin3d/android/GLTextureView;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/ngin3d/android/GLTextureView;->mSizeChanged:Z
    invoke-static {v1, v3}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$702(Lcom/mediatek/ngin3d/android/GLTextureView;Z)Z

    .line 1171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestRender:Z

    .line 1172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurfaceTextureReady:Z

    .line 1173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1174
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1178
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->this$0:Lcom/mediatek/ngin3d/android/GLTextureView;

    #getter for: Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;
    invoke-static {v1}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$800(Lcom/mediatek/ngin3d/android/GLTextureView;)Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->this$0:Lcom/mediatek/ngin3d/android/GLTextureView;

    #getter for: Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;
    invoke-static {v1}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$800(Lcom/mediatek/ngin3d/android/GLTextureView;)Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->ableToDraw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    const-string v1, "Main thread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowResize waiting for render complete from tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->this$0:Lcom/mediatek/ngin3d/android/GLTextureView;

    #getter for: Lcom/mediatek/ngin3d/android/GLTextureView;->mGLThread:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;
    invoke-static {v4}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$800(Lcom/mediatek/ngin3d/android/GLTextureView;)Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    :try_start_1
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1188
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1189
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1218
    if-nez p1, :cond_0

    .line 1219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_0
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1222
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1224
    monitor-exit v1

    .line 1225
    return-void

    .line 1224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1194
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1195
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mShouldExit:Z

    .line 1196
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1197
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1199
    :try_start_1
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1204
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 1206
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1210
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1211
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1066
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1067
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRequestRender:Z

    .line 1068
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1069
    monitor-exit v1

    .line 1070
    return-void

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 767
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->threadExiting(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)V

    .line 777
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->threadExiting(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)V

    goto :goto_0

    .line 772
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 775
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->threadExiting(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)V

    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 1049
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1050
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :cond_1
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1054
    :try_start_0
    iput p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mRenderMode:I

    .line 1055
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1056
    monitor-exit v1

    .line 1057
    return-void

    .line 1056
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurfaceTextureReady()V
    .locals 2

    .prologue
    .line 1076
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1077
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurfaceTextureReady:Z

    .line 1078
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1079
    monitor-exit v1

    .line 1080
    return-void

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter "surfaceTexture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1083
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1087
    :try_start_0
    iput p2, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWidth:I

    .line 1088
    iput p3, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHeight:I

    .line 1089
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 1090
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurfaceTextureReady:Z

    .line 1091
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHasSurface:Z

    .line 1092
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1093
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1095
    :try_start_1
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1100
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1101
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 4

    .prologue
    .line 1104
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1109
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mHasSurface:Z

    .line 1110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mSurfaceTextureReady:Z

    .line 1111
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1112
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    .line 1113
    const-string v1, "Main thread"

    const-string v3, "surfaceDestroyed waiting for !mWaitingForSurface."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    :try_start_1
    invoke-static {}, Lcom/mediatek/ngin3d/android/GLTextureView;->access$600()Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1120
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1121
    return-void
.end method
