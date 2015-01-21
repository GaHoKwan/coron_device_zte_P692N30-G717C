.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;
.super Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;
.source "CMapByteCid.java"


# instance fields
.field private planes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->planes:Ljava/util/ArrayList;

    .line 56
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->planes:Ljava/util/ArrayList;

    const/16 v1, 0x100

    new-array v1, v1, [C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method private encodeSequence([BC)V
    .locals 10
    .parameter "seqs"
    .parameter "cid"

    .prologue
    const/4 v9, 0x0

    const v8, 0x8000

    .line 67
    array-length v6, p1

    add-int/lit8 v5, v6, -0x1

    .line 68
    .local v5, size:I
    const/4 v2, 0x0

    .line 69
    .local v2, nextPlane:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 70
    iget-object v6, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->planes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 71
    .local v4, plane:[C
    aget-byte v6, p1, v1

    and-int/lit16 v3, v6, 0xff

    .line 72
    .local v3, one:I
    aget-char v0, v4, v3

    .line 73
    .local v0, c:C
    if-eqz v0, :cond_0

    and-int v6, v0, v8

    if-nez v6, :cond_0

    .line 74
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "inconsistent.mapping"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 75
    :cond_0
    if-nez v0, :cond_1

    .line 76
    iget-object v6, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->planes:Ljava/util/ArrayList;

    const/16 v7, 0x100

    new-array v7, v7, [C

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v6, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->planes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    or-int/2addr v6, v8

    int-to-char v0, v6

    .line 78
    aput-char v0, v4, v3

    .line 80
    :cond_1
    and-int/lit16 v2, v0, 0x7fff

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0           #c:C
    .end local v3           #one:I
    .end local v4           #plane:[C
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->planes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 83
    .restart local v4       #plane:[C
    aget-byte v6, p1, v5

    and-int/lit16 v3, v6, 0xff

    .line 84
    .restart local v3       #one:I
    aget-char v0, v4, v3

    .line 85
    .restart local v0       #c:C
    and-int v6, v0, v8

    if-eqz v6, :cond_3

    .line 86
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "inconsistent.mapping"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 87
    :cond_3
    aput-char p2, v4, v3

    .line 88
    return-void
.end method


# virtual methods
.method addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 2
    .parameter "mark"
    .parameter "code"

    .prologue
    .line 61
    instance-of v0, p2, Lcom/itextpdf/text/pdf/PdfNumber;

    if-nez v0, :cond_0

    .line 64
    .end local p2
    :goto_0
    return-void

    .line 63
    .restart local p2
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->decodeStringToByte(Lcom/itextpdf/text/pdf/PdfString;)[B

    move-result-object v0

    check-cast p2, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local p2
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->encodeSequence([BC)V

    goto :goto_0
.end method

.method public decodeSequence(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;)Ljava/lang/String;
    .locals 3
    .parameter "seq"

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 115
    .local v0, cid:I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->decodeSingle(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 116
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public decodeSingle(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;)I
    .locals 8
    .parameter "seq"

    .prologue
    .line 96
    iget v5, p1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->off:I

    iget v6, p1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->len:I

    add-int v2, v5, v6

    .line 97
    .local v2, end:I
    const/4 v1, 0x0

    .line 98
    .local v1, currentPlane:I
    :goto_0
    iget v5, p1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->off:I

    if-ge v5, v2, :cond_1

    .line 99
    iget-object v5, p1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->seq:[B

    iget v6, p1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->off:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->off:I

    aget-byte v5, v5, v6

    and-int/lit16 v3, v5, 0xff

    .line 100
    .local v3, one:I
    iget v5, p1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->len:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->len:I

    .line 101
    iget-object v5, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->planes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 102
    .local v4, plane:[C
    aget-char v0, v4, v3

    .line 103
    .local v0, cid:I
    const v5, 0x8000

    and-int/2addr v5, v0

    if-nez v5, :cond_0

    .line 109
    .end local v0           #cid:I
    .end local v3           #one:I
    .end local v4           #plane:[C
    :goto_1
    return v0

    .line 107
    .restart local v0       #cid:I
    .restart local v3       #one:I
    .restart local v4       #plane:[C
    :cond_0
    and-int/lit16 v1, v0, 0x7fff

    .line 108
    goto :goto_0

    .line 109
    .end local v0           #cid:I
    .end local v3           #one:I
    .end local v4           #plane:[C
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
