.class Lcom/mediatek/ngin3d/android/DefaultWindowSurfaceFactory;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"

# interfaces
.implements Lcom/mediatek/ngin3d/android/EGLWindowSurfaceFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 5
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "nativeWindow"

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 360
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, p2, p3, p4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 365
    if-nez v0, :cond_0

    .line 367
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, t:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v1           #t:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 363
    .local v1, t:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    if-nez v0, :cond_0

    .line 367
    const-wide/16 v2, 0xa

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 368
    :catch_2
    move-exception v1

    .line 369
    .local v1, t:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v1           #t:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    .line 367
    const-wide/16 v3, 0xa

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 370
    :cond_1
    :goto_1
    throw v2

    .line 368
    :catch_3
    move-exception v1

    .line 369
    .restart local v1       #t:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 374
    .end local v1           #t:Ljava/lang/InterruptedException;
    :cond_2
    return-object v0
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0
    .parameter "egl"
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 378
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 379
    return-void
.end method
