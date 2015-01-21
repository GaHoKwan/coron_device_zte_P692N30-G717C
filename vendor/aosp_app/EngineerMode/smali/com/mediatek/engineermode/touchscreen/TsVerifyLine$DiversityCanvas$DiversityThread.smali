.class Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;
.super Ljava/lang/Thread;
.source "TsVerifyLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiversityThread"
.end annotation


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;Landroid/view/SurfaceHolder;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "s"
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 268
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 262
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 263
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mLinePaint:Landroid/graphics/Paint;

    .line 264
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    .line 265
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mRectPaint:Landroid/graphics/Paint;

    .line 266
    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mRect:Landroid/graphics/Rect;

    .line 269
    iput-object p2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 270
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mLinePaint:Landroid/graphics/Paint;

    .line 271
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    .line 273
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4110

    iget-object v2, p1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mZoom:I
    invoke-static {v2}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->access$000(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 275
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->access$100(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I

    move-result v1

    iget-object v2, p1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I
    invoke-static {v2}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->access$200(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mRect:Landroid/graphics/Rect;

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mRectPaint:Landroid/graphics/Paint;

    .line 278
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 279
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/16 v11, 0xff

    const/4 v10, 0x0

    .line 307
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v10, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 310
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mPts1:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mPts1:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    .line 312
    .local v8, p1:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mPts1:Ljava/util/Vector;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 313
    .local v9, p2:Landroid/graphics/Point;
    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 315
    .end local v8           #p1:Landroid/graphics/Point;
    .end local v9           #p2:Landroid/graphics/Point;
    :catch_0
    move-exception v6

    .line 316
    .local v6, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "EM/TouchScreen/VL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPts1 ArrayIndexOutOfBoundsException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v6           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v11, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 322
    const/4 v7, 0x0

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    .line 324
    .restart local v8       #p1:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 325
    .restart local v9       #p2:Landroid/graphics/Point;
    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 327
    .end local v8           #p1:Landroid/graphics/Point;
    .end local v9           #p2:Landroid/graphics/Point;
    :catch_1
    move-exception v6

    .line 328
    .restart local v6       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "EM/TouchScreen/VL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInput ArrayIndexOutOfBoundsException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 332
    .end local v6           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Diversity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    iget-wide v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversity:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mZoom:I
    invoke-static {v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->access$000(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v2, v2, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I
    invoke-static {v2}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->access$200(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v3, v3, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mZoom:I
    invoke-static {v3}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->access$000(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->this$1:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    iget-object v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;

    iget-boolean v1, v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRun:Z

    if-eqz v1, :cond_2

    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2

    .line 288
    if-eqz v0, :cond_1

    .line 289
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->doDraw(Landroid/graphics/Canvas;)V

    .line 291
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas$DiversityThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 301
    .end local v0           #c:Landroid/graphics/Canvas;
    :cond_2
    return-void
.end method
