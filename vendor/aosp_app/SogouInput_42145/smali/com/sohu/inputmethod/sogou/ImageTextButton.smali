.class public Lcom/sohu/inputmethod/sogou/ImageTextButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/graphics/Paint$FontMetricsInt;

.field a:Landroid/graphics/Paint;

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ImageTextButton"

    sput-object v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->b:Ljava/lang/String;

    .line 18
    const-wide v0, 0x3fa999999999999aL

    sget v2, Laox;->a:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->d:I

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 42
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 46
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->b:Ljava/lang/String;

    .line 18
    const-wide v0, 0x3fa999999999999aL

    sget v2, Laox;->a:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->d:I

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 31
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 34
    iget v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 37
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 87
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 88
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->b:Ljava/lang/String;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->d:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    return-void
.end method

.method public setButtonSize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->b:I

    .line 79
    iput p2, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->c:I

    .line 80
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:I

    .line 70
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->d:I

    .line 75
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    .line 64
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 66
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .parameter

    .prologue
    .line 57
    int-to-float v0, p1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:F

    .line 58
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/ImageTextButton;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 60
    return-void
.end method
