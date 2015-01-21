.class public Lcom/android/contacts/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bytes"
    .parameter "sampleSize"

    .prologue
    .line 75
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 81
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 78
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    .restart local v0       #options:Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public static findOptimalSampleSize(II)I
    .locals 5
    .parameter "originalSmallerExtent"
    .parameter "targetExtent"

    .prologue
    const/4 v1, 0x1

    .line 52
    if-ge p1, v1, :cond_1

    .line 67
    :cond_0
    return v1

    .line 53
    :cond_1
    if-lt p0, v1, :cond_0

    .line 60
    move v0, p0

    .line 61
    .local v0, extent:I
    const/4 v1, 0x1

    .line 62
    .local v1, sampleSize:I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 63
    shl-int/lit8 v1, v1, 0x1

    .line 64
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSmallerExtentFromBytes([B)I
    .locals 3
    .parameter "bytes"

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 36
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 37
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 40
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method
