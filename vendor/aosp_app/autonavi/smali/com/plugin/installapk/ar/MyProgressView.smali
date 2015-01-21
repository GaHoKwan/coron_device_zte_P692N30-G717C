.class public Lcom/plugin/installapk/ar/MyProgressView;
.super Landroid/view/View;


# static fields
.field private static final TAG:Ljava/lang/String; = "chenwei.MyProgressView"


# instance fields
.field private height:I

.field private mPaint:Landroid/graphics/Paint;

.field private passDis:I

.field private progress:I

.field private rectf:Landroid/graphics/RectF;

.field private totalDis:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/plugin/installapk/ar/MyProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/plugin/installapk/ar/MyProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->height:I

    invoke-direct {p0}, Lcom/plugin/installapk/ar/MyProgressView;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x14

    const/16 v2, 0x2e

    const/16 v3, 0x45

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->rectf:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->totalDis:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->rectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/plugin/installapk/ar/MyProgressView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/plugin/installapk/ar/MyProgressView;->height:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->rectf:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/plugin/installapk/ar/MyProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/plugin/installapk/ar/MyProgressView;->rectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/plugin/installapk/ar/MyProgressView;->passDis:I

    int-to-float v1, v1

    iget v2, p0, Lcom/plugin/installapk/ar/MyProgressView;->totalDis:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/plugin/installapk/ar/MyProgressView;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/plugin/installapk/ar/MyProgressView;->height:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/plugin/installapk/ar/MyProgressView;->passDis:I

    invoke-virtual {p0}, Lcom/plugin/installapk/ar/MyProgressView;->invalidate()V

    return-void
.end method

.method public setRectWidth(I)V
    .locals 0

    iput p1, p0, Lcom/plugin/installapk/ar/MyProgressView;->width:I

    return-void
.end method

.method public setTotalDis(I)V
    .locals 0

    iput p1, p0, Lcom/plugin/installapk/ar/MyProgressView;->totalDis:I

    return-void
.end method
