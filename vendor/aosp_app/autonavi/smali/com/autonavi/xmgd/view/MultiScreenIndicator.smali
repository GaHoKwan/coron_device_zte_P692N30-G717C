.class public Lcom/autonavi/xmgd/view/MultiScreenIndicator;
.super Landroid/view/View;


# instance fields
.field private final DEFAULT_SIZE:I

.field private mCurrent:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mSpacing:I

.field private mTotal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mSpacing:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->DEFAULT_SIZE:I

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrent:I

    return v0
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNormalDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSpacing()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mSpacing:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mTotal:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x2

    iget-object v4, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mSpacing:I

    iget v7, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrent:I

    iget v8, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mTotal:I

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v8, :cond_3

    if-ne v1, v7, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    if-ne v1, v7, :cond_1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_2
    const v0, -0x777778

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x12

    add-int/lit8 v9, v2, 0x9

    int-to-float v9, v9

    int-to-float v10, v5

    const/high16 v11, 0x4110

    invoke-virtual {p1, v9, v10, v11, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3
    add-int/2addr v0, v6

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v3, v4

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v5, v10

    add-int v11, v2, v0

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v5

    invoke-virtual {v3, v2, v10, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    move v3, v2

    move v2, v1

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    :goto_1
    iget v4, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mSpacing:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mTotal:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->setMeasuredDimension(II)V

    return-void

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    move v2, v0

    move v3, v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;

    invoke-virtual {p1}, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;->currentScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;->currentScreen:I

    iput v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrent:I

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrent:I

    iput v1, v0, Lcom/autonavi/xmgd/view/MultiScreen$SavedState;->currentScreen:I

    return-object v0
.end method

.method public setCurrent(I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mTotal:I

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrent:I

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setCurrentBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->invalidate()V

    return-void
.end method

.method public setIndicatorDrawableId(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setNormalBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->invalidate()V

    return-void
.end method

.method public setNormalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->invalidate()V

    return-void
.end method

.method public setNormalResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->invalidate()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mSpacing:I

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setTotal(I)V
    .locals 0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->mTotal:I

    invoke-virtual {p0}, Lcom/autonavi/xmgd/view/MultiScreenIndicator;->requestLayout()V

    goto :goto_0
.end method
