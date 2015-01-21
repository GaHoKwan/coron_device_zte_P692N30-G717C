.class public Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;
.super Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;
.source "DoodleView.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/IDoodle;
.implements Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$Doodle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;
    }
.end annotation


# instance fields
.field private canvas_y_offset:I

.field private doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

.field private inputType:I

.field private isInDrag:Z

.field private isInShapeEditMode:Z

.field private last_x:I

.field private last_y:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBoundsPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mIsInEraserMode:Z

.field private mViewBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mViewBackgroundCanvas:Landroid/graphics/Canvas;

.field private mViewRect:Landroid/graphics/Rect;

.field private touch_y_offset:I

.field private final vscrollDrawable:Landroid/graphics/drawable/Drawable;

.field private vscrollRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    .line 44
    iput v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->canvas_y_offset:I

    .line 49
    iput-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollRect:Landroid/graphics/Rect;

    .line 157
    iput v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    .line 310
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInDrag:Z

    .line 360
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInShapeEditMode:Z

    .line 464
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewRect:Landroid/graphics/Rect;

    .line 476
    iput-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 477
    iput-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundCanvas:Landroid/graphics/Canvas;

    .line 73
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mContext:Landroid/content/Context;

    .line 74
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setBackgroundColor(I)V

    .line 75
    iput-boolean v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mIsInEraserMode:Z

    .line 76
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->PEN:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBoundsPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mCanvas:Landroid/graphics/Canvas;

    .line 79
    return-void
.end method

.method private calcCanvasVerticaloffset()V
    .locals 4

    .prologue
    .line 302
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getDoodleRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 303
    .local v0, max_canvs_offset:I
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v1, v2, v3

    .line 305
    .local v1, max_touch_offset:I
    const/high16 v2, 0x3f80

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->canvas_y_offset:I

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "touch_y_offset = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canvas_y_offset = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->canvas_y_offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 480
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getDoodleBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    .local v0, background:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundCanvas:Landroid/graphics/Canvas;

    .line 498
    :cond_2
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 501
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->canvas_y_offset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v5, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 502
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    .line 489
    .local v1, e:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create mViewBackgroundBitmap exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 492
    iput-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewBackgroundBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private drawContent(Landroid/graphics/Canvas;Z)V
    .locals 7
    .parameter "canvas"
    .parameter "withViewBounds"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 507
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getDoodleBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 509
    .local v0, background:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "background = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 511
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->needScroll()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->canvas_y_offset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 514
    :cond_0
    if-nez v0, :cond_5

    .line 515
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 519
    :goto_0
    invoke-super {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->onDraw(Landroid/graphics/Canvas;)V

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 533
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-eqz v3, :cond_1

    .line 534
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v3, p1, v6}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->drawTrace(Landroid/graphics/Canvas;F)V

    .line 538
    :cond_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v3

    invoke-interface {v3}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->getLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v1

    .line 539
    .local v1, lastTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    instance-of v3, v3, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    check-cast v3, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 540
    :cond_2
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    instance-of v3, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    if-eqz v3, :cond_4

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    invoke-direct {p0, v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isShape4InputType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 542
    :cond_3
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-eqz v3, :cond_6

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    :goto_1
    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .line 543
    .local v2, trace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "curTrace = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "trace isEmpty() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->isEmpty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v2, p1, v6}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->drawBounds(Landroid/graphics/Canvas;F)V

    .line 547
    .end local v2           #trace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;
    :cond_4
    return-void

    .line 517
    .end local v1           #lastTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .restart local v1       #lastTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    :cond_6
    move-object v2, v1

    .line 542
    goto :goto_1
.end method

