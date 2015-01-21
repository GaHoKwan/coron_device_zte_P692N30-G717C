.class public Lcom/autonavi/xmgd/view/GDScrollText;
.super Landroid/widget/AbsoluteLayout;


# instance fields
.field private context:Landroid/content/Context;

.field private startOffset:I

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/GDScrollText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/GDScrollText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/GDScrollText;->init(Landroid/content/Context;)V

    return-void
.end method

.method private _setText(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/GDScrollText;->stopAnimation()V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v7, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDScrollText;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/GDScrollText;->getTextSize()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/autonavi/xmgd/view/GDScrollText;->getFontHeight(F)I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x3

    sub-int v9, v2, v4

    sub-int/2addr v9, v5

    if-le v7, v9, :cond_1

    iget-object v9, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v11, 0x0

    sub-int/2addr v3, v6

    sub-int v0, v3, v0

    sub-int/2addr v0, v8

    shr-int/lit8 v0, v0, 0x1

    invoke-direct {v10, v7, v8, v11, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sub-int v3, v2, v7

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-direct {v0, v12, v3, v12, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sub-int v2, v7, v2

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/view/GDScrollText;->calDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget v2, p0, Lcom/autonavi/xmgd/view/GDScrollText;->startOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    sub-int/2addr v2, v7

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v3, v6

    sub-int v0, v3, v0

    sub-int/2addr v0, v8

    shr-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v7, v8, v2, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private calDuration(I)I
    .locals 2

    mul-int/lit8 v0, p1, 0x58

    const/16 v1, 0x206

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/view/GDScrollText;->context:Landroid/content/Context;

    const/16 v0, 0x206

    iput v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->startOffset:I

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xmgd/view/GDScrollText;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    const/high16 v1, 0x41e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/GDScrollText;->addView(Landroid/view/View;)V

    return-void
.end method

.method private startAnimation()V
    .locals 0

    return-void
.end method

.method private stopAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/view/GDScrollText;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public getFontHeight(F)I
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/view/GDScrollText;->_setText(Ljava/lang/String;)V

    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setStartOffset(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/view/GDScrollText;->startOffset:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/GDScrollText;->_setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDScrollText;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
