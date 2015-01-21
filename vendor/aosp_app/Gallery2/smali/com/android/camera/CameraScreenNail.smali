.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$FrameListener;,
        Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;,
        Lcom/android/camera/CameraScreenNail$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_CAPTURE_RUNNING:I = 0x2

.field private static final ANIM_CAPTURE_START:I = 0x1

.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_SIZE_CHANGE_NONE:I = 0x0

.field private static final ANIM_SIZE_CHANGE_RUNNING:I = 0x2

.field private static final ANIM_SIZE_CHANGE_START:I = 0x1

.field private static final ANIM_SWITCH_COPY_TEXTURE:I = 0x3

.field private static final ANIM_SWITCH_DARK_PREVIEW:I = 0x4

.field private static final ANIM_SWITCH_RUNNING:I = 0x7

.field private static final ANIM_SWITCH_START:I = 0x6

.field private static final ANIM_SWITCH_WAITING_FIRST_FRAME:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CameraScreenNail"


# instance fields
.field private mAnimState:I

.field private mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private mDrawable:Z

.field private mFirstFrameArrived:Z

.field private mFrameListener:Lcom/android/camera/CameraScreenNail$FrameListener;

.field private mHeight:I

.field private mLastFrameArriveTime:J

.field private mLaunchCameraTrace:I

.field private mListener:Lcom/android/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mOriginSizeTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mStateListener:Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;

.field private mSwitchActorState:I

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mVisible:Z

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraScreenNail$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;-><init>()V

    .line 55
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mLaunchCameraTrace:I

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 61
    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 62
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 63
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mDrawable:Z

    .line 76
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    .line 94
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    .line 95
    return-void
.end method

