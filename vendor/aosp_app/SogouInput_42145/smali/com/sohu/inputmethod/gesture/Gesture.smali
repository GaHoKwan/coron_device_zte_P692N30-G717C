.class public Lcom/sohu/inputmethod/gesture/Gesture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final a:J

.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:I

.field private final a:Landroid/graphics/RectF;

.field private final a:Ljava/util/ArrayList;

.field private b:I

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sohu/inputmethod/gesture/Gesture;->a:J

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 332
    new-instance v0, Lqd;

    invoke-direct {v0}, Lqd;-><init>()V

    sput-object v0, Lcom/sohu/inputmethod/gesture/Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/ArrayList;

    .line 62
    sget-wide v0, Lcom/sohu/inputmethod/gesture/Gesture;->a:J

    sget-object v2, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->b:J

    .line 63
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/gesture/Gesture;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/sohu/inputmethod/gesture/Gesture;->b:J

    return-wide p1
.end method

.method public static a(Ljava/io/DataInputStream;)Lcom/sohu/inputmethod/gesture/Gesture;
    .locals 4
    .parameter

    .prologue
    .line 315
    new-instance v1, Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-direct {v1}, Lcom/sohu/inputmethod/gesture/Gesture;-><init>()V

    .line 318
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sohu/inputmethod/gesture/Gesture;->b:J

    .line 320
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v1, Lcom/sohu/inputmethod/gesture/Gesture;->a:I

    .line 321
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v1, Lcom/sohu/inputmethod/gesture/Gesture;->b:I

    .line 323
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 325
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 326
    invoke-static {p0}, Lqo;->a(Ljava/io/DataInputStream;)Lqo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Lqo;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-object v1
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 2
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqo;

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Landroid/graphics/Path;Lqo;)V

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Path;Lqo;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v2, p2, Lqo;->a:[F

    .line 156
    array-length v3, v2

    .line 158
    const/4 v0, 0x6

    if-lt v3, v0, :cond_1

    .line 159
    add-int/lit8 v0, v3, -0x2

    aget v4, v2, v0

    .line 160
    add-int/lit8 v0, v3, -0x1

    aget v5, v2, v0

    .line 161
    add-int/lit8 v0, v3, -0x6

    aget v1, v2, v0

    .line 162
    add-int/lit8 v0, v3, -0x5

    aget v0, v2, v0

    .line 163
    sub-float v6, v4, v1

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-float v8, v5, v0

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 164
    const-wide/high16 v8, 0x4044

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    .line 165
    add-int/lit8 v0, v3, -0x4

    aget v1, v2, v0

    .line 166
    add-int/lit8 v0, v3, -0x3

    aget v0, v2, v0

    .line 173
    :cond_0
    :goto_0
    float-to-double v2, v4

    sub-float v6, v1, v4

    float-to-double v6, v6

    const-wide v8, 0x3fe0c152382d7365L

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    sub-float v6, v0, v5

    float-to-double v6, v6

    const-wide v8, 0x3fe0c152382d7365L

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    double-to-float v2, v2

    .line 174
    float-to-double v6, v5

    sub-float v3, v1, v4

    float-to-double v8, v3

    const-wide v10, 0x3fe0c152382d7365L

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-float v3, v0, v5

    float-to-double v8, v3

    const-wide v10, 0x3fe0c152382d7365L

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v3, v6

    .line 175
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    invoke-virtual {p1, v2, v3, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 177
    float-to-double v2, v4

    sub-float v6, v1, v4

    float-to-double v6, v6

    const-wide v8, -0x401f3eadc7d28c9bL

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    sub-float v6, v0, v5

    float-to-double v6, v6

    const-wide v8, -0x401f3eadc7d28c9bL

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    double-to-float v2, v2

    .line 178
    float-to-double v6, v5

    sub-float/2addr v1, v4

    float-to-double v8, v1

    const-wide v10, -0x401f3eadc7d28c9bL

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-float/2addr v0, v5

    float-to-double v0, v0

    const-wide v8, -0x401f3eadc7d28c9bL

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v0, v8

    add-double/2addr v0, v6

    double-to-float v0, v0

    .line 179
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 182
    :cond_1
    return-void

    .line 167
    :cond_2
    const-wide/high16 v8, 0x4034

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    const/16 v6, 0x8

    if-lt v3, v6, :cond_0

    .line 168
    add-int/lit8 v0, v3, -0x8

    aget v1, v2, v0

    .line 169
    add-int/lit8 v0, v3, -0x7

    aget v0, v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->b:J

    return-wide v0
.end method

.method public a(IIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v9, 0x4000

    .line 262
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 264
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 267
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 268
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 269
    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 272
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 273
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 275
    invoke-virtual {p0}, Lcom/sohu/inputmethod/gesture/Gesture;->a()Landroid/graphics/Path;

    move-result-object v5

    .line 276
    invoke-direct {p0, v5}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Landroid/graphics/Path;)V

    .line 277
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 278
    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 280
    mul-int/lit8 v0, p3, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    .line 281
    mul-int/lit8 v0, p3, 0x2

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v0, v7

    .line 282
    cmpl-float v7, v1, v0

    if-lez v7, :cond_0

    .line 283
    :goto_0
    div-float v1, v9, v0

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    iget v1, v6, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float v7, p1

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, v0

    sub-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v1, v7

    iget v7, v6, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    int-to-float v8, p2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v0

    sub-float v6, v8, v6

    div-float/2addr v6, v9

    add-float/2addr v6, v7

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Path;->offset(FF)V

    .line 288
    int-to-float v1, p3

    int-to-float v6, p3

    invoke-virtual {v3, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 289
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 291
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 293
    return-object v2

    :cond_0
    move v0, v1

    .line 282
    goto :goto_0
.end method

.method public a()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 4
    .parameter

    .prologue
    .line 119
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 125
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqo;

    invoke-virtual {v0}, Lqo;->a()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_1
    return-object p1
.end method

.method public a()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Landroid/graphics/RectF;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput p1, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:I

    .line 202
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 297
    iget-object v2, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/ArrayList;

    .line 298
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 301
    iget-wide v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 303
    iget v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 307
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 309
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 310
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqo;

    invoke-virtual {v0, p1}, Lqo;->a(Ljava/io/DataOutputStream;)V

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public a(Lqo;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:Landroid/graphics/RectF;

    iget-object v1, p1, Lqo;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 87
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput p1, p0, Lcom/sohu/inputmethod/gesture/Gesture;->b:I

    .line 210
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/sohu/inputmethod/gesture/Gesture;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    const/4 v0, 0x0

    .line 365
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 367
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 370
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    const/4 v0, 0x1

    .line 375
    invoke-static {v2}, Lqp;->a(Ljava/io/Closeable;)V

    .line 376
    :goto_0
    invoke-static {v1}, Lqp;->a(Ljava/io/Closeable;)V

    .line 379
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 382
    :cond_0
    return-void

    .line 372
    :catch_0
    move-exception v3

    .line 373
    :try_start_1
    const-string v4, "Gestures"

    const-string v5, "Error writing Gesture to parcel:"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    invoke-static {v2}, Lqp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lqp;->a(Ljava/io/Closeable;)V

    .line 376
    invoke-static {v1}, Lqp;->a(Ljava/io/Closeable;)V

    .line 375
    throw v0
.end method
