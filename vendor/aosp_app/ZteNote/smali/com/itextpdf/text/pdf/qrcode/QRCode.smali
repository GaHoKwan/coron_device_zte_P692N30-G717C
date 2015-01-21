.class public final Lcom/itextpdf/text/pdf/qrcode/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"


# static fields
.field public static final NUM_MASK_PATTERNS:I = 0x8


# instance fields
.field private ecLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

.field private maskPattern:I

.field private matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

.field private matrixWidth:I

.field private mode:Lcom/itextpdf/text/pdf/qrcode/Mode;

.field private numDataBytes:I

.field private numECBytes:I

.field private numRSBlocks:I

.field private numTotalBytes:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->mode:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 42
    iput-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->ecLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    .line 43
    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->version:I

    .line 44
    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrixWidth:I

    .line 45
    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->maskPattern:I

    .line 46
    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numTotalBytes:I

    .line 47
    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numDataBytes:I

    .line 48
    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numECBytes:I

    .line 49
    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numRSBlocks:I

    .line 50
    iput-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    .line 51
    return-void
.end method

.method public static isValidMaskPattern(I)Z
    .locals 1
    .parameter "maskPattern"

    .prologue
    .line 215
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public at(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->get(II)B

    move-result v0

    .line 109
    .local v0, value:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad value"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    return v0
.end method

.method public getECLevel()Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->ecLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    return-object v0
.end method

.method public getMaskPattern()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->maskPattern:I

    return v0
.end method

.method public getMatrix()Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    return-object v0
.end method

.method public getMatrixWidth()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrixWidth:I

    return v0
.end method

.method public getMode()Lcom/itextpdf/text/pdf/qrcode/Mode;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->mode:Lcom/itextpdf/text/pdf/qrcode/Mode;

    return-object v0
.end method

.method public getNumDataBytes()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numDataBytes:I

    return v0
.end method

.method public getNumECBytes()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numECBytes:I

    return v0
.end method

.method public getNumRSBlocks()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numRSBlocks:I

    return v0
.end method

.method public getNumTotalBytes()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numTotalBytes:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->version:I

    return v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 119
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->mode:Lcom/itextpdf/text/pdf/qrcode/Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->ecLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->version:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrixWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->maskPattern:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numTotalBytes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numDataBytes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numECBytes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numRSBlocks:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->maskPattern:I

    invoke-static {v0}, Lcom/itextpdf/text/pdf/qrcode/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numTotalBytes:I

    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numDataBytes:I

    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numECBytes:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrixWidth:I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setECLevel(Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->ecLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    .line 178
    return-void
.end method

.method public setMaskPattern(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 189
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->maskPattern:I

    .line 190
    return-void
.end method

.method public setMatrix(Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    .line 211
    return-void
.end method

.method public setMatrixWidth(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 185
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrixWidth:I

    .line 186
    return-void
.end method

.method public setMode(Lcom/itextpdf/text/pdf/qrcode/Mode;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->mode:Lcom/itextpdf/text/pdf/qrcode/Mode;

    .line 174
    return-void
.end method

.method public setNumDataBytes(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 197
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numDataBytes:I

    .line 198
    return-void
.end method

.method public setNumECBytes(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 201
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numECBytes:I

    .line 202
    return-void
.end method

.method public setNumRSBlocks(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 205
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numRSBlocks:I

    .line 206
    return-void
.end method

.method public setNumTotalBytes(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 193
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numTotalBytes:I

    .line 194
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 181
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->version:I

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 143
    .local v0, result:Ljava/lang/StringBuffer;
    const-string v1, "<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->mode:Lcom/itextpdf/text/pdf/qrcode/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->ecLevel:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "\n matrixWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrixWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->maskPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, "\n numTotalBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numTotalBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "\n numDataBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numDataBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, "\n numECBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numECBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 160
    const-string v1, "\n numRSBlocks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->numRSBlocks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    if-nez v1, :cond_0

    .line 163
    const-string v1, "\n matrix: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :goto_0
    const-string v1, ">>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 165
    :cond_0
    const-string v1, "\n matrix:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/QRCode;->matrix:Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/qrcode/ByteMatrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
