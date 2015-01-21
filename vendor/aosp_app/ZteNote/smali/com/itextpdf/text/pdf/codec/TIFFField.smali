.class public Lcom/itextpdf/text/pdf/codec/TIFFField;
.super Ljava/lang/Object;
.source "TIFFField.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itextpdf/text/pdf/codec/TIFFField;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final TIFF_ASCII:I = 0x2

.field public static final TIFF_BYTE:I = 0x1

.field public static final TIFF_DOUBLE:I = 0xc

.field public static final TIFF_FLOAT:I = 0xb

.field public static final TIFF_LONG:I = 0x4

.field public static final TIFF_RATIONAL:I = 0x5

.field public static final TIFF_SBYTE:I = 0x6

.field public static final TIFF_SHORT:I = 0x3

.field public static final TIFF_SLONG:I = 0x9

.field public static final TIFF_SRATIONAL:I = 0xa

.field public static final TIFF_SSHORT:I = 0x8

.field public static final TIFF_UNDEFINED:I = 0x7

.field private static final serialVersionUID:J = 0x7e203e9f2d34e31aL


# instance fields
.field count:I

.field data:Ljava/lang/Object;

.field tag:I

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "type"
    .parameter "count"
    .parameter "data"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->tag:I

    .line 159
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->type:I

    .line 160
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->count:I

    .line 161
    iput-object p4, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    .line 162
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/text/pdf/codec/TIFFField;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 477
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getTag()I

    move-result v0

    .line 479
    .local v0, oTag:I
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->tag:I

    if-ge v1, v0, :cond_1

    .line 480
    const/4 v1, -0x1

    .line 484
    :goto_0
    return v1

    .line 481
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->tag:I

    if-le v1, v0, :cond_2

    .line 482
    const/4 v1, 0x1

    goto :goto_0

    .line 484
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Lcom/itextpdf/text/pdf/codec/TIFFField;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFField;->compareTo(Lcom/itextpdf/text/pdf/codec/TIFFField;)I

    move-result v0

    return v0
.end method

.method public getAsBytes()[B
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getAsChars()[C
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public getAsDouble(I)D
    .locals 6
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->type:I

    packed-switch v2, :pswitch_data_0

    .line 425
    :pswitch_0
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 403
    :pswitch_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    .line 423
    :goto_0
    return-wide v2

    .line 405
    :pswitch_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    aget-byte v2, v2, p1

    int-to-double v2, v2

    goto :goto_0

    .line 407
    :pswitch_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [C

    check-cast v2, [C

    aget-char v2, v2, p1

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-double v2, v2

    goto :goto_0

    .line 409
    :pswitch_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [S

    check-cast v2, [S

    aget-short v2, v2, p1

    int-to-double v2, v2

    goto :goto_0

    .line 411
    :pswitch_5
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, p1

    int-to-double v2, v2

    goto :goto_0

    .line 413
    :pswitch_6
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    aget-wide v2, v2, p1

    long-to-double v2, v2

    goto :goto_0

    .line 415
    :pswitch_7
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [F

    check-cast v2, [F

    aget v2, v2, p1

    float-to-double v2, v2

    goto :goto_0

    .line 417
    :pswitch_8
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [D

    check-cast v2, [D

    aget-wide v2, v2, p1

    goto :goto_0

    .line 419
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsSRational(I)[I

    move-result-object v0

    .line 420
    .local v0, ivalue:[I
    aget v2, v0, v3

    int-to-double v2, v2

    aget v4, v0, v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0

    .line 422
    .end local v0           #ivalue:[I
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsRational(I)[J

    move-result-object v1

    .line 423
    .local v1, lvalue:[J
    aget-wide v2, v1, v3

    long-to-double v2, v2

    aget-wide v4, v1, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getAsDoubles()[D
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public getAsFloat(I)F
    .locals 6
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 363
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->type:I

    packed-switch v2, :pswitch_data_0

    .line 387
    :pswitch_0
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 365
    :pswitch_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    .line 385
    :goto_0
    return v2

    .line 367
    :pswitch_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    aget-byte v2, v2, p1

    int-to-float v2, v2

    goto :goto_0

    .line 369
    :pswitch_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [C

    check-cast v2, [C

    aget-char v2, v2, p1

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-float v2, v2

    goto :goto_0

    .line 371
    :pswitch_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [S

    check-cast v2, [S

    aget-short v2, v2, p1

    int-to-float v2, v2

    goto :goto_0

    .line 373
    :pswitch_5
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, p1

    int-to-float v2, v2

    goto :goto_0

    .line 375
    :pswitch_6
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    aget-wide v2, v2, p1

    long-to-float v2, v2

    goto :goto_0

    .line 377
    :pswitch_7
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [F

    check-cast v2, [F

    aget v2, v2, p1

    goto :goto_0

    .line 379
    :pswitch_8
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v2, [D

    check-cast v2, [D

    aget-wide v2, v2, p1

    double-to-float v2, v2

    goto :goto_0

    .line 381
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsSRational(I)[I

    move-result-object v0

    .line 382
    .local v0, ivalue:[I
    aget v2, v0, v3

    int-to-double v2, v2

    aget v4, v0, v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    goto :goto_0

    .line 384
    .end local v0           #ivalue:[I
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsRational(I)[J

    move-result-object v1

    .line 385
    .local v1, lvalue:[J
    aget-wide v2, v1, v3

    long-to-double v2, v2

    aget-wide v4, v1, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getAsFloats()[F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public getAsInt(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 303
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->type:I

    packed-switch v0, :pswitch_data_0

    .line 315
    :pswitch_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 313
    :goto_0
    return v0

    .line 307
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    goto :goto_0

    .line 309
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    aget-char v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    goto :goto_0

    .line 311
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    aget-short v0, v0, p1

    goto :goto_0

    .line 313
    :pswitch_5
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, p1

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAsInts()[I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public getAsLong(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 333
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->type:I

    packed-switch v0, :pswitch_data_0

    .line 347
    :pswitch_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 345
    :goto_0
    return-wide v0

    .line 337
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 339
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    aget-char v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    .line 341
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    aget-short v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 343
    :pswitch_5
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 345
    :pswitch_6
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAsLongs()[J
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public getAsRational(I)[J
    .locals 2
    .parameter "index"

    .prologue
    .line 458
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsLongs()[J

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [[J

    check-cast v0, [[J

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getAsRationals()[[J
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [[J

    check-cast v0, [[J

    return-object v0
.end method

.method public getAsSRational(I)[I
    .locals 1
    .parameter "index"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [[I

    check-cast v0, [[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAsSRationals()[[I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [[I

    check-cast v0, [[I

    return-object v0
.end method

.method public getAsShorts()[S
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public getAsString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->count:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->tag:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFField;->type:I

    return v0
.end method
