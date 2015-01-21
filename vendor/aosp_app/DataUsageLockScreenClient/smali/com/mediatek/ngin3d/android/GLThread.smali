.class Lcom/mediatek/ngin3d/android/GLThread;
.super Ljava/lang/Thread;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/android/GLThread$1;,
        Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;
    }
.end annotation


# static fields
.field private static final LOG_THREADS:Z


# instance fields
.field public mDone:Z

.field private final mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

.field private final mEGLContextFactory:Lcom/mediatek/ngin3d/android/EGLContextFactory;

.field private final mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;

.field private mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

.field private mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;

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

.field private mEventsWaiting:Z

.field private final mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

.field private final mGLWrapper:Lcom/mediatek/ngin3d/android/GLWrapper;

.field private mHasSurface:Z

.field private mHaveEgl:Z

.field private mHeight:I

.field public mHolder:Landroid/view/SurfaceHolder;

.field private mPaused:Z

.field private mRenderMode:I

.field private final mRenderer:Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;

.field private mRequestRender:Z

.field private mSizeChanged:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;Lcom/mediatek/ngin3d/android/EGLConfigChooser;Lcom/mediatek/ngin3d/android/EGLContextFactory;Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;Lcom/mediatek/ngin3d/android/GLWrapper;)V
    .locals 4
    .parameter "renderer"
    .parameter "chooser"
    .parameter "contextFactory"
    .parameter "surfaceFactory"
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 568
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 537
    new-instance v0, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;-><init>(Lcom/mediatek/ngin3d/android/GLThread;Lcom/mediatek/ngin3d/android/GLThread$1;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    .line 546
    iput-boolean v3, p0, Lcom/mediatek/ngin3d/android/GLThread;->mSizeChanged:Z

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 569
    iput-boolean v2, p0, Lcom/mediatek/ngin3d/android/GLThread;->mDone:Z

    .line 570
    iput v2, p0, Lcom/mediatek/ngin3d/android/GLThread;->mWidth:I

    .line 571
    iput v2, p0, Lcom/mediatek/ngin3d/android/GLThread;->mHeight:I

    .line 572
    iput-boolean v3, p0, Lcom/mediatek/ngin3d/android/GLThread;->mRequestRender:Z

    .line 573
    iput v3, p0, Lcom/mediatek/ngin3d/android/GLThread;->mRenderMode:I

    .line 574
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;

    .line 575
    iput-object p2, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    .line 576
    iput-object p3, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/EGLContextFactory;

    .line 577
    iput-object p4, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;

    .line 578
    iput-object p5, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLWrapper:Lcom/mediatek/ngin3d/android/GLWrapper;

    .line 579
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/ngin3d/android/GLThread;Lcom/mediatek/ngin3d/android/GLThread;)Lcom/mediatek/ngin3d/android/GLThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEglOwner:Lcom/mediatek/ngin3d/android/GLThread;

    return-object p1
.end method