.method private drawViewBounds(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 468
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBoundsPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 469
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBoundsPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 470
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 471
    .local v0, color:I
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBoundsPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 473
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mViewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBoundsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 474
    return-void
.end method

.method private getPenTraceByInputType()Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    .end local v0           #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;-><init>()V

    .line 87
    .restart local v0       #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    goto :goto_0

    .line 89
    :pswitch_1
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;

    .end local v0           #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->PENCIL:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;-><init>(Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;)V

    .line 90
    .restart local v0       #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    goto :goto_0

    .line 92
    :pswitch_2
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;

    .end local v0           #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->MARKER:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;-><init>(Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;)V

    .line 93
    .restart local v0       #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    goto :goto_0

    .line 95
    :pswitch_3
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/EraserTrace;

    .end local v0           #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/EraserTrace;-><init>()V

    .line 96
    .restart local v0       #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    goto :goto_0

    .line 98
    :pswitch_4
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .end local v0           #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;-><init>(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;)V

    .line 99
    .restart local v0       #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    goto :goto_0

    .line 101
    :pswitch_5
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .end local v0           #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->RECT:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;-><init>(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;)V

    .line 102
    .restart local v0       #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    goto :goto_0

    .line 104
    :pswitch_6
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .end local v0           #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->LINE:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;-><init>(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;)V

    .line 105
    .restart local v0       #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    goto :goto_0

    .line 107
    :pswitch_7
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .end local v0           #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;-><init>(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;)V

    .line 108
    .restart local v0       #penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleShapeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 364
    const-string v6, "in handleShapeTouchEvent "

    invoke-static {p0, v6}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v6

    invoke-interface {v6}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->getLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v1

    .line 366
    .local v1, lastTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    instance-of v6, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    if-nez v6, :cond_2

    :cond_0
    move v2, v7

    .line 407
    :cond_1
    :goto_0
    return v2

    .line 369
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "in handleShapeTouchEvent, process event : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    .line 370
    check-cast v3, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .local v3, trace:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;
    move-object v6, v1

    .line 371
    check-cast v6, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->getBounds()Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;

    move-result-object v0

    .line 372
    .local v0, bounds:Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 373
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 375
    .local v5, y:F
    const/4 v2, 0x0

    .line 376
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 378
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "in handleShapeTouchEvent ACTION_DOWN, bounds.isInside4Drag() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->isInside4Drag(FF)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, v4, v5}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->isInside4Drag(FF)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, v4, v5}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->isOnAnchor4Drag(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    :cond_3
    const-string v6, "in handleShapeTouchEvent ACTION_DOWN, inside bounds"

    invoke-static {p0, v6}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    const/4 v6, 0x1

    iput-boolean v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInShapeEditMode:Z

    .line 382
    invoke-virtual {v0, v4, v5}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onDownEvent(FF)V

    .line 383
    const/4 v2, 0x1

    .line 385
    goto :goto_0

    .line 387
    :pswitch_1
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInShapeEditMode:Z

    if-eqz v6, :cond_1

    .line 388
    invoke-virtual {v0, v4, v5}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onMoveEvent(FF)V

    .line 389
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->invalidate()V

    .line 390
    const/4 v2, 0x1

    .line 392
    goto :goto_0

    .line 394
    :pswitch_2
    iget-boolean v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInShapeEditMode:Z

    if-eqz v6, :cond_1

    .line 395
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractShapeBounds;->onUpEvent()V

    .line 396
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->invalidate()V

    .line 397
    iput-boolean v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInShapeEditMode:Z

    .line 398
    const/4 v2, 0x1

    .line 401
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v6

    check-cast v6, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;

    invoke-virtual {v6, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->changeTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V

    goto/16 :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initBitmap()V
    .locals 4

    .prologue
    .line 447
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in initBitmap, create mBitmap, width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 452
    .local v0, tr:Ljava/lang/Throwable;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 454
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private isShape4InputType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 120
    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needScroll()Z
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getDoodleRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 413
    .local v0, rect:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createTraceTool()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    .locals 4

    .prologue
    .line 128
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getPenTraceByInputType()Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    move-result-object v0

    .line 135
    .local v0, penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getPaintwidth()F

    move-result v1

    .line 136
    .local v1, width:F
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    sget-object v3, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ERASER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 137
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getEraserWidth()F

    move-result v1

    .line 139
    :cond_0
    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->setWidth(F)V

    .line 140
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getPaintColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->setColor(I)V

    .line 141
    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 176
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getDoodleBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, background:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 178
    const-string v7, "in getBitmap(), background is null"

    invoke-static {p0, v7}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 180
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 181
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 184
    .local v3, drawBitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    .local v4, drawCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v7

    invoke-interface {v7, v4, v12}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->drawTraces(Landroid/graphics/Canvas;F)V

    .line 187
    invoke-virtual {v2, v3, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    :goto_0
    return-object v1

    .line 191
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #drawBitmap:Landroid/graphics/Bitmap;
    .end local v4           #drawCanvas:Landroid/graphics/Canvas;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "in getBitmap(), background width = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getDoodleRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 193
    .local v6, w:I
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getDoodleRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 194
    .local v5, h:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 195
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getDoodleBackground()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 200
    .restart local v3       #drawBitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .restart local v4       #drawCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v7

    invoke-interface {v7, v4, v12}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->drawTraces(Landroid/graphics/Canvas;F)V

    .line 203
    invoke-virtual {v2, v3, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public getEraserWidth()F
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getEraserWidth()F

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    return v0
.end method

.method public getPaintColor()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getPaintColor()I

    move-result v0

    return v0
.end method

.method public getPaintWidth()F
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getPaintwidth()F

    move-result v0

    return v0
.end method

.method public getRedoCount()I
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->getRedoCount()I

    move-result v0

    return v0
.end method

.method protected getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    return-object v0
.end method

.method public getUndoCount()I
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->getUndoCount()I

    move-result v0

    return v0
.end method

.method public handlePossibleOffsetOnActionUp(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V
    .locals 3
    .parameter "trace"

    .prologue
    .line 576
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->needScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCurTraceOnActionUp() : trace = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    check-cast p1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    .end local p1
    iget-object v0, p1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->canvas_y_offset:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 580
    :cond_0
    return-void
.end method

.method public initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V
    .locals 0
    .parameter "iSkitchMeta"

    .prologue
    .line 240
    check-cast p1, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    .end local p1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    .line 241
    return-void
.end method

.method public onDoodleDone()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 586
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    .line 552
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 554
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 555
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->initBitmap()V

    .line 556
    invoke-direct {p0, p1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->drawContent(Landroid/graphics/Canvas;Z)V

    .line 569
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    instance-of v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    if-eqz v1, :cond_2

    .line 559
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->drawContent(Landroid/graphics/Canvas;Z)V

    .line 564
    :goto_1
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 561
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x3f80

    invoke-interface {v1, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->drawTrace(Landroid/graphics/Canvas;F)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 419
    invoke-super {p0, p1, p2, p3, p4}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->onSizeChanged(IIII)V

    .line 420
    const-string v1, "onSizeChanged in DoodleView : w= %d, h = %d, oldw = %d, oldh = %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 420
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 427
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 428
    const-string v1, "in onsizeChanged(), no need to create mBitmap"

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 433
    const-string v1, "in onSizeChanged(), recycle mBitmap"

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    :cond_3
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 438
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in onSizeChanged(), create mBitmap, width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "create bitmap of the canvas out of memory"

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 313
    const/4 v1, 0x1

    .line 314
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 315
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 317
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 349
    const/4 v1, 0x0

    .line 352
    :cond_0
    :goto_0
    iput v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->last_x:I

    .line 353
    iput v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->last_y:I

    .line 354
    iget v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isShape4InputType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInDrag:Z

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->handleShapeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 355
    :cond_1
    invoke-super {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 357
    .end local v1           #result:Z
    :cond_2
    return v1

    .line 320
    .restart local v1       #result:Z
    :pswitch_0
    iput-boolean v9, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInDrag:Z

    .line 321
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->needScroll()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    iput-boolean v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInDrag:Z

    goto :goto_0

    .line 327
    :pswitch_1
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInDrag:Z

    if-eqz v4, :cond_0

    .line 328
    iget v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->last_y:I

    sub-int v0, v3, v4

    .line 329
    .local v0, offset:I
    const-string v4, "offset = %d, y = %d, last_y = %d, touch_y_offset = %d, max_offset = %d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    iget v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->last_y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 329
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    add-int/2addr v4, v0

    if-gez v4, :cond_3

    .line 332
    iput v9, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    .line 338
    :goto_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->calcCanvasVerticaloffset()V

    .line 340
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->invalidate()V

    goto :goto_0

    .line 333
    :cond_3
    iget v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_4

    .line 334
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->vscrollRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    goto :goto_1

    .line 336
    :cond_4
    iget v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    add-int/2addr v4, v0

    iput v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->touch_y_offset:I

    goto :goto_1

    .line 344
    .end local v0           #offset:I
    :pswitch_2
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isInDrag:Z

    if-eqz v4, :cond_0

    .line 345
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->invalidate()V

    goto/16 :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public redo()V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->restoreLastTrace()Z

    .line 296
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->invalidate()V

    .line 297
    return-void
.end method

.method public setDoodleChangeListener(Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 272
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->setDoodleChangeListener(Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;)V

    .line 273
    return-void
.end method

.method public setEraserwidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 260
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->setEraserwidth(F)V

    .line 261
    return-void
.end method

.method public setInputType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 161
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    .line 162
    .local v0, oldType:I
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->inputType:I

    .line 164
    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isShape4InputType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->isShape4InputType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->invalidate()V

    .line 167
    :cond_0
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 245
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->setPaintColor(I)V

    .line 246
    return-void
.end method

.method public setPaintWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 255
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->doodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->setPaintwidth(F)V

    .line 256
    return-void
.end method

.method public trash()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->clear()V

    .line 266
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->invalidate()V

    .line 267
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->removeLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 290
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->invalidate()V

    .line 291
    return-void
.end method
