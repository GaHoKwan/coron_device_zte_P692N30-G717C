.class Lcom/android/camera/actor/EffectsRecorder$1;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 568
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SurfaceTexture ready callback received,mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v3}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    monitor-enter v2

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #setter for: Lcom/android/camera/actor/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v1, p1}, Lcom/android/camera/actor/EffectsRecorder;->access$102(Lcom/android/camera/actor/EffectsRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 572
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    if-nez v1, :cond_0

    .line 576
    const-string v1, "EffectsRecorder"

    const-string v3, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    monitor-exit v2

    .line 618
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 582
    const-string v1, "EffectsRecorder"

    const-string v3, "Ready callback: Already released, skipping."

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    monitor-exit v2

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 586
    :cond_1
    if-nez p1, :cond_4

    .line 587
    :try_start_1
    const-string v1, "EffectsRecorder"

    const-string v3, "Ready callback: source null! Looks like graph was closed!"

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 592
    :cond_2
    const-string v1, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ready callback: State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v4}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". stopCameraPreview"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/actor/EffectsRecorder;->stopCameraPreview()V

    .line 595
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 599
    :cond_4
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/actor/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 600
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 601
    const-string v1, "EffectsRecorder"

    const-string v3, "Runner active, connecting effects preview"

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :try_start_2
    const-string v1, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewTexture = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v4}, Lcom/android/camera/actor/EffectsRecorder;->access$100(Lcom/android/camera/actor/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v3}, Lcom/android/camera/actor/EffectsRecorder;->access$100(Lcom/android/camera/actor/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 609
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$300(Lcom/android/camera/actor/EffectsRecorder;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->applyContinousCallback()V

    .line 610
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 612
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/actor/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 613
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v3, 0x3

    #setter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1, v3}, Lcom/android/camera/actor/EffectsRecorder;->access$002(Lcom/android/camera/actor/EffectsRecorder;I)I

    .line 614
    const-string v1, "EffectsRecorder"

    const-string v3, "Start preview/effect switch complete"

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v3}, Lcom/android/camera/actor/EffectsRecorder;->access$400(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v3

    const/4 v4, 0x5

    #calls: Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V
    invoke-static {v1, v3, v4}, Lcom/android/camera/actor/EffectsRecorder;->access$500(Lcom/android/camera/actor/EffectsRecorder;II)V

    .line 617
    monitor-exit v2

    goto/16 :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unable to connect camera to effect input"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
