.class public Lcom/android/calendar/ColorChipView;
.super Landroid/view/View;
.source "ColorChipView.java"


# static fields
.field private static final DEF_BORDER_WIDTH:I = 0x4

.field public static final DRAW_BORDER:I = 0x1

.field public static final DRAW_FADED:I = 0x2

.field public static final DRAW_FULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorChipView"


# instance fields
.field mBorderWidth:I

.field mColor:I

.field private mDefStrokeWidth:F

.field private mDrawStyle:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    .line 58
    invoke-direct {p0}, Lcom/android/calendar/ColorChipView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    .line 63
    invoke-direct {p0}, Lcom/android/calendar/ColorChipView;->init()V

    .line 64
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ColorChipView;->mPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/android/calendar/ColorChipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/calendar/ColorChipView;->mDefStrokeWidth:F

    .line 69
    iget-object v0, p0, Lcom/android/calendar/ColorChipView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .line 97
    .local v12, right:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 98
    .local v6, bottom:I
    iget-object v2, p0, Lcom/android/calendar/ColorChipView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/calendar/ColorChipView;->mColor:I

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :cond_0
    :goto_1
    return-void

    .line 98
    :cond_1
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mColor:I

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/ColorChipView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/ColorChipView;->mDefStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    int-to-float v3, v12

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/calendar/ColorChipView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 108
    :pswitch_1
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 111
    iget v0, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    div-int/lit8 v7, v0, 0x2

    .line 112
    .local v7, halfBorderWidth:I
    move v13, v7

    .line 113
    .local v13, top:I
    move v8, v7

    .line 114
    .local v8, left:I
    iget-object v0, p0, Lcom/android/calendar/ColorChipView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    const/16 v0, 0x10

    new-array v9, v0, [F

    .line 117
    .local v9, lines:[F
    const/4 v10, 0x0

    .line 118
    .local v10, ptr:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .local v11, ptr:I
    aput v1, v9, v10

    .line 119
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    int-to-float v0, v13

    aput v0, v9, v11

    .line 120
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    int-to-float v0, v12

    aput v0, v9, v10

    .line 121
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    int-to-float v0, v13

    aput v0, v9, v11

    .line 122
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    aput v1, v9, v10

    .line 123
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    sub-int v0, v6, v7

    int-to-float v0, v0

    aput v0, v9, v11

    .line 124
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    int-to-float v0, v12

    aput v0, v9, v10

    .line 125
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    sub-int v0, v6, v7

    int-to-float v0, v0

    aput v0, v9, v11

    .line 126
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    int-to-float v0, v8

    aput v0, v9, v10

    .line 127
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    aput v1, v9, v11

    .line 128
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    int-to-float v0, v8

    aput v0, v9, v10

    .line 129
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    int-to-float v0, v6

    aput v0, v9, v11

    .line 130
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    sub-int v0, v12, v7

    int-to-float v0, v0

    aput v0, v9, v10

    .line 131
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    aput v1, v9, v11

    .line 132
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ptr:I
    .restart local v11       #ptr:I
    sub-int v0, v12, v7

    int-to-float v0, v0

    aput v0, v9, v10

    .line 133
    add-int/lit8 v10, v11, 0x1

    .end local v11           #ptr:I
    .restart local v10       #ptr:I
    int-to-float v0, v6

    aput v0, v9, v11

    .line 134
    iget-object v0, p0, Lcom/android/calendar/ColorChipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBorderWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 82
    if-ltz p1, :cond_0

    .line 83
    iput p1, p0, Lcom/android/calendar/ColorChipView;->mBorderWidth:I

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 86
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/calendar/ColorChipView;->mColor:I

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 91
    return-void
.end method

.method public setDrawStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iput p1, p0, Lcom/android/calendar/ColorChipView;->mDrawStyle:I

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
