.class public abstract Lcom/android/dreams/phototable/PhotoSource;
.super Ljava/lang/Object;
.source "PhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dreams/phototable/PhotoSource$AlbumData;,
        Lcom/android/dreams/phototable/PhotoSource$ImageData;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x20000

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PhotoTable.PhotoSource"


# instance fields
.field private final mBadImageSkipLimit:I

.field protected final mContext:Landroid/content/Context;

.field private final mFallbackSource:Lcom/android/dreams/phototable/PhotoSource;

.field private final mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCropRatio:F

.field private final mMaxQueueSize:I

.field protected final mRNG:Ljava/util/Random;

.field protected final mResolver:Landroid/content/ContentResolver;

.field protected final mResources:Landroid/content/res/Resources;

.field protected final mSettings:Lcom/android/dreams/phototable/AlbumSettings;

.field protected mSourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "settings"

    .prologue
    .line 89
    new-instance v0, Lcom/android/dreams/phototable/StockSource;

    invoke-direct {v0, p1, p2}, Lcom/android/dreams/phototable/StockSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/dreams/phototable/PhotoSource;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/dreams/phototable/PhotoSource;)V
    .locals 2
    .parameter "context"
    .parameter "settings"
    .parameter "fallbackSource"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "PhotoTable.PhotoSource"

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoSource;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p2}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    .line 96
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    .line 99
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mMaxQueueSize:I

    .line 100
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x49742400

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mMaxCropRatio:F

    .line 101
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mBadImageSkipLimit:I

    .line 102
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mRNG:Ljava/util/Random;

    .line 103
    iput-object p3, p0, Lcom/android/dreams/phototable/PhotoSource;->mFallbackSource:Lcom/android/dreams/phototable/PhotoSource;

    .line 104
    return-void
.end method

.method protected static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 260
    return-void
.end method


# virtual methods
.method protected fillQueue()V
    .locals 3

    .prologue
    .line 107
    const-string v0, "PhotoTable.PhotoSource"

    const-string v1, "filling queue"

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    iget v1, p0, Lcom/android/dreams/phototable/PhotoSource;->mMaxQueueSize:I

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoSource;->findImages(I)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 110
    const-string v0, "PhotoTable.PhotoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue contains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public abstract findAlbums()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract findImages(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
.end method

