.class public Lcom/mediatek/gallery3d/data/DecodeHelper;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# static fields
.field public static final HW_LIMITATION_2D_TO_3D:I = 0x800

.field public static final MAX_BITMAP_BYTE_COUNT:I = 0xa00000

.field private static final MAX_BITMAP_DIM:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "Gallery2/DecodeHelper"

.field public static final TARGET_DISPLAY_HEIGHT:[I

.field public static final TARGET_DISPLAY_WIDTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/gallery3d/data/DecodeHelper;->TARGET_DISPLAY_HEIGHT:[I

    return-void

    .line 40
    :array_0
    .array-data 0x4
        0x0t 0x5t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
    .end array-data

    .line 41
    :array_1
    .array-data 0x4
        0x20t 0x3t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 2
    .parameter "maxBytes"
    .parameter "maxDim"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 54
    const/4 v0, 0x1

    .line 57
    .local v0, sampleSize:I
    :goto_0
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    div-int/2addr v1, v0

    div-int/2addr v1, v0

    if-le v1, p0, :cond_0

    .line 58
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 62
    :cond_0
    :goto_1
    if-lez p1, :cond_2

    div-int v1, p2, v0

    if-gt v1, p1, :cond_1

    div-int v1, p3, v0

    if-le v1, p1, :cond_2

    .line 64
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 67
    :cond_2
    return v0
.end method

.method public static calculateSampleSizeByType(IIII)I
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    .line 74
    const/4 v1, 0x1

    .line 75
    .local v1, sampleSize:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 78
    int-to-float v3, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 79
    .local v2, scale:F
    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v1

    .line 84
    const v0, 0x9c400

    .line 85
    .local v0, MAX_PIXEL_COUNT:I
    div-int v3, p0, v1

    div-int v4, p1, v1

    mul-int/2addr v3, v4

    const v4, 0x9c400

    if-le v3, v4, :cond_0

    .line 86
    const v3, 0x491c4000

    mul-int v4, p0, p1

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v1

    .line 94
    .end local v0           #MAX_PIXEL_COUNT:I
    :cond_0
    :goto_0
    return v1

    .line 91
    .end local v2           #scale:F
    :cond_1
    int-to-float v3, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 92
    .restart local v2       #scale:F
    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v1

    goto :goto_0
.end method

.method public static decodeImageRegionNoRetry(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "regionDecoder"
    .parameter "imageRect"
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 258
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 259
    :cond_0
    const-string v2, "Gallery2/DecodeHelper"

    const-string v3, "safeDecodeImageRegion:invalid region decoder or rect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-object v1

    .line 263
    :cond_1
    :try_start_0
    const-string v2, "Gallery2/DecodeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeDecodeImageRegion:decodeRegion(rect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Gallery2/DecodeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeDecodeImageRegion:out of memory when decoding:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "fd"

    .prologue
    const/4 v3, 0x0

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_1

    .line 159
    const-string v4, "Gallery2/DecodeHelper"

    const-string v5, "decodeLargeBitmap:get null FileDescriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-object v3

    .line 162
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 167
    const/4 v4, 0x0

    invoke-static {p2, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 169
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    :cond_2
    const/high16 v3, 0xa0

    const/16 v4, 0x800

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 174
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 178
    const/4 v3, 0x0

    invoke-static {p2, v3, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 182
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "params"
    .parameter "localFilePath"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    .line 189
    const-string v6, "Gallery2/DecodeHelper"

    const-string v7, "decodeLargeBitmap:get null local path"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v6, 0x0

    .line 205
    :goto_0
    return-object v6

    .line 192
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 194
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    .line 196
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 199
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, p1, v2}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 203
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    move-object v6, v0

    .line 205
    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 200
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_1

    .line 212
    const-string v4, "Gallery2/DecodeHelper"

    const-string v5, "decodeLargeBitmap:get null buffer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-object v3

    .line 215
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 220
    invoke-static {p2, p3, p4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 222
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    :cond_2
    const/high16 v3, 0xa0

    const/16 v4, 0x800

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 227
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 231
    invoke-static {p2, p3, p4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 236
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    .line 112
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .restart local p4
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 115
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 152
    :goto_0
    return-object v5

    .line 118
    :cond_1
    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 119
    .local v4, w:I
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 121
    .local v1, h:I
    const/4 v5, 0x2

    if-ne p6, v5, :cond_3

    .line 124
    int-to-float v5, p5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 125
    .local v3, scale:F
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    const v0, 0x9c400

    .line 130
    .local v0, MAX_PIXEL_COUNT:I
    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v4, v5

    iget v6, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v1, v6

    mul-int/2addr v5, v6

    const v6, 0x9c400

    if-le v5, v6, :cond_2

    .line 131
    const v5, 0x491c4000

    mul-int v6, v4, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    invoke-static {v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    .end local v0           #MAX_PIXEL_COUNT:I
    :cond_2
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 143
    .local v2, result:Landroid/graphics/Bitmap;
    if-nez v2, :cond_4

    const/4 v5, 0x0

    goto :goto_0

    .line 136
    .end local v2           #result:Landroid/graphics/Bitmap;
    .end local v3           #scale:F
    :cond_3
    int-to-float v5, p5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 137
    .restart local v3       #scale:F
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 147
    .restart local v2       #result:Landroid/graphics/Bitmap;
    :cond_4
    int-to-float v6, p5

    const/4 v5, 0x2

    if-ne p6, v5, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    int-to-float v5, v5

    div-float v3, v6, v5

    .line 151
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_5

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 152
    :cond_5
    invoke-static {v2}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 147
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2
.end method

.method public static dumpBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "b"

    .prologue
    .line 381
    invoke-static {p0}, Lcom/mediatek/gallery3d/data/DecodeHelper;->showBitmapInfo(Landroid/graphics/Bitmap;)V

    .line 382
    if-eqz p0, :cond_0

    .line 383
    const/4 v1, 0x0

    .line 385
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DCIM/Bitmap["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 393
    if-eqz v2, :cond_0

    .line 395
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    .end local v0           #filename:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 390
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 393
    :goto_1
    if-eqz v1, :cond_0

    .line 395
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 396
    :catch_1
    move-exception v3

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 395
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 397
    :cond_1
    :goto_3
    throw v3

    .line 396
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #filename:Ljava/lang/String;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v0           #filename:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 393
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #filename:Ljava/lang/String;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 390
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/mediatek/gallery3d/data/RegionDecoder;
    .locals 5
    .parameter "jc"
    .parameter "bitmap"
    .parameter "recycleInput"

    .prologue
    const/4 v1, 0x0

    .line 241
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v1

    .line 242
    :cond_1
    invoke-static {p1}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 243
    .local v0, array:[B
    if-eqz v0, :cond_0

    .line 245
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    :cond_3
    new-instance v1, Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/data/RegionDecoder;-><init>()V

    .line 249
    .local v1, regionDecoder:Lcom/mediatek/gallery3d/data/RegionDecoder;
    iput-object v0, v1, Lcom/mediatek/gallery3d/data/RegionDecoder;->jpegBuffer:[B

    .line 250
    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/gallery3d/data/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public static largerDisplayScale(IIII)F
    .locals 5
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "targetDisplayWidth"
    .parameter "targetDisplayHeight"

    .prologue
    const/high16 v1, 0x3f80

    .line 308
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 310
    :cond_0
    const-string v2, "Gallery2/DecodeHelper"

    const-string v3, "largerDisplayScale:invalid parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 320
    :goto_0
    return v0

    .line 313
    :cond_1
    const/high16 v0, 0x3f80

    .line 314
    .local v0, initRate:F
    int-to-float v2, p2

    int-to-float v3, p0

    div-float/2addr v2, v3

    int-to-float v3, p3

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 316
    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    int-to-float v3, p3

    int-to-float v4, p0

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 318
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 320
    goto :goto_0
.end method

.method public static openUriInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 324
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v2

    .line 325
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.resource"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "Gallery2/DecodeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openUriInputStream:fail to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 336
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    const-string v3, "Gallery2/DecodeHelper"

    const-string v4, "openUriInputStream:encountered unknow scheme!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    const/4 v1, 0x1

    .line 98
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 106
    .end local p0
    :goto_0
    return-object p0

    .line 100
    .restart local p0
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 101
    invoke-static {p0, p2, v1}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 105
    :goto_1
    invoke-static {p0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 106
    goto :goto_0

    .line 103
    :cond_1
    invoke-static {p0, p2, v1}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "scale"
    .parameter "recycleInput"

    .prologue
    const/16 v7, 0x1f40

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 341
    if-eqz p0, :cond_0

    cmpg-float v6, p1, v8

    if-gtz v6, :cond_2

    .line 342
    :cond_0
    const-string v6, "Gallery2/DecodeHelper"

    const-string v7, "resizeBitmap:invalid parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 345
    .restart local p0
    :cond_2
    const/high16 v6, 0x3f80

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_1

    .line 350
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 351
    .local v3, newWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 352
    .local v2, newHeight:I
    if-gt v3, v7, :cond_3

    if-le v2, v7, :cond_4

    .line 353
    :cond_3
    const-string v6, "Gallery2/DecodeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeBitmap:too large new Bitmap for scale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 360
    .local v5, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 361
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 362
    .local v4, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v2

    invoke-direct {v1, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 363
    .local v1, dst:Landroid/graphics/RectF;
    const/4 v6, 0x0

    invoke-virtual {v0, p0, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 364
    if-eqz p2, :cond_5

    .line 365
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object p0, v5

    .line 367
    goto :goto_0
.end method

.method public static safeDecodeImageRegion(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "regionDecoder"
    .parameter "imageRect"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 275
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 276
    :cond_0
    const-string v5, "Gallery2/DecodeHelper"

    const-string v6, "safeDecodeImageRegion:invalid region decoder or rect"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 303
    :cond_1
    :goto_0
    return-object v0

    .line 280
    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v4

    goto :goto_0

    .line 282
    :cond_3
    const/4 v0, 0x0

    .line 289
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x8

    .line 290
    .local v3, maxTryNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    .line 291
    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v4

    goto :goto_0

    .line 292
    :cond_4
    const-string v5, "Gallery2/DecodeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeImageRegionNoRetry:try for sample size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeImageRegionNoRetry(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    if-nez v0, :cond_1

    .line 298
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Gallery2/DecodeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "safeDecodeImageRegion:got exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showBitmapInfo(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 373
    const-string v0, "Gallery2/DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-eqz p0, :cond_0

    .line 375
    const-string v0, "Gallery2/DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "Gallery2/DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo:config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    return-void
.end method
