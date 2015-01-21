.class public Laxq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/graphics/BitmapFactory$Options;

.field public static final a:Landroid/graphics/Rect;

.field private static a:Layx;

.field private static final a:Lazf;

.field private static a:Ljava/lang/String;

.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Laxq;->a:Landroid/graphics/Rect;

    .line 48
    sput-object v2, Laxq;->a:Landroid/graphics/BitmapFactory$Options;

    .line 49
    sput-object v2, Laxq;->a:Ljava/lang/String;

    .line 50
    sput-object v2, Laxq;->a:Layx;

    .line 52
    new-instance v0, Lazf;

    invoke-direct {v0}, Lazf;-><init>()V

    sput-object v0, Laxq;->a:Lazf;

    .line 54
    new-array v0, v3, [I

    sput-object v0, Laxq;->a:[I

    .line 55
    new-array v0, v3, [I

    sput-object v0, Laxq;->b:[I

    .line 56
    new-array v0, v4, [I

    sput-object v0, Laxq;->c:[I

    .line 57
    new-array v0, v4, [I

    sput-object v0, Laxq;->d:[I

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Laxq;->e:[I

    .line 59
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Laxq;->f:[I

    return-void

    .line 58
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static final a(Ljava/lang/String;)D
    .locals 5
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 194
    .line 196
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 202
    :goto_0
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    .line 205
    :goto_1
    return-wide v0

    .line 197
    :catch_0
    move-exception v2

    move-wide v2, v0

    .line 201
    goto :goto_0

    .line 199
    :catch_1
    move-exception v2

    move-wide v2, v0

    .line 200
    goto :goto_0

    :cond_0
    move-wide v0, v2

    goto :goto_1
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;F)F
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    :cond_0
    return p3
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result p3

    :cond_0
    return p3
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;IF)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 176
    int-to-float v1, p3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p4

    :cond_0
    mul-float v0, v1, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    int-to-double v2, p3

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p4, v0

    :cond_0
    return p4
.end method

.method private static final a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxs;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 505
    if-nez v0, :cond_0

    .line 506
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Laxs;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 509
    const/16 v1, 0xa0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_0
    return-object v0

    .line 510
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v0

    invoke-virtual {v0, p1}, Laxs;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 519
    if-nez v0, :cond_0

    .line 521
    invoke-static {p2}, Laxq;->a(Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Laxs;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 527
    :cond_0
    return-object v0
.end method

.method private static final a(Z)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 66
    sget-object v0, Laxq;->a:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 69
    sput-object v0, Laxq;->a:Landroid/graphics/BitmapFactory$Options;

    .line 71
    :cond_0
    sget-object v0, Laxq;->a:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 72
    sget-object v0, Laxq;->a:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 73
    sget-object v0, Laxq;->a:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;)Landroid/graphics/Paint$Align;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object p3

    .line 121
    :cond_1
    const-string v1, "CENTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 123
    :cond_2
    const-string v1, "LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 125
    :cond_3
    const-string v1, "RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object p3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    .line 216
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_1

    .line 218
    sget-object v2, Laxq;->a:Lazf;

    const/16 v3, 0x2c

    invoke-virtual {v2, v1, v3}, Lazf;->a(Ljava/lang/String;I)Lazf;

    move-result-object v1

    .line 219
    new-instance p5, Landroid/graphics/Rect;

    sget-object v2, Laxq;->a:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {v1}, Lazf;->a()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 221
    invoke-virtual {v1}, Lazf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laxq;->a(Ljava/lang/String;)D

    move-result-wide v2

    .line 222
    invoke-virtual {v1}, Lazf;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laxq;->a(Ljava/lang/String;)D

    move-result-wide v4

    .line 223
    invoke-virtual {v1}, Lazf;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laxq;->a(Ljava/lang/String;)D

    move-result-wide v6

    .line 224
    invoke-virtual {v1}, Lazf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laxq;->a(Ljava/lang/String;)D

    move-result-wide v8

    .line 225
    const-wide/high16 v10, 0x3ff0

    cmpl-double v1, v2, v10

    if-gtz v1, :cond_0

    const-wide/high16 v10, 0x3ff0

    cmpl-double v1, v4, v10

    if-gtz v1, :cond_0

    const-wide/high16 v10, 0x3ff0

    cmpl-double v1, v6, v10

    if-gtz v1, :cond_0

    const-wide/high16 v10, 0x3ff0

    cmpl-double v1, v8, v10

    if-lez v1, :cond_2

    .line 226
    :cond_0
    double-to-int v1, v2

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 227
    double-to-int v1, v4

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 228
    double-to-int v1, v6

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 229
    double-to-int v1, v8

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 239
    :cond_1
    :goto_0
    return-object p5

    .line 231
    :cond_2
    int-to-double v10, p3

    mul-double v1, v2, v10

    double-to-int v1, v1

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 232
    move/from16 v0, p4

    int-to-double v1, v0

    mul-double/2addr v1, v4

    double-to-int v1, v1

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 233
    int-to-double v1, p3

    mul-double/2addr v1, v6

    double-to-int v1, v1

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 234
    move/from16 v0, p4

    int-to-double v1, v0

    mul-double/2addr v1, v8

    double-to-int v1, v1

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object p3

    .line 136
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 141
    :pswitch_1
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    .line 143
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p3

    goto :goto_0

    .line 145
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p3

    goto :goto_0

    .line 148
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laxq;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laxq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laxq;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final a(Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    if-eqz p0, :cond_0

    .line 330
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxs;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 332
    if-nez v0, :cond_0

    .line 333
    invoke-static {p0, p1, p2}, Laxq;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 334
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Laxc;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 335
    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Laxs;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_0

    .line 247
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 251
    :cond_0
    return-object v0
.end method

.method public static final a(Layx;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 444
    const-string v0, "BG_IMAGES"

    invoke-static {p0, p1, v0}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Layx;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    invoke-static {p0, p1}, Laxq;->a(Layx;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    sget-object v0, Laxq;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    sget-object v0, Laxq;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    return-object p3
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Laxq;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Layx;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    const-string v0, "BG_IMAGES"

    invoke-static {p0, p1, v0, p2}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 300
    sget-object v0, Laxq;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 351
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v0

    invoke-virtual {v0, p1}, Laxs;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    if-nez v0, :cond_1

    .line 354
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_0

    .line 356
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    invoke-static {}, Laxc;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 357
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Laxc;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 360
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 362
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Laxs;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 367
    :cond_1
    return-object v0

    .line 358
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 411
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Laxs;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 412
    if-nez v0, :cond_0

    .line 413
    invoke-static {p1, p0, p2}, Laxq;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Laxs;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 419
    :cond_0
    return-object v0
.end method

.method public static final a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 396
    sget-object v0, Laxq;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static final a([BLandroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    if-eqz p2, :cond_1

    .line 373
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-static {}, Laxc;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-object v0

    .line 380
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Laxc;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    move-object p3, v0

    :cond_0
    return-object p3
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    move-object p3, v0

    :cond_0
    return-object p3
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v0

    invoke-virtual {v0}, Laxs;->a()V

    .line 430
    return-void
.end method

.method public static a(Layx;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    sput-object p0, Laxq;->a:Layx;

    .line 637
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    sput-object p0, Laxq;->a:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_0
    return p3
.end method

.method public static final a(Ljava/io/File;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 781
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 782
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 783
    if-eqz v2, :cond_3

    .line 784
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 785
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 786
    invoke-static {v4}, Laxq;->a(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 793
    :cond_0
    :goto_1
    return v0

    .line 787
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 788
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 784
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static final a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 269
    .line 270
    const/4 v2, 0x0

    .line 273
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 278
    :cond_0
    if-eqz v1, :cond_1

    .line 282
    :cond_1
    :goto_0
    return v0

    .line 278
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    :cond_2
    throw v0

    .line 275
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 278
    :goto_2
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 275
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static a([I[I[I)[B
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xff

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 586
    array-length v1, p0

    int-to-byte v2, v1

    .line 587
    array-length v1, p1

    int-to-byte v3, v1

    .line 588
    array-length v1, p2

    int-to-byte v4, v1

    .line 596
    add-int v1, v2, v3

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x20

    .line 597
    new-array v5, v1, [B

    .line 601
    aput-byte v6, v5, v0

    .line 602
    aput-byte v2, v5, v6

    .line 603
    const/4 v1, 0x2

    aput-byte v3, v5, v1

    .line 604
    const/4 v1, 0x3

    aput-byte v4, v5, v1

    move v1, v0

    .line 606
    :goto_0
    if-ge v1, v2, :cond_1

    .line 607
    aget v6, p0, v1

    if-ltz v6, :cond_0

    aget v6, p0, v1

    if-ge v6, v8, :cond_0

    .line 608
    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x20

    aget v7, p0, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 606
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_0
    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x20

    aget v7, p0, v1

    rem-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 611
    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x20

    add-int/lit8 v6, v6, 0x1

    aget v7, p0, v1

    div-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto :goto_1

    :cond_1
    move v1, v0

    .line 616
    :goto_2
    if-ge v1, v3, :cond_3

    .line 617
    aget v6, p1, v1

    if-ltz v6, :cond_2

    aget v6, p1, v1

    if-ge v6, v8, :cond_2

    .line 618
    add-int v6, v2, v1

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x20

    aget v7, p1, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 616
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 620
    :cond_2
    add-int v6, v2, v1

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x20

    aget v7, p1, v1

    rem-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 621
    add-int v6, v2, v1

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x20

    add-int/lit8 v6, v6, 0x1

    aget v7, p1, v1

    div-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto :goto_3

    .line 625
    :cond_3
    :goto_4
    if-ge v0, v4, :cond_4

    .line 626
    add-int v1, v2, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x20

    aget v6, p2, v0

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 628
    :cond_4
    return-object v5
.end method

.method public static final a(Layx;Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laxq;->a(Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    return-object p3
.end method

.method public static final a(Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter

    .prologue
    .line 314
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    .line 316
    :cond_0
    sget-object v0, Laxq;->a:Lazf;

    const/16 v1, 0x2c

    invoke-virtual {v0, p0, v1}, Lazf;->a(Ljava/lang/String;I)Lazf;

    move-result-object v3

    .line 317
    invoke-virtual {v3}, Lazf;->a()I

    move-result v0

    new-array v2, v0, [Landroid/graphics/drawable/Drawable;

    .line 318
    const/4 v0, 0x0

    .line 319
    :goto_1
    invoke-virtual {v3}, Lazf;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3}, Lazf;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laxq;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v0

    move v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 323
    goto :goto_0
.end method

.method public static final b(Layx;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result p3

    :cond_0
    return p3
.end method

.method public static final b(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-static {p0, p1, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 500
    :cond_0
    :goto_0
    return-object v1

    .line 459
    :cond_1
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Laxs;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 460
    if-nez v1, :cond_0

    .line 462
    sget-object v3, Laxq;->a:Layx;

    .line 464
    const-string v4, "PRESSED_OFF"

    move/from16 v0, p3

    invoke-static {v3, v2, v4, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 465
    const-string v5, "PRESSED_ON"

    move/from16 v0, p3

    invoke-static {v3, v2, v5, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 466
    const-string v6, "NORMAL_OFF"

    move/from16 v0, p3

    invoke-static {v3, v2, v6, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 467
    const-string v7, "NORMAL_ON"

    move/from16 v0, p3

    invoke-static {v3, v2, v7, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 468
    const-string v8, "SELECTED"

    move/from16 v0, p3

    invoke-static {v3, v2, v8, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 469
    const-string v9, "SELECTED_PRESSED"

    move/from16 v0, p3

    invoke-static {v3, v2, v9, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 470
    const-string v10, "PRESSED"

    move/from16 v0, p3

    invoke-static {v3, v2, v10, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 471
    const-string v11, "FOCUSED"

    move/from16 v0, p3

    invoke-static {v3, v2, v11, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 472
    const-string v12, "NORMAL"

    move/from16 v0, p3

    invoke-static {v3, v2, v12, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 473
    const-string v13, "DISABLED"

    move/from16 v0, p3

    invoke-static {v3, v2, v13, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 475
    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    if-nez v10, :cond_2

    if-nez v12, :cond_2

    if-nez v11, :cond_2

    if-eqz v3, :cond_0

    .line 478
    :cond_2
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 481
    sget-object v13, Laxr;->a:[I

    invoke-virtual {v1, v13, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 482
    sget-object v5, Laxr;->b:[I

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 483
    sget-object v5, Laxr;->d:[I

    invoke-virtual {v1, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 484
    sget-object v4, Laxr;->c:[I

    invoke-virtual {v1, v4, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 486
    sget-object v4, Laxr;->f:[I

    invoke-virtual {v1, v4, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 487
    sget-object v4, Laxr;->e:[I

    invoke-virtual {v1, v4, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 488
    sget-object v4, Laxr;->g:[I

    invoke-virtual {v1, v4, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 489
    sget-object v4, Laxr;->h:[I

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 490
    sget-object v4, Laxr;->i:[I

    invoke-virtual {v1, v4, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 491
    sget-object v4, Laxr;->j:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 493
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v2, v1, v0}, Laxs;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_0
.end method

.method public static final b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 400
    sget-object v0, Laxq;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Laxq;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static final b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 404
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static final b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 540
    sget-object v0, Laxq;->a:Lazf;

    const/16 v1, 0x2c

    invoke-virtual {v0, p1, v1}, Lazf;->a(Ljava/lang/String;I)Lazf;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Lazf;->a()I

    move-result v1

    .line 543
    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v2

    .line 544
    const-string v3, ".9.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 545
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    if-nez v3, :cond_1

    .line 546
    if-le v1, v5, :cond_0

    const-string v0, "ThemeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error NinePatch PNG config string - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    invoke-static {p0, v2}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 549
    :cond_1
    invoke-static {p0, v2, v5}, Laxq;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 550
    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 553
    :cond_2
    if-nez v3, :cond_4

    .line 554
    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    .line 555
    sget-object v1, Laxq;->c:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v6

    .line 556
    sget-object v1, Laxq;->c:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v5

    .line 557
    sget-object v1, Laxq;->c:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v7

    .line 558
    sget-object v1, Laxq;->c:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v8

    .line 559
    sget-object v1, Laxq;->d:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v6

    .line 560
    sget-object v1, Laxq;->d:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v5

    .line 561
    sget-object v1, Laxq;->d:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v7

    .line 562
    sget-object v1, Laxq;->d:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v8

    .line 563
    sget-object v0, Laxq;->c:[I

    sget-object v1, Laxq;->d:[I

    sget-object v3, Laxq;->f:[I

    invoke-static {v0, v1, v3}, Laxq;->a([I[I[I)[B

    move-result-object v0

    .line 576
    :goto_1
    sget-object v1, Laxq;->a:Landroid/graphics/Rect;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2, p2}, Laxq;->a([BLandroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 565
    :cond_3
    sget-object v1, Laxq;->a:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v6

    .line 566
    sget-object v1, Laxq;->a:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v5

    .line 567
    sget-object v1, Laxq;->b:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v6

    .line 568
    sget-object v1, Laxq;->b:[I

    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v5

    .line 569
    sget-object v0, Laxq;->a:[I

    sget-object v1, Laxq;->b:[I

    sget-object v3, Laxq;->e:[I

    invoke-static {v0, v1, v3}, Laxq;->a([I[I[I)[B

    move-result-object v0

    goto :goto_1

    .line 573
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    goto :goto_1
.end method

.method public static final c(Layx;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Layx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :cond_0
    return p3
.end method

.method public static final c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
