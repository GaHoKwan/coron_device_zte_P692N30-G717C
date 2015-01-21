.class public Lcom/sohu/inputmethod/sogou/LineView;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/graphics/Paint;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/LineView;->a:Landroid/graphics/Paint;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/LineView;->a:Landroid/graphics/Paint;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/LineView;->a:Landroid/graphics/Paint;

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/LineView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/LineView;->a:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/LineView;->getHeight()I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    .line 27
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/LineView;->getWidth()I

    move-result v2

    const-wide/high16 v5, 0x3ff8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    double-to-int v0, v5

    sub-int v0, v2, v0

    .line 29
    int-to-float v1, v1

    int-to-float v2, v4

    int-to-float v3, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/LineView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/sohu/inputmethod/sogou/LineView;->b:I

    .line 39
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/LineView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/sohu/inputmethod/sogou/LineView;->a:I

    .line 35
    return-void
.end method
