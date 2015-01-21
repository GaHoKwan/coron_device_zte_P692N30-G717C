.class public Lcom/mediatek/email/emailvip/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bytes"
    .parameter "sampleSize"

    .prologue
    .line 55
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 61
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 58
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    .restart local v0       #options:Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public static findOptimalSampleSize(II)I
    .locals 3
    .parameter "originalSmallerExtent"
    .parameter "targetExtent"

    .prologue
    const/4 v1, 0x1

    .line 36
    if-ge p1, v1, :cond_1

    .line 47
    :cond_0
    return v1

    .line 37
    :cond_1
    if-lt p0, v1, :cond_0

    .line 40
    move v0, p0

    .line 41
    .local v0, extent:I
    const/4 v1, 0x1

    .line 42
    .local v1, sampleSize:I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    if-lt v2, p1, :cond_0

    .line 43
    shl-int/lit8 v1, v1, 0x1

    .line 44
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSmallerExtentFromBytes([B)I
    .locals 3
    .parameter "bytes"

    .prologue
    .line 17
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 20
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 24
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method
