.class public Lcom/mediatek/ngin3d/Color;
.super Ljava/lang/Object;
.source "Color.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BLACK:Lcom/mediatek/ngin3d/Color; = null

.field public static final BLUE:Lcom/mediatek/ngin3d/Color; = null

.field public static final CYAN:Lcom/mediatek/ngin3d/Color; = null

.field private static final FACTOR:D = 0.7

.field public static final GREEN:Lcom/mediatek/ngin3d/Color;

.field public static final MAGENTA:Lcom/mediatek/ngin3d/Color;

.field public static final RED:Lcom/mediatek/ngin3d/Color;

.field public static final TRANSPARENT:Lcom/mediatek/ngin3d/Color;

.field public static final WHITE:Lcom/mediatek/ngin3d/Color;

.field public static final YELLOW:Lcom/mediatek/ngin3d/Color;


# instance fields
.field public alpha:I

.field public blue:I

.field public green:I

.field public red:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 55
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>(IIII)V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->TRANSPARENT:Lcom/mediatek/ngin3d/Color;

    .line 59
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>()V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->BLACK:Lcom/mediatek/ngin3d/Color;

    .line 63
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0, v2, v2, v2}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>(III)V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->WHITE:Lcom/mediatek/ngin3d/Color;

    .line 67
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0, v1, v1, v2}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>(III)V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->BLUE:Lcom/mediatek/ngin3d/Color;

    .line 71
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0, v2, v1, v1}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>(III)V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->RED:Lcom/mediatek/ngin3d/Color;

    .line 75
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0, v1, v2, v1}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>(III)V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->GREEN:Lcom/mediatek/ngin3d/Color;

    .line 79
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0, v2, v2, v1}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>(III)V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->YELLOW:Lcom/mediatek/ngin3d/Color;

    .line 83
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0, v1, v2, v2}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>(III)V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->CYAN:Lcom/mediatek/ngin3d/Color;

    .line 87
    new-instance v0, Lcom/mediatek/ngin3d/ImmutableColor;

    invoke-direct {v0, v2, v1, v2}, Lcom/mediatek/ngin3d/ImmutableColor;-><init>(III)V

    sput-object v0, Lcom/mediatek/ngin3d/Color;->MAGENTA:Lcom/mediatek/ngin3d/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 113
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "rgb"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 135
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Color;->setByRgb(I)V

    .line 136
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 123
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/ngin3d/Color;-><init>(IIII)V

    .line 124
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 165
    iput p1, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 166
    iput p2, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 167
    iput p3, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    .line 168
    iput p4, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 169
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "args"

    .prologue
    .line 185
    const/16 v4, 0xff

    .line 186
    .local v4, r:I
    const/16 v2, 0xdd

    .line 187
    .local v2, g:I
    const/16 v1, 0xee

    .line 188
    .local v1, b:I
    const/4 v0, 0x0

    .line 189
    .local v0, a:I
    const v6, -0x221200

    or-int v3, v6, v0

    .line 190
    .local v3, i:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, s:Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private setByRgb(I)V
    .locals 1
    .parameter "rgb"

    .prologue
    .line 150
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 151
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 152
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    .line 153
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 154
    return-void
.end method


# virtual methods
.method public alpha(I)Lcom/mediatek/ngin3d/Color;
    .locals 0
    .parameter "a"

    .prologue
    .line 259
    iput p1, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 260
    return-object p0
.end method

.method public blue(I)Lcom/mediatek/ngin3d/Color;
    .locals 0
    .parameter "b"

    .prologue
    .line 248
    iput p1, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    .line 249
    return-object p0
.end method

.method public brighter()Lcom/mediatek/ngin3d/Color;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v11, 0xff

    const-wide v9, 0x3fe6666666666666L

    .line 358
    iget v3, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 359
    .local v3, r:I
    iget v1, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 360
    .local v1, g:I
    iget v0, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    .line 367
    .local v0, b:I
    const/4 v2, 0x3

    .line 368
    .local v2, i:I
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 369
    new-instance v4, Lcom/mediatek/ngin3d/Color;

    invoke-direct {v4, v2, v2, v2}, Lcom/mediatek/ngin3d/Color;-><init>(III)V

    .line 378
    :goto_0
    return-object v4

    .line 371
    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v2, :cond_1

    .line 372
    move v3, v2

    .line 373
    :cond_1
    if-lez v1, :cond_2

    if-ge v1, v2, :cond_2

    .line 374
    move v1, v2

    .line 375
    :cond_2
    if-lez v0, :cond_3

    if-ge v0, v2, :cond_3

    .line 376
    move v0, v2

    .line 378
    :cond_3
    new-instance v4, Lcom/mediatek/ngin3d/Color;

    int-to-double v5, v3

    div-double/2addr v5, v9

    double-to-int v5, v5

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-double v6, v1

    div-double/2addr v6, v9

    double-to-int v6, v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v7, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/mediatek/ngin3d/Color;-><init>(III)V

    goto :goto_0
.end method