.method private getEvent()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 859
    monitor-enter p0

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    .line 865
    :goto_0
    return-object v0

    .line 864
    :cond_0
    monitor-exit p0

    .line 865
    const/4 v0, 0x0

    goto :goto_0

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private guardedRun()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x1

    .line 610
    new-instance v10, Lcom/mediatek/ngin3d/android/EglHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEGLConfigChooser:Lcom/mediatek/ngin3d/android/EGLConfigChooser;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEGLContextFactory:Lcom/mediatek/ngin3d/android/EGLContextFactory;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEGLWindowSurfaceFactory:Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLWrapper:Lcom/mediatek/ngin3d/android/GLWrapper;

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/mediatek/ngin3d/android/EglHelper;-><init>(Lcom/mediatek/ngin3d/android/EGLConfigChooser;Lcom/mediatek/ngin3d/android/EGLContextFactory;Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;Lcom/mediatek/ngin3d/android/GLWrapper;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    .line 612
    const/4 v3, 0x0

    .line 613
    .local v3, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v8, 0x1

    .line 614
    .local v8, tellRendererSurfaceCreated:Z
    const/4 v7, 0x1

    .line 619
    .local v7, tellRendererSurfaceChanged:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->isDone()Z

    move-result v10

    if-nez v10, :cond_f

    .line 623
    const/4 v9, 0x0

    .line 624
    .local v9, w:I
    const/4 v4, 0x0

    .line 625
    .local v4, h:I
    const/4 v1, 0x0

    .line 626
    .local v1, changed:Z
    const/4 v5, 0x0

    .line 627
    .local v5, needStart:Z
    const/4 v2, 0x0

    .line 629
    .local v2, eventsWaiting:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 633
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mPaused:Z

    if-eqz v10, :cond_1

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->stopEglLocked()V

    .line 636
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHasSurface:Z

    if-eqz v10, :cond_3

    .line 637
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHaveEgl:Z

    if-nez v10, :cond_2

    .line 638
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->tryAcquireEglSurface(Lcom/mediatek/ngin3d/android/GLThread;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 639
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHaveEgl:Z

    .line 640
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/EglHelper;->start()V

    .line 641
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mRequestRender:Z

    .line 642
    const/4 v5, 0x1

    .line 658
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mDone:Z

    if-eqz v10, :cond_4

    .line 659
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v11

    .line 740
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->stopEglLocked()V

    .line 741
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/EglHelper;->finish()V

    .line 742
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 744
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :goto_3
    return-void

    .line 646
    .restart local v1       #changed:Z
    .restart local v2       #eventsWaiting:Z
    .restart local v4       #h:I
    .restart local v5       #needStart:Z
    .restart local v9       #w:I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mWaitingForSurface:Z

    if-nez v10, :cond_2

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->stopEglLocked()V

    .line 648
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mWaitingForSurface:Z

    .line 649
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 690
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 739
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :catchall_1
    move-exception v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v11

    .line 740
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->stopEglLocked()V

    .line 741
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    invoke-virtual {v12}, Lcom/mediatek/ngin3d/android/EglHelper;->finish()V

    .line 742
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v10

    .restart local v1       #changed:Z
    .restart local v2       #eventsWaiting:Z
    .restart local v4       #h:I
    .restart local v5       #needStart:Z
    .restart local v9       #w:I
    :catchall_2
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v10

    .line 662
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEventsWaiting:Z

    if-eqz v10, :cond_7

    .line 663
    const/4 v2, 0x1

    .line 664
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEventsWaiting:Z

    .line 690
    :cond_5
    :goto_4
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 695
    if-eqz v2, :cond_a

    .line 697
    :cond_6
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v6

    .local v6, r:Ljava/lang/Runnable;
    if-eqz v6, :cond_0

    .line 698
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->isDone()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v10

    if-eqz v10, :cond_6

    .line 739
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v11

    .line 740
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->stopEglLocked()V

    .line 741
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/EglHelper;->finish()V

    .line 742
    monitor-exit v11

    goto :goto_3

    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v10

    .line 668
    .end local v6           #r:Ljava/lang/Runnable;
    :cond_7
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mPaused:Z

    if-nez v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHasSurface:Z

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHaveEgl:Z

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mWidth:I

    if-lez v10, :cond_9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHeight:I

    if-lez v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mRequestRender:Z

    if-nez v10, :cond_8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mRenderMode:I

    if-ne v10, v15, :cond_9

    .line 670
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/ngin3d/android/GLThread;->mSizeChanged:Z

    .line 671
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/ngin3d/android/GLThread;->mWidth:I

    .line 672
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHeight:I

    .line 673
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mSizeChanged:Z

    .line 674
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mRequestRender:Z

    .line 675
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHasSurface:Z

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mWaitingForSurface:Z

    if-eqz v10, :cond_5

    .line 676
    const/4 v1, 0x1

    .line 677
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mWaitingForSurface:Z

    .line 678
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 688
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 707
    :cond_a
    if-eqz v5, :cond_b

    .line 708
    const/4 v8, 0x1

    .line 709
    const/4 v1, 0x1

    .line 711
    :cond_b
    if-eqz v1, :cond_c

    .line 712
    :try_start_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/android/GLThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v10, v11}, Lcom/mediatek/ngin3d/android/EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v3, v0

    .line 713
    const/4 v7, 0x1

    .line 715
    :cond_c
    if-eqz v8, :cond_d

    .line 716
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    iget-object v11, v11, Lcom/mediatek/ngin3d/android/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v10, v3, v11}, Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 717
    const/4 v8, 0x0

    .line 719
    :cond_d
    if-eqz v7, :cond_e

    .line 720
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;

    invoke-interface {v10, v3, v9, v4}, Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 721
    const/4 v7, 0x0

    .line 723
    :cond_e
    if-lez v9, :cond_0

    if-lez v4, :cond_0

    .line 725
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mRenderer:Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;

    invoke-interface {v10, v3}, Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/EglHelper;->swap()Z

    .line 732
    const-wide/16 v10, 0xa

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 739
    .end local v1           #changed:Z
    .end local v2           #eventsWaiting:Z
    .end local v4           #h:I
    .end local v5           #needStart:Z
    .end local v9           #w:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v11

    .line 740
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ngin3d/android/GLThread;->stopEglLocked()V

    .line 741
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/android/EglHelper;->finish()V

    .line 742
    monitor-exit v11

    goto/16 :goto_3

    :catchall_4
    move-exception v10

    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v10

    :catchall_5
    move-exception v10

    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v10
