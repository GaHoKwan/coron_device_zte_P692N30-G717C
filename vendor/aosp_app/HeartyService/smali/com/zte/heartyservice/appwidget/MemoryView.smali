.class public Lcom/zte/heartyservice/appwidget/MemoryView;
.super Landroid/view/View;
.source "MemoryView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryView"


# instance fields
.field private adjustment1:I

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private percent:I

.field private radius:F

.field private scale:F

.field private size:F

.field private viewTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/high16 v0, 0x42aa

    iput v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    .line 19
    const v0, 0x41f9999a

    iput v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->radius:F

    .line 22
    iput v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->percent:I

    .line 24
    iput v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->adjustment1:I

    .line 38
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/MemoryView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/high16 v0, 0x42aa

    iput v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    .line 19
    const v0, 0x41f9999a

    iput v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->radius:F

    .line 22
    iput v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->percent:I

    .line 24
    iput v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->adjustment1:I

    .line 33
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/MemoryView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/high16 v0, 0x42aa

    iput v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    .line 19
    const v0, 0x41f9999a

    iput v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->radius:F

    .line 22
    iput v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->percent:I

    .line 24
    iput v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->adjustment1:I

    .line 28
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/MemoryView;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, sizeStr:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0002

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, radiusStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    .line 50
    :cond_0
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->radius:F

    .line 53
    :cond_1
    iget v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    iput v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->viewTop:F

    .line 54
    iget v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->radius:F

    const/high16 v3, 0x4248

    div-float/2addr v2, v3

    iput v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->scale:F

    .line 56
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->mPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->adjustment1:I

    .line 59
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 62
    iget v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->percent:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    :goto_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->viewTop:F

    iget v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    iget v3, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 68
    iget v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    div-float/2addr v0, v4

    iget v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->radius:F

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x990100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 82
    iget v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    float-to-int v0, v0

    iget v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/appwidget/MemoryView;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method public setCanvas(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 73
    iput p1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->percent:I

    .line 74
    iget v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->size:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->radius:F

    add-float/2addr v0, v1

    int-to-float v1, p1

    iget v2, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->viewTop:F

    .line 75
    iget v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->viewTop:F

    iget v1, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->adjustment1:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zte/heartyservice/appwidget/MemoryView;->viewTop:F

    .line 76
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/MemoryView;->invalidate()V

    .line 77
    return-void
.end method