.method private copyOriginSizePreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 297
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOriginSizeTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    .line 298
    .local v5, width:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOriginSizeTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    .line 299
    .local v6, height:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOriginSizeTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 302
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 303
    const/high16 v0, -0x4080

    invoke-interface {p1, v2, v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 304
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 307
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 308
    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 280
    invoke-static {}, Lcom/mediatek/camera/FrameworksClassFactory;->isMockCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    .line 284
    .local v5, width:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    .line 285
    .local v6, height:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 288
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 289
    const/high16 v0, -0x4080

    invoke-interface {p1, v2, v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 290
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 293
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    goto :goto_0
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 101
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 102
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 103
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOriginSizeTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .parameter "animOrientation"

    .prologue
    .line 155
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileAnimateCapture()V

    .line 156
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCamera()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "CameraScreenNail"

    const-string v1, "animateSwitchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileAnimateSwitchCamera()V

    .line 145
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 149
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 151
    :cond_0
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyOriginSizeTexture()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    .line 130
    :cond_0
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 118
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOriginSizeTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 15
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 173
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileDrawScreenNail()V

    .line 174
    iget-object v14, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 175
    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    .line 176
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v13

    .line 179
    .local v13, surfaceTexture:Landroid/graphics/SurfaceTexture;
    if-eqz v13, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_2

    .line 180
    :cond_1
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileDrawScreenNail()V

    .line 181
    monitor-exit v14

    .line 271
    :goto_0
    return-void

    .line 184
    :cond_2
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    if-nez v4, :cond_4

    .line 185
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerSuperDrawNoAnimate()V

    .line 186
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 187
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileDrawScreenNail()V

    .line 188
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mStateListener:Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;

    if-eqz v4, :cond_3

    .line 189
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mStateListener:Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;->onStateChanged(I)V

    .line 191
    :cond_3
    monitor-exit v14

    goto :goto_0

    .line 269
    .end local v13           #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v4

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 194
    .restart local v13       #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :cond_4
    :try_start_1
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    packed-switch v4, :pswitch_data_0

    .line 222
    :goto_1
    :pswitch_0
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_6

    .line 224
    :cond_5
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 225
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v5, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, p0, v5}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .line 230
    .local v12, drawn:Z
    :goto_2
    if-eqz v12, :cond_a

    .line 231
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 249
    .end local v12           #drawn:Z
    :cond_6
    :goto_3
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    packed-switch v4, :pswitch_data_1

    .line 266
    :cond_7
    :goto_4
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 267
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mOriginSizeTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget v6, p0, Lcom/android/camera/CameraScreenNail;->mX:I

    iget v7, p0, Lcom/android/camera/CameraScreenNail;->mY:I

    iget v8, p0, Lcom/android/camera/CameraScreenNail;->mWidth:I

    iget v9, p0, Lcom/android/camera/CameraScreenNail;->mHeight:I

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 269
    :cond_8
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileDrawScreenNail()V

    goto :goto_0

    .line 196
    :pswitch_1
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 197
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 198
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 199
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 207
    :pswitch_2
    invoke-virtual {v13}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 208
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v10, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/SwitchAnimManager;->drawDarkPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    .line 210
    monitor-exit v14

    goto/16 :goto_0

    .line 212
    :pswitch_3
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v4}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 213
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 216
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 217
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    .line 218
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 227
    :cond_9
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v11, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v10, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .restart local v12       #drawn:Z
    goto/16 :goto_2

    .line 235
    :cond_a
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 236
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileAnimateCapture()V

    .line 240
    :cond_b
    :goto_5
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 242
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    if-nez v4, :cond_6

    .line 243
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerSuperDrawOriginFrame()V

    .line 244
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_3

    .line 237
    :cond_c
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_b

    .line 238
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileAnimateSwitchCamera()V

    goto :goto_5

    .line 251
    .end local v12           #drawn:Z
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyOriginSizePreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 252
    move/from16 v0, p2

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mX:I

    .line 253
    move/from16 v0, p3

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mY:I

    .line 254
    move/from16 v0, p4

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mWidth:I

    .line 255
    move/from16 v0, p5

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mHeight:I

    .line 256
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    goto/16 :goto_4

    .line 259
    :pswitch_6
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mDrawable:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mWidth:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_d

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mHeight:I

    move/from16 v0, p5

    if-eq v4, v0, :cond_7

    :cond_d
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 260
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    .line 261
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerSuperDrawSizeChange()V

    .line 262
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 249
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public enableDebug()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebug:Z

    return v0
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 314
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->restoreSwitchCameraState()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 11
    .parameter "surfaceTexture"

    .prologue
    const-wide/16 v9, 0x400

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 329
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerFrameAvailable()V

    .line 330
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugLevel2:Z

    if-eqz v4, :cond_0

    .line 331
    const-string v4, "CameraScreenNail"

    const-string v5, "[Preview] onFrameAvailable"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/camera/CameraScreenNail;->setDrawable(Z)V

    .line 334
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_3

    .line 335
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerFirstFrameAvailable()V

    .line 336
    const-string v4, "AppUpdate"

    invoke-static {v9, v10, v4, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 337
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mFrameListener:Lcom/android/camera/CameraScreenNail$FrameListener;

    if-eqz v4, :cond_1

    .line 338
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mFrameListener:Lcom/android/camera/CameraScreenNail$FrameListener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$FrameListener;->onFirstFrameArrived()V

    .line 340
    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_2

    .line 342
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerRequestRender()V

    .line 343
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 346
    :cond_2
    const-string v4, "CameraScreenNail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMCC Performance test][Launcher][Camera] Start Camera end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v4, "CameraScreenNail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFrameAvailable is called(first time) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v4, "AppUpdate"

    invoke-static {v9, v10, v4, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 351
    :cond_3
    iget-object v5, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 352
    :try_start_0
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebug:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_4

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestStartTime:J

    .line 354
    iget-wide v6, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestStartTime:J

    iput-wide v6, p0, Lcom/android/camera/CameraScreenNail;->mLastFrameArriveTime:J

    .line 355
    iget-wide v6, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestStartTime:J

    iput-wide v6, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawStartTime:J

    .line 356
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestCount:I

    .line 357
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawFrameCount:I

    .line 359
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 360
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v4, :cond_a

    .line 361
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    .line 362
    const/4 v4, 0x6

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 364
    :cond_5
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebug:Z

    if-eqz v4, :cond_9

    .line 365
    const-wide/16 v0, 0x0

    .line 366
    .local v0, currentTime:J
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugLevel2:Z

    if-eqz v4, :cond_7

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 368
    iget-wide v6, p0, Lcom/android/camera/CameraScreenNail;->mLastFrameArriveTime:J

    sub-long v6, v0, v6

    long-to-int v2, v6

    .line 369
    .local v2, frameInterval:I
    const/16 v4, 0x32

    if-le v2, v4, :cond_6

    .line 370
    const-string v4, "CameraScreenNail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Preview] onFrameAvailable, request render interval too long = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_6
    iput-wide v0, p0, Lcom/android/camera/CameraScreenNail;->mLastFrameArriveTime:J

    .line 374
    .end local v2           #frameInterval:I
    :cond_7
    iget v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestCount:I

    .line 375
    iget v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestCount:I

    rem-int/lit8 v4, v4, 0x3c

    if-nez v4, :cond_9

    .line 376
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugLevel2:Z

    if-nez v4, :cond_8

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 379
    :cond_8
    iget-wide v6, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestStartTime:J

    sub-long v6, v0, v6

    long-to-int v3, v6

    .line 380
    .local v3, intervals:I
    const-string v4, "CameraScreenNail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Preview] Request render, fps = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestCount:I

    int-to-float v7, v7

    const/high16 v8, 0x447a

    mul-float/2addr v7, v8

    int-to-float v8, v3

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in last "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " millisecond."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-wide v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestStartTime:J

    .line 383
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestCount:I

    .line 388
    .end local v0           #currentTime:J
    .end local v3           #intervals:I
    :cond_9
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerRequestRender()V

    .line 389
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 391
    :cond_a
    monitor-exit v5

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 323
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDrawable(Z)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 420
    const-string v0, "CameraScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrawable drawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iput-boolean p1, p0, Lcom/android/camera/CameraScreenNail;->mDrawable:Z

    .line 422
    return-void
.end method

.method public setFrameListener(Lcom/android/camera/CameraScreenNail$FrameListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mFrameListener:Lcom/android/camera/CameraScreenNail$FrameListener;

    .line 416
    return-void
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSwitchActorStateListener(Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mStateListener:Lcom/android/camera/CameraScreenNail$SwitchActorStateListener;

    .line 275
    return-void
.end method

.method public stopSwitchActorAnimation()V
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchActorState:I

    .line 137
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 139
    :cond_0
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