.end method

.method private isDone()Z
    .locals 2

    .prologue
    .line 747
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1

    .line 748
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mDone:Z

    monitor-exit v1

    return v0

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopEglLocked()V
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mHaveEgl:Z

    if-eqz v0, :cond_0

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mHaveEgl:Z

    .line 604
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEglHelper:Lcom/mediatek/ngin3d/android/EglHelper;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/EglHelper;->destroySurface()V

    .line 605
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->releaseEglSurface(Lcom/mediatek/ngin3d/android/GLThread;)V

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 765
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1

    .line 766
    :try_start_0
    iget v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 806
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1

    .line 807
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mPaused:Z

    .line 808
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 809
    monitor-exit v1

    .line 810
    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 813
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1

    .line 814
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mPaused:Z

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mRequestRender:Z

    .line 816
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 817
    monitor-exit v1

    .line 818
    return-void

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 821
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1

    .line 822
    :try_start_0
    iput p1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mWidth:I

    .line 823
    iput p2, p0, Lcom/mediatek/ngin3d/android/GLThread;->mHeight:I

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mSizeChanged:Z

    .line 825
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 826
    monitor-exit v1

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 849
    monitor-enter p0

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 852
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mEventsWaiting:Z

    .line 853
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 854
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 856
    return-void

    .line 854
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 855
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 832
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v2

    .line 833
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mDone:Z

    .line 834
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 835
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 841
    :goto_0
    return-void

    .line 835
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 771
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1

    .line 772
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mRequestRender:Z

    .line 773
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 774
    monitor-exit v1

    .line 775
    return-void

    .line 774
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
    .line 583
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

    .line 589
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->threadExiting(Lcom/mediatek/ngin3d/android/GLThread;)V

    .line 596
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->threadExiting(Lcom/mediatek/ngin3d/android/GLThread;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v2, p0}, Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;->threadExiting(Lcom/mediatek/ngin3d/android/GLThread;)V

    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    const/4 v0, 0x1

    .line 753
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 754
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1

    .line 757
    :try_start_0
    iput p1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mRenderMode:I

    .line 758
    if-ne p1, v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 761
    :cond_2
    monitor-exit v1

    .line 762
    return-void

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 778
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 779
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v1

    .line 783
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mHasSurface:Z

    .line 784
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 785
    monitor-exit v1

    .line 786
    return-void

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 789
    iget-object v2, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    monitor-enter v2

    .line 793
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mHasSurface:Z

    .line 794
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 795
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 797
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLThread;->mGLThreadManager:Lcom/mediatek/ngin3d/android/GLThread$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 802
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

    .line 803
    return-void
.end method
