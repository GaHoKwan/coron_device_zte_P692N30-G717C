.class public Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;
.super Ljava/lang/Object;
.source "PreparePageFadeoutTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# static fields
.field public static final KEY_FADE_TEXTURE:Ljava/lang/String; = "fade_texture"

.field private static final TIMEOUT:J = 0xc8L


# instance fields
.field private mCancelled:Z

.field private mResultReady:Landroid/os/ConditionVariable;

.field private mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mTexture:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLView;)V
    .locals 5
    .parameter "rootPane"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    .line 14
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    .line 18
    if-nez p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    .line 20
    .local v1, w:I
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v0

    .line 21
    .local v0, h:I
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 22
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    goto :goto_0

    .line 25
    :cond_2
    new-instance v2, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {v2, v1, v0, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 26
    iput-object p1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    goto :goto_0
.end method

.method public static prepareFadeOutTexture(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;)V
    .locals 5
    .parameter "activity"
    .parameter "rootPane"

    .prologue
    .line 63
    new-instance v1, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;-><init>(Lcom/android/gallery3d/ui/GLView;)V

    .line 64
    .local v1, task:Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 66
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    const/4 v2, 0x0

    .line 67
    .local v2, texture:Lcom/android/gallery3d/ui/RawTexture;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 69
    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 70
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->get()Lcom/android/gallery3d/ui/RawTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 72
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 75
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string v4, "fade_texture"

    invoke-virtual {v3, v4, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    throw v3
.end method


# virtual methods
.method public declared-synchronized get()Lcom/android/gallery3d/ui/RawTexture;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 34
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 40
    :goto_0
    monitor-exit p0

    return-object v0

    .line 36
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return v0
.end method

.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 3
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    if-nez v1, :cond_0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 49
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 50
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 58
    const/4 v1, 0x0

    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/RuntimeException;
    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    goto :goto_0
.end method
