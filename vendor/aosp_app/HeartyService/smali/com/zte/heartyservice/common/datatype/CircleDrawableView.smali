.class public Lcom/zte/heartyservice/common/datatype/CircleDrawableView;
.super Landroid/view/View;
.source "CircleDrawableView.java"


# instance fields
.field private aShader:Landroid/graphics/Shader;

.field private bitmap:Landroid/graphics/Bitmap;

.field protected centerX:I

.field protected centerY:I

.field private drawableSrc:I

.field private lastDrawableSrc:I

.field private mDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field protected minSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 28
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->aShader:Landroid/graphics/Shader;

    .line 29
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->lastDrawableSrc:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 28
    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->aShader:Landroid/graphics/Shader;

    .line 29
    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->lastDrawableSrc:I

    .line 44
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->setClickable(Z)V

    .line 45
    sget-object v1, Lcom/zte/heartyservice/R$styleable;->CircleDrawableView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->drawableSrc:I

    .line 47
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v3, 0x0

    const/high16 v4, 0x43b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 50
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->drawableSrc:I

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->setDrawableSrc(I)V

    .line 52
    return-void
.end method

.method private initDrawable()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->aShader:Landroid/graphics/Shader;

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->getLeft()I

    move-result v1

    .line 62
    .local v1, left:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->getBottom()I

    move-result v0

    .line 63
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->getRight()I

    move-result v2

    .line 64
    .local v2, right:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->getTop()I

    move-result v3

    .line 65
    .local v3, top:I
    sub-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->centerX:I

    .line 66
    sub-int v4, v0, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->centerY:I

    .line 67
    sub-int v4, v2, v1

    sub-int v5, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->minSize:I

    .line 69
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->aShader:Landroid/graphics/Shader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v5, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->minSize:I

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->minSize:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 71
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method public setDrawableSrc(I)V
    .locals 1
    .parameter "drawableSrc"

    .prologue
    .line 75
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->lastDrawableSrc:I

    if-eq v0, p1, :cond_1

    .line 76
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->lastDrawableSrc:I

    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->bitmap:Landroid/graphics/Bitmap;

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->initDrawable()V

    .line 83
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->postInvalidate()V

    .line 84
    return-void
.end method
