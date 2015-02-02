.class public Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;
.super Landroid/view/View;
.source "TouchPanelTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PaintView"
.end annotation


# static fields
.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "c"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;

    .line 49
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    const/16 v0, 0x1e0

    const/16 v1, 0x320

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mCanvas:Landroid/graphics/Canvas;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mPath:Landroid/graphics/Path;

    .line 56
    return-void
.end method

.method private touch_move(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4080

    .line 78
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 79
    .local v0, dx:F
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 80
    .local v1, dy:F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mX:F

    .line 83
    iput p2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mY:F

    .line 85
    :cond_1
    return-void
.end method

.method private touch_start(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 72
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mX:F

    .line 74
    iput p2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mY:F

    .line 75
    return-void
.end method

.method private touch_up()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mX:F

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->access$000(Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 93
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 62
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->access$000(Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 98
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 100
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 102
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->touch_start(FF)V

    .line 103
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->invalidate()V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->touch_move(FF)V

    .line 107
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->invalidate()V

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->touch_up()V

    .line 111
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;->invalidate()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
