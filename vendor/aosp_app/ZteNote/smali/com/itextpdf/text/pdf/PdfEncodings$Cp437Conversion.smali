.class Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;
.super Ljava/lang/Object;
.source "PdfEncodings.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/ExtraEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfEncodings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cp437Conversion"
.end annotation


# static fields
.field private static c2b:Lcom/itextpdf/text/pdf/IntHashtable;

.field private static final table:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 396
    new-instance v1, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    sput-object v1, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;->c2b:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 450
    const/16 v1, 0x80

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;->table:[C

    .line 462
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;->table:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 463
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;->c2b:Lcom/itextpdf/text/pdf/IntHashtable;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;->table:[C

    aget-char v2, v2, v0

    add-int/lit16 v3, v0, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return-void

    .line 450
    nop

    :array_0
    .array-data 0x2
        0xc7t 0x0t
        0xfct 0x0t
        0xe9t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe0t 0x0t
        0xe5t 0x0t
        0xe7t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xe8t 0x0t
        0xeft 0x0t
        0xeet 0x0t
        0xect 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc9t 0x0t
        0xe6t 0x0t
        0xc6t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf2t 0x0t
        0xfbt 0x0t
        0xf9t 0x0t
        0xfft 0x0t
        0xd6t 0x0t
        0xdct 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa5t 0x0t
        0xa7t 0x20t
        0x92t 0x1t
        0xe1t 0x0t
        0xedt 0x0t
        0xf3t 0x0t
        0xfat 0x0t
        0xf1t 0x0t
        0xd1t 0x0t
        0xaat 0x0t
        0xbat 0x0t
        0xbft 0x0t
        0x10t 0x23t
        0xact 0x0t
        0xbdt 0x0t
        0xbct 0x0t
        0xa1t 0x0t
        0xabt 0x0t
        0xbbt 0x0t
        0x91t 0x25t
        0x92t 0x25t
        0x93t 0x25t
        0x2t 0x25t
        0x24t 0x25t
        0x61t 0x25t
        0x62t 0x25t
        0x56t 0x25t
        0x55t 0x25t
        0x63t 0x25t
        0x51t 0x25t
        0x57t 0x25t
        0x5dt 0x25t
        0x5ct 0x25t
        0x5bt 0x25t
        0x10t 0x25t
        0x14t 0x25t
        0x34t 0x25t
        0x2ct 0x25t
        0x1ct 0x25t
        0x0t 0x25t
        0x3ct 0x25t
        0x5et 0x25t
        0x5ft 0x25t
        0x5at 0x25t
        0x54t 0x25t
        0x69t 0x25t
        0x66t 0x25t
        0x60t 0x25t
        0x50t 0x25t
        0x6ct 0x25t
        0x67t 0x25t
        0x68t 0x25t
        0x64t 0x25t
        0x65t 0x25t
        0x59t 0x25t
        0x58t 0x25t
        0x52t 0x25t
        0x53t 0x25t
        0x6bt 0x25t
        0x6at 0x25t
        0x18t 0x25t
        0xct 0x25t
        0x88t 0x25t
        0x84t 0x25t
        0x8ct 0x25t
        0x90t 0x25t
        0x80t 0x25t
        0xb1t 0x3t
        0xdft 0x0t
        0x93t 0x3t
        0xc0t 0x3t
        0xa3t 0x3t
        0xc3t 0x3t
        0xb5t 0x0t
        0xc4t 0x3t
        0xa6t 0x3t
        0x98t 0x3t
        0xa9t 0x3t
        0xb4t 0x3t
        0x1et 0x22t
        0xc6t 0x3t
        0xb5t 0x3t
        0x29t 0x22t
        0x61t 0x22t
        0xb1t 0x0t
        0x65t 0x22t
        0x64t 0x22t
        0x20t 0x23t
        0x21t 0x23t
        0xf7t 0x0t
        0x48t 0x22t
        0xb0t 0x0t
        0x19t 0x22t
        0xb7t 0x0t
        0x1at 0x22t
        0x7ft 0x20t
        0xb2t 0x0t
        0xa0t 0x25t
        0xa0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;-><init>()V

    return-void
.end method


# virtual methods
.method public byteToChar([BLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "b"
    .parameter "encoding"

    .prologue
    .line 433
    array-length v3, p1

    .line 434
    .local v3, len:I
    new-array v1, v3, [C

    .line 435
    .local v1, cc:[C
    const/4 v4, 0x0

    .line 436
    .local v4, ptr:I
    const/4 v2, 0x0

    .local v2, k:I
    move v5, v4

    .end local v4           #ptr:I
    .local v5, ptr:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 437
    aget-byte v7, p1, v2

    and-int/lit16 v0, v7, 0xff

    .line 438
    .local v0, c:I
    const/16 v7, 0x20

    if-ge v0, v7, :cond_0

    move v4, v5

    .line 436
    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_0

    .line 440
    :cond_0
    const/16 v7, 0x80

    if-ge v0, v7, :cond_1

    .line 441
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    int-to-char v7, v0

    aput-char v7, v1, v5

    goto :goto_1

    .line 443
    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    :cond_1
    sget-object v7, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;->table:[C

    add-int/lit8 v8, v0, -0x80

    aget-char v6, v7, v8

    .line 444
    .local v6, v:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    aput-char v6, v1, v5

    goto :goto_1

    .line 447
    .end local v0           #c:I
    .end local v4           #ptr:I
    .end local v6           #v:C
    .restart local v5       #ptr:I
    :cond_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method

.method public charToByte(CLjava/lang/String;)[B
    .locals 4
    .parameter "char1"
    .parameter "encoding"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 421
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 422
    new-array v1, v2, [B

    int-to-byte v2, p1

    aput-byte v2, v1, v3

    .line 428
    :goto_0
    return-object v1

    .line 424
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;->c2b:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    int-to-byte v0, v1

    .line 425
    .local v0, v:B
    if-eqz v0, :cond_1

    .line 426
    new-array v1, v2, [B

    aput-byte v0, v1, v3

    goto :goto_0

    .line 428
    :cond_1
    new-array v1, v3, [B

    goto :goto_0
.end method

.method public charToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .parameter "text"
    .parameter "encoding"

    .prologue
    const/4 v10, 0x0

    .line 399
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 400
    .local v3, cc:[C
    array-length v9, v3

    new-array v0, v9, [B

    .line 401
    .local v0, b:[B
    const/4 v6, 0x0

    .line 402
    .local v6, ptr:I
    array-length v5, v3

    .line 403
    .local v5, len:I
    const/4 v4, 0x0

    .local v4, k:I
    move v7, v6

    .end local v6           #ptr:I
    .local v7, ptr:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 404
    aget-char v2, v3, v4

    .line 405
    .local v2, c:C
    const/16 v9, 0x80

    if-ge v2, v9, :cond_0

    .line 406
    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    int-to-byte v9, v2

    aput-byte v9, v0, v7

    .line 403
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_0

    .line 408
    :cond_0
    sget-object v9, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;->c2b:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v9, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v9

    int-to-byte v8, v9

    .line 409
    .local v8, v:B
    if-eqz v8, :cond_3

    .line 410
    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    aput-byte v8, v0, v7

    goto :goto_1

    .line 413
    .end local v2           #c:C
    .end local v6           #ptr:I
    .end local v8           #v:B
    .restart local v7       #ptr:I
    :cond_1
    if-ne v7, v5, :cond_2

    .line 417
    .end local v0           #b:[B
    :goto_2
    return-object v0

    .line 415
    .restart local v0       #b:[B
    :cond_2
    new-array v1, v7, [B

    .line 416
    .local v1, b2:[B
    invoke-static {v0, v10, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 417
    goto :goto_2

    .end local v1           #b2:[B
    .restart local v2       #c:C
    .restart local v8       #v:B
    :cond_3
    move v6, v7

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_1
.end method
