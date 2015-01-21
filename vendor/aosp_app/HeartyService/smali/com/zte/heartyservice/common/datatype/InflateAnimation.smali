.class public Lcom/zte/heartyservice/common/datatype/InflateAnimation;
.super Landroid/view/View;
.source "InflateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/datatype/InflateAnimation$1;,
        Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InflateAnimation"


# instance fields
.field private final DELETE_MSGS:Ljava/lang/Integer;

.field private adjustmentValue:I

.field private areaSize:I

.field private fromDegree:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

.field private mPaint:Landroid/graphics/Paint;

.field private passDegree:I

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    iput v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->adjustmentValue:I

    .line 23
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->DELETE_MSGS:Ljava/lang/Integer;

    .line 25
    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->passDegree:I

    .line 26
    iput v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->fromDegree:I

    .line 41
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->adjustmentValue:I

    .line 23
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->DELETE_MSGS:Ljava/lang/Integer;

    .line 25
    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->passDegree:I

    .line 26
    iput v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->fromDegree:I

    .line 36
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->adjustmentValue:I

    .line 23
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->DELETE_MSGS:Ljava/lang/Integer;

    .line 25
    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->passDegree:I

    .line 26
    iput v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->fromDegree:I

    .line 31
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/common/datatype/InflateAnimation;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->DELETE_MSGS:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/common/datatype/InflateAnimation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->reDraw()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v3, 0x40a0

    .line 45
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    .line 47
    const-string v0, "InflateAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areaSize:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->rectF:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    const/16 v0, 0xc

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->adjustmentValue:I

    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mContext:Landroid/content/Context;

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    new-instance v0, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;-><init>(Lcom/zte/heartyservice/common/datatype/InflateAnimation;Lcom/zte/heartyservice/common/datatype/InflateAnimation$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mHandler:Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    .line 56
    return-void
.end method

.method private reDraw()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->invalidate()V

    .line 107
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->fromDegree:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->adjustmentValue:I

    add-int/2addr v0, v1

    const/16 v1, 0x168

    if-lt v0, v1, :cond_0

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->fromDegree:I

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->fromDegree:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->adjustmentValue:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->fromDegree:I

    goto :goto_0
.end method


# virtual methods
.method public endAnimation()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mHandler:Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mHandler:Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->DELETE_MSGS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;->removeMessages(I)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mHandler:Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 97
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->rectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->fromDegree:I

    int-to-float v2, v0

    iget v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->passDegree:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 102
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->areaSize:I

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->setMeasuredDimension(II)V

    .line 103
    return-void
.end method

.method public setPaintColor(I)V
    .locals 2
    .parameter "colorId"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->invalidate()V

    .line 85
    return-void
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mHandler:Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;-><init>(Lcom/zte/heartyservice/common/datatype/InflateAnimation;Lcom/zte/heartyservice/common/datatype/InflateAnimation$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mHandler:Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mContext:Landroid/content/Context;

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->mHandler:Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->DELETE_MSGS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    return-void
.end method
