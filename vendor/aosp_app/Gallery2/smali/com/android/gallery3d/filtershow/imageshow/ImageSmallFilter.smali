.class public Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageSmallFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Gallery2/ImageSmallFilter"

.field protected static mBackgroundColor:I

.field protected static mMargin:I

.field protected static mTextMargin:I


# instance fields
.field private mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field protected mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field protected mIsSelected:Z

.field private mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mSelectedBackgroundColor:I

.field private mSetBorder:Z

.field private mShowTitle:Z

.field protected final mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xc

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    .line 44
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    .line 45
    const v0, -0xffff01

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Z)V

    .line 35
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 36
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 46
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSelectedBackgroundColor:I

    .line 47
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextColor:I

    .line 73
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 35
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 36
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 46
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSelectedBackgroundColor:I

    .line 47
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextColor:I

    .line 66
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 59
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    .line 60
    return-void
.end method

.method public static setMargin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 51
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    .line 52
    return-void
.end method

.method public static setTextMargin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 55
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    .line 56
    return-void
.end method


# virtual methods
.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "canvas"
    .parameter "image"
    .parameter "destination"

    .prologue
    const/high16 v7, 0x4000

    .line 202
    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 204
    .local v1, iw:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 205
    .local v0, ih:I
    const/4 v4, 0x0

    .line 206
    .local v4, x:I
    const/4 v5, 0x0

    .line 207
    .local v5, y:I
    const/4 v2, 0x0

    .line 208
    .local v2, size:I
    const/4 v3, 0x0

    .line 209
    .local v3, source:Landroid/graphics/Rect;
    if-le v1, v0, :cond_1

    .line 210
    move v2, v0

    .line 211
    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 212
    const/4 v5, 0x0

    .line 218
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #source:Landroid/graphics/Rect;
    add-int v6, v4, v2

    add-int v7, v5, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    .restart local v3       #source:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 221
    .end local v0           #ih:I
    .end local v1           #iw:I
    .end local v2           #size:I
    .end local v3           #source:Landroid/graphics/Rect;
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    return-void

    .line 214
    .restart local v0       #ih:I
    .restart local v1       #iw:I
    .restart local v2       #size:I
    .restart local v3       #source:Landroid/graphics/Rect;
    .restart local v4       #x:I
    .restart local v5       #y:I
    :cond_1
    move v2, v1

    .line 215
    const/4 v4, 0x0

    .line 216
    sub-int v6, v0, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v5, v6

    goto :goto_0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v0, :cond_2

    .line 121
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->useImageFilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/filters/ImageFilter;Z)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v0, :cond_0

    .line 128
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->useImagePreset(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, -0x1

    .line 180
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 181
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 183
    .local v8, textWidth:F
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    .line 186
    .local v7, h:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 187
    .local v9, viewWidth:I
    int-to-float v0, v9

    cmpl-float v0, v0, v8

    if-lez v0, :cond_1

    int-to-float v0, v9

    sub-float/2addr v0, v8

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v10, v0

    .line 189
    .local v10, x:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 190
    .local v11, y:I
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    const/4 v1, 0x0

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 194
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 195
    .local v6, destination:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v10

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    sub-int v2, v11, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    return-void

    .line 187
    .end local v6           #destination:Landroid/graphics/Rect;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 103
    .local v2, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 104
    .local v1, parentHeight:I
    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextPadding:I

    add-int v0, v3, v4

    .line 105
    .local v0, h:I
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method

.method public setBorder(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 94
    return-void
.end method

.method public setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 98
    return-void
.end method

.method public setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 78
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setName(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 82
    return-void
.end method

.method public setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V
    .locals 0
    .parameter "nullFilter"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 115
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 89
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 90
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 148
    return-void
.end method

.method public showControls()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public showHires()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    return v0
.end method

.method public updateGeometryFlags()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public updateImagePresets(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 173
    .local v0, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-nez v0, :cond_0

    .line 176
    :cond_0
    return-void
.end method
