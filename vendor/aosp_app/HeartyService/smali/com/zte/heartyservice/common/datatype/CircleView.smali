.class public Lcom/zte/heartyservice/common/datatype/CircleView;
.super Lcom/zte/heartyservice/common/datatype/CircleDrawableView;
.source "CircleView.java"


# instance fields
.field protected mPaint:Landroid/graphics/Paint;

.field private pressedDrawable:I

.field protected text1:Ljava/lang/String;

.field protected text2:Ljava/lang/String;

.field protected textSizes:[I

.field protected txtColors:[I

.field private txtMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 31
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 19
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtColors:[I

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->textSizes:[I

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtMarginTop:I

    .line 32
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->init()V

    .line 33
    return-void

    .line 20
    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/heartyservice/common/datatype/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 19
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtColors:[I

    .line 20
    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->textSizes:[I

    .line 24
    const/16 v7, 0xa

    iput v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtMarginTop:I

    .line 42
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->init()V

    .line 43
    sget-object v7, Lcom/zte/heartyservice/R$styleable;->CircleView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 44
    .local v6, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 45
    .local v0, N:I
    const/4 v3, -0x1

    .line 46
    .local v3, resouceId:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 47
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 48
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 46
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :pswitch_0
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtColors:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    aput v9, v7, v8

    goto :goto_1

    .line 53
    :pswitch_1
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtColors:[I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    aput v9, v7, v8

    goto :goto_1

    .line 56
    :pswitch_2
    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 57
    .local v4, size1:I
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->textSizes:[I

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    aput v9, v7, v8

    goto :goto_1

    .line 60
    .end local v4           #size1:I
    :pswitch_3
    const/4 v7, 0x3

    const/16 v8, 0xd

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 61
    .local v5, size2:I
    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->textSizes:[I

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    aput v9, v7, v8

    goto :goto_1

    .line 64
    .end local v5           #size2:I
    :pswitch_4
    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->pressedDrawable:I

    goto :goto_1

    .line 67
    :pswitch_5
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 68
    if-lez v3, :cond_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_2
    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text1:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 72
    :pswitch_6
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 73
    if-lez v3, :cond_1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_3
    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text2:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 79
    .end local v1           #attr:I
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0085

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtMarginTop:I

    .line 81
    return-void

    .line 20
    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public getText1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text1:Ljava/lang/String;

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text2:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const-wide/high16 v10, 0x4000

    const-wide/16 v8, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/CircleDrawableView;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text1:Ljava/lang/String;

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->textSizes:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtColors:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    div-double v0, v4, v10

    .line 90
    .local v0, startText1_X:D
    cmpg-double v4, v0, v8

    if-gez v4, :cond_0

    .line 91
    const-wide/16 v0, 0x0

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text2:Ljava/lang/String;

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text1:Ljava/lang/String;

    double-to-float v5, v0

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->centerY:I

    add-int/lit8 v6, v6, -0x14

    int-to-float v6, v6

    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    .end local v0           #startText1_X:D
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text2:Ljava/lang/String;

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtColors:[I

    aget v5, v5, v12

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->textSizes:[I

    aget v5, v5, v12

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    div-double v2, v4, v10

    .line 103
    .local v2, startText2_X:D
    cmpg-double v4, v2, v8

    if-gez v4, :cond_2

    .line 104
    const-wide/16 v2, 0x0

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text2:Ljava/lang/String;

    double-to-float v5, v2

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->centerY:I

    iget v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->txtMarginTop:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    .end local v2           #startText2_X:D
    :cond_3
    return-void

    .line 95
    .restart local v0       #startText1_X:D
    :cond_4
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text1:Ljava/lang/String;

    double-to-float v5, v0

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->centerY:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setText1(Ljava/lang/String;)V
    .locals 0
    .parameter "text1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text1:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->postInvalidate()V

    .line 116
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .locals 0
    .parameter "text2"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CircleView;->text2:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CircleView;->postInvalidate()V

    .line 125
    return-void
.end method