.method public copy()Lcom/mediatek/ngin3d/Color;
    .locals 6

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Color;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/mediatek/ngin3d/Color;

    iget v2, p0, Lcom/mediatek/ngin3d/Color;->red:I

    iget v3, p0, Lcom/mediatek/ngin3d/Color;->green:I

    iget v4, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    iget v5, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/ngin3d/Color;-><init>(IIII)V

    goto :goto_0
.end method

.method public darker()Lcom/mediatek/ngin3d/Color;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-wide v5, 0x3fe6666666666666L

    .line 346
    new-instance v0, Lcom/mediatek/ngin3d/Color;

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->red:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/mediatek/ngin3d/Color;->green:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Color;-><init>(III)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    if-ne p1, p0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v1

    .line 395
    :cond_1
    instance-of v3, p1, Lcom/mediatek/ngin3d/Color;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 396
    check-cast v0, Lcom/mediatek/ngin3d/Color;

    .line 397
    .local v0, c:Lcom/mediatek/ngin3d/Color;
    iget v3, p0, Lcom/mediatek/ngin3d/Color;->red:I

    iget v4, v0, Lcom/mediatek/ngin3d/Color;->red:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/mediatek/ngin3d/Color;->green:I

    iget v4, v0, Lcom/mediatek/ngin3d/Color;->green:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    iget v4, v0, Lcom/mediatek/ngin3d/Color;->blue:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    iget v4, v0, Lcom/mediatek/ngin3d/Color;->alpha:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #c:Lcom/mediatek/ngin3d/Color;
    :cond_3
    move v1, v2

    .line 399
    goto :goto_0
.end method

.method public getRgb()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->red:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->green:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public green(I)Lcom/mediatek/ngin3d/Color;
    .locals 0
    .parameter "g"

    .prologue
    .line 237
    iput p1, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 238
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 410
    const/16 v0, 0x11

    .line 411
    .local v0, result:I
    iget v1, p0, Lcom/mediatek/ngin3d/Color;->red:I

    add-int/lit16 v0, v1, 0x275

    .line 412
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/mediatek/ngin3d/Color;->green:I

    add-int v0, v1, v2

    .line 413
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    add-int v0, v1, v2

    .line 414
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    add-int v0, v1, v2

    .line 415
    return v0
.end method

.method public red(I)Lcom/mediatek/ngin3d/Color;
    .locals 0
    .parameter "r"

    .prologue
    .line 226
    iput p1, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 227
    return-object p0
.end method

.method public set(Lcom/mediatek/ngin3d/Color;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 213
    iget v0, p1, Lcom/mediatek/ngin3d/Color;->red:I

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 214
    iget v0, p1, Lcom/mediatek/ngin3d/Color;->green:I

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 215
    iget v0, p1, Lcom/mediatek/ngin3d/Color;->blue:I

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    .line 216
    iget v0, p1, Lcom/mediatek/ngin3d/Color;->alpha:I

    iput v0, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 217
    return-void
.end method

.method public setHls(FFF)V
    .locals 10
    .parameter "hue"
    .parameter "luminance"
    .parameter "saturation"

    .prologue
    const/high16 v9, 0x3f80

    const/high16 v8, 0x437f

    const/high16 v7, 0x3f00

    .line 289
    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-nez v5, :cond_0

    .line 290
    mul-float v5, p2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 291
    iget v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 292
    iget v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    .line 336
    :goto_0
    return-void

    .line 294
    :cond_0
    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v5, p1, v5

    const/high16 v6, 0x40c0

    mul-float v1, v5, v6

    .line 295
    .local v1, h:F
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v0, v1, v5

    .line 296
    .local v0, f:F
    sub-float v5, v9, p3

    mul-float v2, p2, v5

    .line 297
    .local v2, p:F
    mul-float v5, p3, v0

    sub-float v5, v9, v5

    mul-float v3, p2, v5

    .line 298
    .local v3, q:F
    sub-float v5, v9, v0

    mul-float/2addr v5, p3

    sub-float v5, v9, v5

    mul-float v4, p2, v5

    .line 299
    .local v4, t:F
    float-to-int v5, v1

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    mul-float v5, p2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 302
    mul-float v5, v4, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 303
    mul-float v5, v2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    goto :goto_0

    .line 306
    :pswitch_1
    mul-float v5, v3, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 307
    mul-float v5, p2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 308
    mul-float v5, v2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    goto :goto_0

    .line 311
    :pswitch_2
    mul-float v5, v2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 312
    mul-float v5, p2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 313
    mul-float v5, v4, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    goto :goto_0

    .line 316
    :pswitch_3
    mul-float v5, v2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 317
    mul-float v5, v3, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 318
    mul-float v5, p2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    goto :goto_0

    .line 321
    :pswitch_4
    mul-float v5, v4, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 322
    mul-float v5, v2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 323
    mul-float v5, p2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    goto/16 :goto_0

    .line 326
    :pswitch_5
    mul-float v5, p2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 327
    mul-float v5, v2, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 328
    mul-float v5, v3, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setRgb(I)V
    .locals 0
    .parameter "rgb"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Color;->setByRgb(I)V

    .line 147
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Color:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->red:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->green:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->red:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->green:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
