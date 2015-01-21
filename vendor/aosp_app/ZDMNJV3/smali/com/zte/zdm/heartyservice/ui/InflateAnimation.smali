.class public Lcom/zte/zdm/heartyservice/ui/InflateAnimation;
.super Landroid/view/View;


# static fields
.field private static final a:Ljava/lang/String; = "InflateAnimation"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private final f:Ljava/lang/Integer;

.field private g:Landroid/graphics/RectF;

.field private h:I

.field private i:I

.field private j:Lcom/zte/zdm/heartyservice/ui/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->e:I

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->f:Ljava/lang/Integer;

    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->h:I

    iput v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->i:I

    invoke-direct {p0, p1}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->e:I

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->f:Ljava/lang/Integer;

    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->h:I

    iput v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->i:I

    invoke-direct {p0, p1}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->e:I

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->f:Ljava/lang/Integer;

    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->h:I

    iput v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->i:I

    invoke-direct {p0, p1}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/high16 v3, 0x40a0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    const-string v0, "InflateAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areaSize:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v0, 0xc

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->e:I

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40e0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->b:Landroid/content/Context;

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/zte/zdm/heartyservice/ui/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/heartyservice/ui/m;-><init>(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;Lcom/zte/zdm/heartyservice/ui/l;)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->j:Lcom/zte/zdm/heartyservice/ui/m;

    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->invalidate()V

    iget v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->i:I

    iget v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->e:I

    add-int/2addr v0, v1

    const/16 v1, 0x168

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->i:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->i:I

    iget v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->i:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->j:Lcom/zte/zdm/heartyservice/ui/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/heartyservice/ui/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/heartyservice/ui/m;-><init>(Lcom/zte/zdm/heartyservice/ui/InflateAnimation;Lcom/zte/zdm/heartyservice/ui/l;)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->j:Lcom/zte/zdm/heartyservice/ui/m;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->b:Landroid/content/Context;

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->j:Lcom/zte/zdm/heartyservice/ui/m;

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/zdm/heartyservice/ui/m;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->j:Lcom/zte/zdm/heartyservice/ui/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->j:Lcom/zte/zdm/heartyservice/ui/m;

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/ui/m;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->j:Lcom/zte/zdm/heartyservice/ui/m;

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->g:Landroid/graphics/RectF;

    iget v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->i:I

    int-to-float v2, v0

    iget v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->h:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    iget v1, p0, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/zte/zdm/heartyservice/ui/InflateAnimation;->setMeasuredDimension(II)V

    return-void
.end method
