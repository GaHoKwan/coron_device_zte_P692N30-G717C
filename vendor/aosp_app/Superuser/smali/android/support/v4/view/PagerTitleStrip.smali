.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$鷭;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$1;,
        Landroid/support/v4/view/PagerTitleStrip$鷭;
    }
.end annotation


# static fields
.field private static final Ȋ:[I


# instance fields
.field private Ą:I

.field private ą:F

.field private Ć:I

.field private ć:Z

.field private ȃ:Landroid/widget/TextView;

.field private ˮ͈:Landroid/widget/TextView;

.field private ˮ͍:Z

.field private final 岱:Landroid/support/v4/view/PagerTitleStrip$鷭;

.field private 櫯:Landroid/widget/TextView;

.field 鷭:Landroid/support/v4/view/ViewPager;


# direct methods
.method static <clinit>()V
    .locals 3

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->Ȋ:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Ą:I

    .line 49
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ą:F

    .line 55
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$鷭;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/view/PagerTitleStrip$鷭;-><init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->岱:Landroid/support/v4/view/PagerTitleStrip$鷭;

    .line 73
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 77
    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->Ȋ:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 81
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 82
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 86
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    int-to-float v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    int-to-float v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    int-to-float v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    .line 99
    const v0, 0xffffff

    and-int/2addr v0, p2

    const/high16 v1, -0x6700

    or-int p2, v1, v0

    .line 100
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 104
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 107
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 108
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 111
    const/high16 v0, 0x4180

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Ć:I

    .line 112
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 119
    instance-of v0, v2, Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    move-object v0, v2

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 125
    move-object v2, v0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    .line 127
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->岱:Landroid/support/v4/view/PagerTitleStrip$鷭;

    iput-object v0, v2, Landroid/support/v4/view/ViewPager;->ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

    .line 128
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->岱:Landroid/support/v4/view/PagerTitleStrip$鷭;

    iput-object v0, v2, Landroid/support/v4/view/ViewPager;->ȃ:Landroid/support/v4/view/ViewPager$櫯;

    .line 129
    iput-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->鷭(Lo/ċ;Lo/ċ;)V

    .line 131
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->鷭(Lo/ċ;Lo/ċ;)V

    .line 136
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/view/ViewPager;->ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

    .line 137
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/view/ViewPager;->ȃ:Landroid/support/v4/view/ViewPager$櫯;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    .line 139
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    iget v0, v0, Landroid/support/v4/view/ViewPager;->櫯:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->鷭(IF)V

    .line 288
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 250
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 251
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 253
    const/high16 v0, 0x4000

    if-eq v2, v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    const/4 v4, 0x0

    .line 259
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v1

    add-int v5, v0, v1

    .line 265
    sub-int v2, p2, v5

    .line 267
    int-to-float v0, p1

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 269
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 271
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->measure(II)V

    .line 272
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->measure(II)V

    .line 273
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->measure(II)V

    .line 275
    const/high16 v0, 0x4000

    if-ne v3, v0, :cond_2

    .line 276
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    return-void

    .line 278
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    .line 279
    add-int v0, p2, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 281
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ć:Z

    if-nez v0, :cond_0

    .line 181
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 183
    :cond_0
    return-void
.end method

.method final 鷭(IF)V
    .locals 13

    .line 0
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Ą:I

    if-eq p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;->鷭(ILo/ċ;)V

    goto :goto_0

    .line 203
    :cond_0
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ą:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 204
    return-void

    .line 207
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͍:Z

    .line 209
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 210
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 211
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 212
    div-int/lit8 v5, v3, 0x2

    .line 214
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v6

    .line 215
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v7

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v8

    .line 217
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v9

    .line 218
    add-int v10, v7, v5

    .line 219
    add-int v11, v8, v5

    .line 220
    sub-int v0, v6, v10

    sub-int v10, v0, v11

    .line 222
    const/high16 v0, 0x3f00

    add-float v12, p2, v0

    .line 223
    const/high16 v0, 0x3f80

    cmpl-float v0, v12, v0

    if-lez v0, :cond_2

    .line 224
    const/high16 v0, 0x3f80

    sub-float/2addr v12, v0

    .line 226
    :cond_2
    sub-int v0, v6, v11

    int-to-float v1, v10

    mul-float/2addr v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 227
    sub-int v5, v0, v5

    .line 228
    add-int/2addr v3, v5

    .line 230
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v0, v5, v9, v3, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 233
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Ć:I

    sub-int v0, v5, v0

    sub-int/2addr v0, p1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 234
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    add-int v1, v5, p1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v0, v5, v9, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 237
    sub-int v0, v6, v8

    sub-int/2addr v0, v4

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->Ć:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 239
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    add-int v1, p1, v4

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v0, p1, v9, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 242
    iput p2, p0, Landroid/support/v4/view/PagerTitleStrip;->ą:F

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͍:Z

    .line 244
    return-void
.end method

.method final 鷭(ILo/ċ;)V
    .locals 4

    .line 0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lo/ċ;->getCount()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 143
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ć:Z

    .line 145
    const/4 v3, 0x0

    .line 146
    if-lez p1, :cond_1

    if-eqz p2, :cond_1

    .line 147
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2, v0}, Lo/ċ;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 149
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lo/ċ;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/4 v3, 0x0

    .line 154
    add-int/lit8 v0, p1, 0x1

    if-ge v0, v2, :cond_3

    if-eqz p2, :cond_3

    .line 155
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Lo/ċ;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 157
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v1

    sub-int p2, v0, v1

    .line 161
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    .line 162
    int-to-float v0, p2

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 164
    const/high16 v0, 0x4000

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 165
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 166
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 167
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 169
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->Ą:I

    .line 171
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ˮ͍:Z

    if-nez v0, :cond_4

    .line 172
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ą:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;->鷭(IF)V

    .line 175
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ć:Z

    .line 176
    return-void
.end method

.method final 鷭(Lo/ċ;Lo/ċ;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->岱:Landroid/support/v4/view/PagerTitleStrip$鷭;

    invoke-virtual {p1, v0}, Lo/ċ;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 189
    :cond_0
    if-eqz p2, :cond_1

    .line 190
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->岱:Landroid/support/v4/view/PagerTitleStrip$鷭;

    invoke-virtual {p2, v0}, Lo/ċ;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 192
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->Ą:I

    .line 194
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->ą:F

    .line 195
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->鷭:Landroid/support/v4/view/ViewPager;

    iget v0, v0, Landroid/support/v4/view/ViewPager;->櫯:I

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->鷭(ILo/ċ;)V

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 198
    :cond_2
    return-void
.end method
