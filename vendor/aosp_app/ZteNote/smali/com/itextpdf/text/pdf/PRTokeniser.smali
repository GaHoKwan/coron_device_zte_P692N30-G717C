.class public Lcom/itextpdf/text/pdf/PRTokeniser;
.super Ljava/lang/Object;
.source "PRTokeniser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/String; = ""

.field public static final delims:[Z


# instance fields
.field protected file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field protected generation:I

.field protected hexString:Z

.field protected reference:I

.field protected stringValue:Ljava/lang/String;

.field protected type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x101

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser;->delims:[Z

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 113
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pdfIn"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 117
    return-void
.end method

.method public static checkObjectStart([B)[J
    .locals 8
    .parameter "line"

    .prologue
    const/4 v3, 0x0

    .line 593
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    .line 594
    .local v2, tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    const/4 v1, 0x0

    .line 595
    .local v1, num:I
    const/4 v0, 0x0

    .line 596
    .local v0, gen:I
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v4, v5, :cond_1

    .line 611
    .end local v0           #gen:I
    .end local v1           #num:I
    .end local v2           #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :cond_0
    :goto_0
    return-object v3

    .line 598
    .restart local v0       #gen:I
    .restart local v1       #num:I
    .restart local v2       #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v1

    .line 599
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v4, v5, :cond_0

    .line 601
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v0

    .line 602
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "obj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    int-to-long v6, v1

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    int-to-long v6, v0

    aput-wide v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 608
    .end local v0           #gen:I
    .end local v1           #num:I
    .end local v2           #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getHex(I)I
    .locals 1
    .parameter "v"

    .prologue
    .line 235
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 236
    add-int/lit8 v0, p0, -0x30

    .line 241
    :goto_0
    return v0

    .line 237
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 238
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 239
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 240
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 241
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final isDelimiter(I)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 168
    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDelimiterWhitespace(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 172
    sget-object v0, Lcom/itextpdf/text/pdf/PRTokeniser;->delims:[Z

    add-int/lit8 v1, p0, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public static final isWhitespace(I)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 164
    if-eqz p0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backOnePosition(I)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 192
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->pushBack(B)V

    .line 194
    :cond_0
    return-void
.end method

.method public checkFdfHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->setStartOffset(J)V

    .line 212
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, str:Ljava/lang/String;
    const-string v2, "%FDF-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 215
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v3, "fdf.header.not.found"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->setStartOffset(J)V

    .line 217
    return-void
.end method

.method public checkPdfHeader()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->setStartOffset(J)V

    .line 202
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, str:Ljava/lang/String;
    const-string v2, "%PDF-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 204
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 205
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v3, "pdf.header.not.found"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->setStartOffset(J)V

    .line 207
    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    return v2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 133
    return-void
.end method

.method public getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->generation:I

    return v0
.end method

.method public getReference()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->reference:I

    return v0
.end method

.method public getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    return-object v0
.end method

.method public getStartxref()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/16 v0, 0x400

    .line 221
    .local v0, arrLength:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v1

    .line 222
    .local v1, fileLength:J
    int-to-long v7, v0

    sub-long v4, v1, v7

    .line 223
    .local v4, pos:J
    const-wide/16 v7, 0x1

    cmp-long v7, v4, v7

    if-gez v7, :cond_0

    const-wide/16 v4, 0x1

    .line 224
    :cond_0
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_2

    .line 225
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7, v4, v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, str:Ljava/lang/String;
    const-string v7, "startxref"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, idx:I
    if-ltz v3, :cond_1

    int-to-long v7, v3

    add-long/2addr v7, v4

    return-wide v7

    .line 229
    :cond_1
    int-to-long v7, v0

    sub-long v7, v4, v7

    const-wide/16 v9, 0x9

    add-long v4, v7, v9

    .line 230
    goto :goto_0

    .line 231
    .end local v3           #idx:I
    .end local v6           #str:Ljava/lang/String;
    :cond_2
    new-instance v7, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v8, "pdf.startxref.not.found"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isHexString()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->hexString:Z

    return v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextToken()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v13, 0x2d

    const/16 v12, 0x30

    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, ch:I
    :cond_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 298
    if-eq v0, v11, :cond_1

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 299
    :cond_1
    if-ne v0, v11, :cond_2

    .line 300
    sget-object v8, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ENDOFFILE:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v8, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 514
    :goto_0
    return v9

    .line 307
    :cond_2
    const/4 v5, 0x0

    .line 308
    .local v5, outBuf:Ljava/lang/StringBuffer;
    const-string v10, ""

    iput-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 310
    sparse-switch v0, :sswitch_data_0

    .line 479
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #outBuf:Ljava/lang/StringBuffer;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 480
    .restart local v5       #outBuf:Ljava/lang/StringBuffer;
    if-eq v0, v13, :cond_3

    const/16 v10, 0x2b

    if-eq v0, v10, :cond_3

    const/16 v10, 0x2e

    if-eq v0, v10, :cond_3

    if-lt v0, v12, :cond_24

    const/16 v10, 0x39

    if-gt v0, v10, :cond_24

    .line 481
    :cond_3
    sget-object v10, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 482
    if-ne v0, v13, :cond_23

    .line 484
    const/4 v2, 0x0

    .line 486
    .local v2, minus:Z
    :cond_4
    if-nez v2, :cond_22

    move v2, v8

    .line 487
    :goto_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 488
    if-eq v0, v13, :cond_4

    .line 489
    if-eqz v2, :cond_5

    .line 490
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 496
    .end local v2           #minus:Z
    :cond_5
    :goto_2
    if-eq v0, v11, :cond_26

    if-lt v0, v12, :cond_6

    const/16 v9, 0x39

    if-le v0, v9, :cond_7

    :cond_6
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_26

    .line 497
    :cond_7
    int-to-char v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 498
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    goto :goto_2

    .line 312
    :sswitch_0
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->START_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 512
    :cond_8
    :goto_3
    if-eqz v5, :cond_9

    .line 513
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    :cond_9
    move v9, v8

    .line 514
    goto :goto_0

    .line 315
    :sswitch_1
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    goto :goto_3

    .line 319
    :sswitch_2
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #outBuf:Ljava/lang/StringBuffer;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    .restart local v5       #outBuf:Ljava/lang/StringBuffer;
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NAME:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 322
    :goto_4
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 323
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser;->delims:[Z

    add-int/lit8 v10, v0, 0x1

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_a

    .line 330
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    goto :goto_3

    .line 325
    :cond_a
    const/16 v9, 0x23

    if-ne v0, v9, :cond_b

    .line 326
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v10

    add-int v0, v9, v10

    .line 328
    :cond_b
    int-to-char v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 334
    :sswitch_3
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 335
    const/16 v10, 0x3e

    if-eq v0, v10, :cond_c

    .line 336
    const-string v10, "greaterthan.not.expected"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 337
    :cond_c
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    goto :goto_3

    .line 341
    :sswitch_4
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v6

    .line 342
    .local v6, v1:I
    const/16 v10, 0x3c

    if-ne v6, v10, :cond_d

    .line 343
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->START_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    goto :goto_3

    .line 346
    :cond_d
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #outBuf:Ljava/lang/StringBuffer;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 347
    .restart local v5       #outBuf:Ljava/lang/StringBuffer;
    sget-object v10, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->STRING:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 348
    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->hexString:Z

    .line 349
    const/4 v7, 0x0

    .line 351
    .local v7, v2:I
    :goto_5
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 352
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v6

    goto :goto_5

    .line 353
    :cond_e
    const/16 v10, 0x3e

    if-ne v6, v10, :cond_11

    .line 373
    :cond_f
    :goto_6
    if-ltz v6, :cond_10

    if-gez v7, :cond_8

    .line 374
    :cond_10
    const-string v10, "error.reading.string"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 355
    :cond_11
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v6

    .line 356
    if-ltz v6, :cond_f

    .line 358
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v7

    .line 359
    :goto_7
    invoke-static {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 360
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v7

    goto :goto_7

    .line 361
    :cond_12
    const/16 v10, 0x3e

    if-ne v7, v10, :cond_13

    .line 362
    shl-int/lit8 v0, v6, 0x4

    .line 363
    int-to-char v10, v0

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 366
    :cond_13
    invoke-static {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v7

    .line 367
    if-ltz v7, :cond_f

    .line 369
    shl-int/lit8 v10, v6, 0x4

    add-int v0, v10, v7

    .line 370
    int-to-char v10, v0

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v6

    goto :goto_5

    .line 378
    .end local v6           #v1:I
    .end local v7           #v2:I
    :sswitch_5
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 380
    :cond_14
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 381
    if-eq v0, v11, :cond_8

    const/16 v9, 0xd

    if-eq v0, v9, :cond_8

    const/16 v9, 0xa

    if-ne v0, v9, :cond_14

    goto/16 :goto_3

    .line 385
    :sswitch_6
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #outBuf:Ljava/lang/StringBuffer;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .restart local v5       #outBuf:Ljava/lang/StringBuffer;
    sget-object v10, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->STRING:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 387
    iput-boolean v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->hexString:Z

    .line 388
    const/4 v3, 0x0

    .line 390
    .local v3, nesting:I
    :cond_15
    :goto_8
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 391
    if-ne v0, v11, :cond_17

    .line 473
    :cond_16
    :goto_9
    if-ne v0, v11, :cond_8

    .line 474
    const-string v10, "error.reading.string"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 393
    :cond_17
    const/16 v10, 0x28

    if-ne v0, v10, :cond_19

    .line 394
    add-int/lit8 v3, v3, 0x1

    .line 469
    :cond_18
    :goto_a
    if-eq v3, v11, :cond_16

    .line 471
    int-to-char v10, v0

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 396
    :cond_19
    const/16 v10, 0x29

    if-ne v0, v10, :cond_1a

    .line 397
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 399
    :cond_1a
    const/16 v10, 0x5c

    if-ne v0, v10, :cond_21

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, lineBreak:Z
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 402
    sparse-switch v0, :sswitch_data_1

    .line 433
    if-lt v0, v12, :cond_1b

    const/16 v10, 0x37

    if-le v0, v10, :cond_1c

    .line 455
    :cond_1b
    :goto_b
    :sswitch_7
    if-nez v1, :cond_15

    .line 457
    if-gez v0, :cond_18

    goto :goto_9

    .line 404
    :sswitch_8
    const/16 v0, 0xa

    .line 405
    goto :goto_b

    .line 407
    :sswitch_9
    const/16 v0, 0xd

    .line 408
    goto :goto_b

    .line 410
    :sswitch_a
    const/16 v0, 0x9

    .line 411
    goto :goto_b

    .line 413
    :sswitch_b
    const/16 v0, 0x8

    .line 414
    goto :goto_b

    .line 416
    :sswitch_c
    const/16 v0, 0xc

    .line 417
    goto :goto_b

    .line 423
    :sswitch_d
    const/4 v1, 0x1

    .line 424
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 425
    const/16 v10, 0xa

    if-eq v0, v10, :cond_1b

    .line 426
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    goto :goto_b

    .line 429
    :sswitch_e
    const/4 v1, 0x1

    .line 430
    goto :goto_b

    .line 436
    :cond_1c
    add-int/lit8 v4, v0, -0x30

    .line 437
    .local v4, octal:I
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 438
    if-lt v0, v12, :cond_1d

    const/16 v10, 0x37

    if-le v0, v10, :cond_1e

    .line 439
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 440
    move v0, v4

    .line 441
    goto :goto_b

    .line 443
    :cond_1e
    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v0

    add-int/lit8 v4, v10, -0x30

    .line 444
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 445
    if-lt v0, v12, :cond_1f

    const/16 v10, 0x37

    if-le v0, v10, :cond_20

    .line 446
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 447
    move v0, v4

    .line 448
    goto :goto_b

    .line 450
    :cond_20
    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v0

    add-int/lit8 v4, v10, -0x30

    .line 451
    and-int/lit16 v0, v4, 0xff

    .line 452
    goto :goto_b

    .line 460
    .end local v1           #lineBreak:Z
    .end local v4           #octal:I
    :cond_21
    const/16 v10, 0xd

    if-ne v0, v10, :cond_18

    .line 461
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 462
    if-ltz v0, :cond_16

    .line 464
    const/16 v10, 0xa

    if-eq v0, v10, :cond_18

    .line 465
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 466
    const/16 v0, 0xa

    goto/16 :goto_a

    .end local v3           #nesting:I
    .restart local v2       #minus:Z
    :cond_22
    move v2, v9

    .line 486
    goto/16 :goto_1

    .line 493
    .end local v2           #minus:Z
    :cond_23
    int-to-char v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 494
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    goto/16 :goto_2

    .line 502
    :cond_24
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 504
    :cond_25
    int-to-char v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 505
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 506
    sget-object v9, Lcom/itextpdf/text/pdf/PRTokeniser;->delims:[Z

    add-int/lit8 v10, v0, 0x1

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_25

    .line 508
    :cond_26
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    goto/16 :goto_3

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2f -> :sswitch_2
        0x3c -> :sswitch_4
        0x3e -> :sswitch_3
        0x5b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 402
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_e
        0xd -> :sswitch_d
        0x28 -> :sswitch_7
        0x29 -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_b
        0x66 -> :sswitch_c
        0x6e -> :sswitch_8
        0x72 -> :sswitch_9
        0x74 -> :sswitch_a
    .end sparse-switch
.end method

.method public nextValidToken()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, level:I
    const/4 v1, 0x0

    .line 247
    .local v1, n1:Ljava/lang/String;
    const/4 v2, 0x0

    .line 248
    .local v2, n2:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 249
    .local v3, ptr:J
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v6, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v5, v6, :cond_0

    .line 252
    packed-switch v0, :pswitch_data_0

    .line 276
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v6, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    const-string v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 277
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5, v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 278
    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 279
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 292
    :cond_2
    :goto_1
    return-void

    .line 255
    :pswitch_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v6, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v5, v6, :cond_2

    .line 257
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v3

    .line 258
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v6, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v5, v6, :cond_3

    .line 265
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5, v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 266
    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 267
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    goto :goto_1

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 271
    add-int/lit8 v0, v0, 0x1

    .line 272
    goto :goto_0

    .line 282
    :cond_4
    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->REF:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->reference:I

    .line 284
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->generation:I

    goto :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    return v0
.end method

.method public readLineSegment([B)Z
    .locals 9
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    .line 526
    const/4 v0, -0x1

    .line 527
    .local v0, c:I
    const/4 v3, 0x0

    .line 528
    .local v3, eol:Z
    const/4 v5, 0x0

    .line 529
    .local v5, ptr:I
    array-length v4, p1

    .line 533
    .local v4, len:I
    if-ge v5, v4, :cond_1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    move v6, v5

    .line 536
    .end local v5           #ptr:I
    .local v6, ptr:I
    :goto_0
    if-nez v3, :cond_2

    if-ge v6, v4, :cond_2

    .line 537
    sparse-switch v0, :sswitch_data_0

    .line 550
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    int-to-byte v7, v0

    aput-byte v7, p1, v6

    .line 555
    :goto_1
    if-nez v3, :cond_8

    if-gt v4, v5, :cond_4

    move v6, v5

    .line 562
    .end local v5           #ptr:I
    .restart local v6       #ptr:I
    :cond_2
    :goto_2
    if-lt v6, v4, :cond_5

    .line 563
    const/4 v3, 0x0

    .line 564
    :cond_3
    :goto_3
    if-nez v3, :cond_5

    .line 565
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_3

    .line 568
    :sswitch_0
    const/4 v3, 0x1

    .line 569
    goto :goto_3

    .line 540
    :sswitch_1
    const/4 v3, 0x1

    move v5, v6

    .line 541
    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_1

    .line 543
    .end local v5           #ptr:I
    .restart local v6       #ptr:I
    :sswitch_2
    const/4 v3, 0x1

    .line 544
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v1

    .line 545
    .local v1, cur:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v7

    if-eq v7, v8, :cond_9

    .line 546
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    move v5, v6

    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_1

    .line 559
    .end local v1           #cur:J
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v0

    move v6, v5

    .end local v5           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_0

    .line 571
    :sswitch_3
    const/4 v3, 0x1

    .line 572
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()J

    move-result-wide v1

    .line 573
    .restart local v1       #cur:J
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v7

    if-eq v7, v8, :cond_3

    .line 574
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(J)V

    goto :goto_3

    .line 581
    .end local v1           #cur:J
    :cond_5
    const/4 v7, -0x1

    if-ne v0, v7, :cond_6

    if-nez v6, :cond_6

    .line 582
    const/4 v7, 0x0

    move v5, v6

    .line 588
    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    :goto_4
    return v7

    .line 584
    .end local v5           #ptr:I
    .restart local v6       #ptr:I
    :cond_6
    add-int/lit8 v7, v6, 0x2

    if-gt v7, v4, :cond_7

    .line 585
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    const/16 v7, 0x20

    aput-byte v7, p1, v6

    .line 586
    const/16 v7, 0x58

    aput-byte v7, p1, v5

    .line 588
    :goto_5
    const/4 v7, 0x1

    goto :goto_4

    .end local v5           #ptr:I
    .restart local v6       #ptr:I
    :cond_7
    move v5, v6

    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_5

    :cond_8
    move v6, v5

    .end local v5           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_2

    .restart local v1       #cur:J
    :cond_9
    move v5, v6

    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_1

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch

    .line 565
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public readString(I)Ljava/lang/String;
    .locals 4
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, buf:Ljava/lang/StringBuilder;
    move v2, p1

    .line 154
    .end local p1
    .local v2, size:I
    :goto_0
    add-int/lit8 p1, v2, -0x1

    .end local v2           #size:I
    .restart local p1
    if-lez v2, :cond_0

    .line 155
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 156
    .local v1, ch:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 160
    .end local v1           #ch:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 158
    .restart local v1       #ch:I
    :cond_1
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, p1

    .end local p1
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public seek(J)V
    .locals 1
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 125
    return-void
.end method

.method public throwError(Ljava/lang/String;)V
    .locals 6
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string v1, "1.at.file.pointer.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
