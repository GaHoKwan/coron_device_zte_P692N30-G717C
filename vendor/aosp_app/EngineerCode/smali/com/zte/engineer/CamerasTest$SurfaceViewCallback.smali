.class final Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;
.super Ljava/lang/Object;
.source "CamerasTest.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/CamerasTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SurfaceViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/CamerasTest;


# direct methods
.method private constructor <init>(Lcom/zte/engineer/CamerasTest;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/engineer/CamerasTest;Lcom/zte/engineer/CamerasTest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;-><init>(Lcom/zte/engineer/CamerasTest;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 190
    const-string v2, "CamerasTest"

    const-string v3, ">>>>>>>SurfaceViewCallback-----surfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_1

    .line 192
    const-string v2, "CamerasTest"

    const-string v3, "holder.getSurface() == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mPausing:Z
    invoke-static {v2}, Lcom/zte/engineer/CamerasTest;->access$500(Lcom/zte/engineer/CamerasTest;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    :goto_1
    iget-object v2, p0, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-boolean v2, v2, Lcom/zte/engineer/CamerasTest;->mCameraOpen:Z

    if-nez v2, :cond_2

    .line 210
    :try_start_0
    const-string v2, "CamerasTest"

    const-string v3, "main-thread-----sleep(500)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v2, "CamerasTest"

    const-string v3, "Thread.sleep exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mPreviewing:Z
    invoke-static {v2}, Lcom/zte/engineer/CamerasTest;->access$300(Lcom/zte/engineer/CamerasTest;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    const-string v2, "CamerasTest"

    const-string v3, "----SurfaceViewCallback-----mCamera.setPreviewDisplay(holder)----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_1
    iget-object v2, p0, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/zte/engineer/CamerasTest;->access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 221
    iget-object v2, p0, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/zte/engineer/CamerasTest;->access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 222
    iget-object v2, p0, Lcom/zte/engineer/CamerasTest$SurfaceViewCallback;->this$0:Lcom/zte/engineer/CamerasTest;

    const/4 v3, 0x1

    #setter for: Lcom/zte/engineer/CamerasTest;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/zte/engineer/CamerasTest;->access$302(Lcom/zte/engineer/CamerasTest;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :cond_3
    :goto_2
    const-string v2, "CamerasTest"

    const-string v3, "<<<<<<<SurfaceViewCallback-----surfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CamerasTest"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 231
    const-string v0, "CamerasTest"

    const-string v1, ">>>>>>>SurfaceViewCallback-----surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "CamerasTest"

    const-string v1, "<<<<<<<SurfaceViewCallback-----surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 236
    const-string v0, "CamerasTest"

    const-string v1, ">>>>>>>>SurfaceViewCallback-----surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "CamerasTest"

    const-string v1, "<<<<<<<<SurfaceViewCallback-----surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method
