.class Lcom/itextpdf/text/pdf/PdfEncodings$SymbolTTConversion;
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
    name = "SymbolTTConversion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolTTConversion;-><init>()V

    return-void
.end method


# virtual methods
.method public byteToChar([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "b"
    .parameter "encoding"

    .prologue
    .line 585
    const/4 v0, 0x0

    return-object v0
.end method

.method public charToByte(CLjava/lang/String;)[B
    .locals 3
    .parameter "char1"
    .parameter "encoding"

    .prologue
    const v1, 0xff00

    const/4 v2, 0x0

    .line 561
    and-int v0, p1, v1

    if-eqz v0, :cond_0

    and-int v0, p1, v1

    const v1, 0xf000

    if-ne v0, v1, :cond_1

    .line 562
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 564
    :goto_0
    return-object v0

    :cond_1
    new-array v0, v2, [B

    goto :goto_0
.end method

.method public charToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .parameter "text"
    .parameter "encoding"

    .prologue
    const v11, 0xff00

    const/4 v10, 0x0

    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 569
    .local v3, ch:[C
    array-length v8, v3

    new-array v0, v8, [B

    .line 570
    .local v0, b:[B
    const/4 v6, 0x0

    .line 571
    .local v6, ptr:I
    array-length v5, v3

    .line 572
    .local v5, len:I
    const/4 v4, 0x0

    .local v4, k:I
    move v7, v6

    .end local v6           #ptr:I
    .local v7, ptr:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 573
    aget-char v2, v3, v4

    .line 574
    .local v2, c:C
    and-int v8, v2, v11

    if-eqz v8, :cond_0

    and-int v8, v2, v11

    const v9, 0xf000

    if-ne v8, v9, :cond_3

    .line 575
    :cond_0
    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    int-to-byte v8, v2

    aput-byte v8, v0, v7

    .line 572
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_0

    .line 577
    .end local v2           #c:C
    :cond_1
    if-ne v7, v5, :cond_2

    .line 581
    .end local v0           #b:[B
    :goto_2
    return-object v0

    .line 579
    .restart local v0       #b:[B
    :cond_2
    new-array v1, v7, [B

    .line 580
    .local v1, b2:[B
    invoke-static {v0, v10, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 581
    goto :goto_2

    .end local v1           #b2:[B
    .restart local v2       #c:C
    :cond_3
    move v6, v7

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_1
.end method
