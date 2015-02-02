.class Lcom/dolby/ds1appUI/GraphicVisualiser$1;
.super Ljava/lang/Object;
.source "GraphicVisualiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/ds1appUI/GraphicVisualiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/GraphicVisualiser;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 205
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mSufraceCreated:Z
    invoke-static {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$000(Lcom/dolby/ds1appUI/GraphicVisualiser;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mFragmentIsActive:Z
    invoke-static {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$100(Lcom/dolby/ds1appUI/GraphicVisualiser;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 209
    .local v0, c:Landroid/graphics/Canvas;
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$200(Lcom/dolby/ds1appUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_2

    .line 216
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mPainter:Lcom/dolby/ds1appUI/GraphicVisualiserPainter;
    invoke-static {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$300(Lcom/dolby/ds1appUI/GraphicVisualiser;)Lcom/dolby/ds1appUI/GraphicVisualiserPainter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolby/ds1appUI/GraphicVisualiserPainter;->onDraw(Landroid/graphics/Canvas;)V

    .line 217
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    invoke-static {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$400(Lcom/dolby/ds1appUI/GraphicVisualiser;)Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_2
    if-eqz v0, :cond_3

    .line 223
    :try_start_1
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$200(Lcom/dolby/ds1appUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 226
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mEqualizer:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    invoke-static {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$400(Lcom/dolby/ds1appUI/GraphicVisualiser;)Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    invoke-static {}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    invoke-static {}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$500()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DsUI::MainActivity"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    if-eqz v0, :cond_3

    .line 223
    :try_start_3
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$200(Lcom/dolby/ds1appUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 222
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_5

    .line 223
    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicVisualiser$1;->this$0:Lcom/dolby/ds1appUI/GraphicVisualiser;

    #getter for: Lcom/dolby/ds1appUI/GraphicVisualiser;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v3}, Lcom/dolby/ds1appUI/GraphicVisualiser;->access$200(Lcom/dolby/ds1appUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
