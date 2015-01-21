.class public Lcom/itextpdf/text/pdf/codec/LZWStringTable;
.super Ljava/lang/Object;
.source "LZWStringTable.java"


# static fields
.field private static final HASHSIZE:S = 0x26f5s

.field private static final HASHSTEP:S = 0x7f7s

.field private static final HASH_FREE:S = -0x1s

.field private static final MAXBITS:I = 0xc

.field private static final MAXSTR:I = 0x1000

.field private static final NEXT_FIRST:S = -0x1s

.field private static final RES_CODES:I = 0x2


# instance fields
.field numStrings_:S

.field strChr_:[B

.field strHsh_:[S

.field strLen_:[I

.field strNxt_:[S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strChr_:[B

    .line 95
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strNxt_:[S

    .line 96
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strLen_:[I

    .line 97
    const/16 v0, 0x26f5

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strHsh_:[S

    .line 98
    return-void
.end method

.method public static Hash(SB)I
    .locals 2
    .parameter "index"
    .parameter "lastbyte"

    .prologue
    .line 178
    shl-int/lit8 v0, p1, 0x8

    int-to-short v0, v0

    xor-int/2addr v0, p0

    const v1, 0xffff

    and-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x26f5

    return v0
.end method


# virtual methods
.method public AddCharString(SB)I
    .locals 4
    .parameter "index"
    .parameter "b"

    .prologue
    const/4 v3, -0x1

    .line 111
    iget-short v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_0

    .line 113
    const v1, 0xffff

    .line 133
    :goto_0
    return v1

    .line 116
    :cond_0
    invoke-static {p1, p2}, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->Hash(SB)I

    move-result v0

    .line 117
    .local v0, hshidx:I
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strHsh_:[S

    aget-short v1, v1, v0

    if-eq v1, v3, :cond_1

    .line 118
    add-int/lit16 v1, v0, 0x7f7

    rem-int/lit16 v0, v1, 0x26f5

    goto :goto_1

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strHsh_:[S

    iget-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    aput-short v2, v1, v0

    .line 121
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strChr_:[B

    iget-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    aput-byte p2, v1, v2

    .line 122
    if-ne p1, v3, :cond_2

    .line 124
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strNxt_:[S

    iget-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    aput-short v3, v1, v2

    .line 125
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strLen_:[I

    iget-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 133
    :goto_2
    iget-short v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strNxt_:[S

    iget-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    aput-short p1, v1, v2

    .line 130
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strLen_:[I

    iget-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strLen_:[I

    aget v3, v3, p1

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_2
.end method

.method public ClearTable(I)V
    .locals 4
    .parameter "codesize"

    .prologue
    const/4 v3, -0x1

    .line 166
    const/4 v2, 0x0

    iput-short v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    .line 168
    const/4 v0, 0x0

    .local v0, q:I
    :goto_0
    const/16 v2, 0x26f5

    if-ge v0, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strHsh_:[S

    aput-short v3, v2, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    const/4 v2, 0x1

    shl-int/2addr v2, p1

    add-int/lit8 v1, v2, 0x2

    .line 172
    .local v1, w:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 173
    int-to-byte v2, v0

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->AddCharString(SB)I

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_1
    return-void
.end method

.method public FindCharString(SB)S
    .locals 4
    .parameter "index"
    .parameter "b"

    .prologue
    const/4 v2, -0x1

    .line 146
    if-ne p1, v2, :cond_1

    .line 147
    and-int/lit16 v2, p2, 0xff

    int-to-short v2, v2

    .line 157
    :cond_0
    :goto_0
    return v2

    .line 149
    :cond_1
    invoke-static {p1, p2}, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->Hash(SB)I

    move-result v0

    .line 150
    .local v0, hshidx:I
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strHsh_:[S

    aget-short v1, v3, v0

    .local v1, nxtidx:I
    if-eq v1, v2, :cond_0

    .line 152
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strNxt_:[S

    aget-short v3, v3, v1

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strChr_:[B

    aget-byte v3, v3, v1

    if-ne v3, p2, :cond_2

    .line 153
    int-to-short v2, v1

    goto :goto_0

    .line 154
    :cond_2
    add-int/lit16 v3, v0, 0x7f7

    rem-int/lit16 v0, v3, 0x26f5

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 243
    const/16 v0, 0x102

    .local v0, i:I
    :goto_0
    iget-short v1, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->numStrings_:S

    if-ge v0, v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " strNxt_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strNxt_:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strChr_ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strChr_:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strLen_ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strLen_:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method public expandCode([BISI)I
    .locals 7
    .parameter "buf"
    .parameter "offset"
    .parameter "code"
    .parameter "skipHead"

    .prologue
    const/4 v6, -0x1

    .line 203
    const/4 v5, -0x2

    if-ne p2, v5, :cond_0

    .line 205
    const/4 v5, 0x1

    if-ne p4, v5, :cond_0

    const/4 p4, 0x0

    .line 207
    :cond_0
    if-eq p3, v6, :cond_1

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strLen_:[I

    aget v5, v5, p3

    if-ne p4, v5, :cond_3

    .line 209
    :cond_1
    const/4 v2, 0x0

    .line 237
    :cond_2
    :goto_0
    return v2

    .line 212
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strLen_:[I

    aget v5, v5, p3

    sub-int v1, v5, p4

    .line 213
    .local v1, codeLen:I
    array-length v5, p1

    sub-int v0, v5, p2

    .line 214
    .local v0, bufSpace:I
    if-le v0, v1, :cond_5

    .line 215
    move v2, v1

    .line 219
    .local v2, expandLen:I
    :goto_1
    sub-int v4, v1, v2

    .line 221
    .local v4, skipTail:I
    add-int v3, p2, v2

    .line 225
    .local v3, idx:I
    :goto_2
    if-le v3, p2, :cond_6

    if-eq p3, v6, :cond_6

    .line 227
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_4

    .line 229
    add-int/lit8 v3, v3, -0x1

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strChr_:[B

    aget-byte v5, v5, p3

    aput-byte v5, p1, v3

    .line 231
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/LZWStringTable;->strNxt_:[S

    aget-short p3, v5, p3

    goto :goto_2

    .line 217
    .end local v2           #expandLen:I
    .end local v3           #idx:I
    .end local v4           #skipTail:I
    :cond_5
    move v2, v0

    .restart local v2       #expandLen:I
    goto :goto_1

    .line 234
    .restart local v3       #idx:I
    .restart local v4       #skipTail:I
    :cond_6
    if-le v1, v2, :cond_2

    .line 235
    neg-int v2, v2

    goto :goto_0
.end method
