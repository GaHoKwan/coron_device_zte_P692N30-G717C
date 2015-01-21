.class Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/android/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final GLES20:I = 0x20000

.field private static final LIMITED_GLES_CONTEXTS:Z = true

.field private static final TAG:Ljava/lang/String; = "GLThreadManager"


# instance fields
.field private mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ngin3d/android/GLTextureView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1262
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1336
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1337
    const-string v0, "ro.opengles.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mGLESVersion:I

    .line 1340
    iget v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1341
    iput-boolean v3, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1344
    :cond_0
    const-string v0, "GLThreadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGLESVersion mGLESVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mGLESVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMultipleGLESContextsAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iput-boolean v3, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1349
    :cond_1
    return-void
.end method


# virtual methods
.method public releaseEglContextLocked(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    .line 1316
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1317
    return-void
.end method

.method public shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1323
    monitor-enter p0

    .line 1324
    const/4 v0, 0x1

    :try_start_0
    monitor-exit p0

    return v0

    .line 1325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1329
    monitor-enter p0

    .line 1330
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1331
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public threadExiting(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1267
    monitor-enter p0

    .line 1271
    const/4 v0, 0x1

    :try_start_0
    #setter for: Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->access$902(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;Z)Z

    .line 1272
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    .line 1275
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1276
    monitor-exit p0

    .line 1277
    return-void

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v0, 0x1

    .line 1288
    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-nez v1, :cond_2

    .line 1289
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    .line 1290
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1304
    :cond_1
    :goto_0
    return v0

    .line 1293
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1294
    iget-boolean v1, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    if-eqz v0, :cond_3

    .line 1302
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/GLTextureView$GLThreadManager;->mEglOwner:Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    .line 1304
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