.method public load(Lcom/android/dreams/phototable/PhotoSource$ImageData;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "data"
    .parameter "options"
    .parameter "longSide"
    .parameter "shortSide"

    .prologue
    .line 144
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoding photo resource to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoSource$ImageData;->getStream(I)Ljava/io/InputStream;

    move-result-object v14

    .line 146
    .local v14, is:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 147
    .local v9, bis:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 149
    .local v2, image:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v10, Ljava/io/BufferedInputStream;

    const/high16 v3, 0x2

    invoke-direct {v10, v14, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 150
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .local v10, bis:Ljava/io/BufferedInputStream;
    const/high16 v3, 0x2

    :try_start_1
    invoke-virtual {v10, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 152
    const/4 v3, 0x1

    move-object/from16 v0, p2

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 153
    const/4 v3, 0x1

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v10, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 155
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 156
    .local v18, rawLongSide:I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 157
    .local v19, rawShortSide:I
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I see bounds of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_b

    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_b

    .line 160
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v4, v0

    div-float/2addr v3, v4

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 162
    .local v12, insideRatio:F
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v4, v0

    div-float/2addr v3, v4

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 164
    .local v16, outsideRatio:F
    div-float v3, v16, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/dreams/phototable/PhotoSource;->mMaxCropRatio:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move/from16 v17, v16

    .line 167
    .local v17, ratio:F
    :goto_0
    move/from16 v0, v17

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 168
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 169
    const/high16 v3, 0x4000

    mul-float v17, v17, v3

    goto :goto_0

    .end local v17           #ratio:F
    :cond_0
    move/from16 v17, v12

    .line 164
    goto :goto_0

    .line 172
    .restart local v17       #ratio:F
    :cond_1
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoding with inSampleSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->reset()V

    .line 174
    const/4 v3, 0x0

    move-object/from16 v0, p2

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v10, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 177
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 178
    if-eqz v2, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_a

    .line 179
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v4, v0

    div-float/2addr v3, v4

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 182
    const/high16 v3, 0x3f80

    sub-float v3, v17, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    .line 183
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "still too big, scaling down by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 185
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    float-to-int v3, v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 188
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v3, :cond_2

    .line 189
    const-string v3, "PhotoTable.PhotoSource"

    const-string v4, "options.outWidth == 0"

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v3, 0x1

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 192
    :cond_2
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v3, :cond_3

    .line 193
    const-string v3, "PhotoTable.PhotoSource"

    const-string v4, "options.outHeight == 0"

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v3, 0x1

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 198
    :cond_3
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 203
    :cond_4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    if-eqz v3, :cond_6

    .line 204
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotated by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": fixing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    .local v7, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 209
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 212
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_5

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_6

    .line 213
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    .line 214
    .local v21, tmp:I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 215
    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 219
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v21           #tmp:I
    :cond_6
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returning bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v12           #insideRatio:F
    .end local v16           #outsideRatio:F
    .end local v17           #ratio:F
    :goto_1
    if-nez v2, :cond_7

    .line 227
    const-string v4, "PhotoTable.PhotoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stream decoding failed with no error"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v3, :cond_c

    const-string v3, " due to cancelation."

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 241
    :cond_7
    if-eqz v10, :cond_8

    .line 242
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    move-object v9, v10

    .line 249
    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .end local v18           #rawLongSide:I
    .end local v19           #rawShortSide:I
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    :cond_9
    :goto_3
    return-object v2

    .line 221
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    .restart local v12       #insideRatio:F
    .restart local v16       #outsideRatio:F
    .restart local v17       #ratio:F
    .restart local v18       #rawLongSide:I
    .restart local v19       #rawShortSide:I
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 224
    .end local v12           #insideRatio:F
    .end local v16           #outsideRatio:F
    .end local v17           #ratio:F
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 227
    :cond_c
    :try_start_3
    const-string v3, "."
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_2

    .line 244
    :catch_0
    move-exception v20

    .line 245
    .local v20, t:Ljava/lang/Throwable;
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .line 247
    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 230
    .end local v18           #rawLongSide:I
    .end local v19           #rawShortSide:I
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v15

    .line 231
    .local v15, ome:Ljava/lang/OutOfMemoryError;
    :goto_4
    :try_start_4
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OUT OF MEMORY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    const/4 v2, 0x0

    .line 241
    if-eqz v9, :cond_9

    .line 242
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 244
    :catch_2
    move-exception v20

    .line 245
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 233
    .end local v15           #ome:Ljava/lang/OutOfMemoryError;
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_3
    move-exception v11

    .line 234
    .local v11, fnf:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_6
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 235
    const/4 v2, 0x0

    .line 241
    if-eqz v9, :cond_9

    .line 242
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_3

    .line 244
    :catch_4
    move-exception v20

    .line 245
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 236
    .end local v11           #fnf:Ljava/io/FileNotFoundException;
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_5
    move-exception v13

    .line 237
    .local v13, ioe:Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i/o exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 238
    const/4 v2, 0x0

    .line 241
    if-eqz v9, :cond_9

    .line 242
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    .line 244
    :catch_6
    move-exception v20

    .line 245
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v3, "PhotoTable.PhotoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 240
    .end local v13           #ioe:Ljava/io/IOException;
    .end local v20           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 241
    :goto_7
    if-eqz v9, :cond_d

    .line 242
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    .line 246
    :cond_d
    :goto_8
    throw v3

    .line 244
    :catch_7
    move-exception v20

    .line 245
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v4, "PhotoTable.PhotoSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 240
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .end local v20           #t:Ljava/lang/Throwable;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v3

    move-object v9, v10

    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7

    .line 236
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v13

    move-object v9, v10

    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 233
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v11

    move-object v9, v10

    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .line 230
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v15

    move-object v9, v10

    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_4
.end method

.method public next(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "options"
    .parameter "longSide"
    .parameter "shortSide"

    .prologue
    .line 114
    const-string v4, "PhotoTable.PhotoSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decoding a picasa resource to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, image:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 117
    .local v2, imageData:Lcom/android/dreams/phototable/PhotoSource$ImageData;
    const/4 v3, 0x0

    .line 119
    .local v3, tries:I
    :goto_0
    if-nez v1, :cond_2

    iget v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mBadImageSkipLimit:I

    if-ge v3, v4, :cond_2

    .line 120
    iget-object v5, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    monitor-enter v5

    .line 121
    :try_start_0
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoSource;->fillQueue()V

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-object v2, v0

    .line 126
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/dreams/phototable/PhotoSource;->load(Lcom/android/dreams/phototable/PhotoSource$ImageData;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 129
    const/4 v2, 0x0

    .line 132
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 135
    :cond_2
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mFallbackSource:Lcom/android/dreams/phototable/PhotoSource;

    if-eqz v4, :cond_3

    .line 136
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoSource;->mFallbackSource:Lcom/android/dreams/phototable/PhotoSource;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/dreams/phototable/PhotoSource;->findImages(I)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/android/dreams/phototable/PhotoSource;->load(Lcom/android/dreams/phototable/PhotoSource$ImageData;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 140
    :cond_3
    return-object v1
.end method

.method public setSeed(J)V
    .locals 1
    .parameter "seed"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mRNG:Ljava/util/Random;

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 254
    return-void
.end method
