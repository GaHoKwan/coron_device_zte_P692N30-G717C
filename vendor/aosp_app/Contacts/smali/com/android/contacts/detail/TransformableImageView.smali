.class public Lcom/android/contacts/detail/TransformableImageView;
.super Landroid/widget/ImageView;
.source "TransformableImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v11, 0x3f00

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    .line 44
    .local v5, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .local v1, drawMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 48
    .local v2, dwidth:I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 50
    .local v0, dheight:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v8, v9, v10

    .line 51
    .local v8, vwidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v7, v9, v10

    .line 53
    .local v7, vheight:I
    const/4 v3, 0x0

    .local v3, dx:F
    const/4 v4, 0x0

    .line 55
    .local v4, dy:F
    mul-int v9, v2, v7

    mul-int v10, v8, v0

    if-le v9, v10, :cond_0

    .line 56
    int-to-float v9, v7

    int-to-float v10, v0

    div-float v6, v9, v10

    .line 57
    .local v6, scale:F
    int-to-float v9, v8

    int-to-float v10, v2

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float v3, v9, v11

    .line 63
    :goto_0
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 64
    add-float v9, v3, v11

    float-to-int v9, v9

    int-to-float v9, v9

    add-float v10, v4, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 65
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 68
    return-void

    .line 59
    .end local v6           #scale:F
    :cond_0
    int-to-float v9, v8

    int-to-float v10, v2

    div-float v6, v9, v10

    .line 60
    .restart local v6       #scale:F
    int-to-float v9, v7

    int-to-float v10, v0

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float v4, v9, v11

    goto :goto_0
.end method
