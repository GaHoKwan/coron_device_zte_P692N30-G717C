.class Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
.super Ljava/lang/Object;
.source "PdfWriter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PdfCrossReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;",
        ">;"
    }
.end annotation


# instance fields
.field private final generation:I

.field private final offset:J

.field private final refnum:I

.field private final type:I


# direct methods
.method constructor <init>(IIJI)V
    .locals 0
    .parameter "type"
    .parameter "refnum"
    .parameter "offset"
    .parameter "generation"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->type:I

    .line 174
    iput-wide p3, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->offset:J

    .line 175
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    .line 176
    iput p5, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->generation:I

    .line 177
    return-void
.end method

.method constructor <init>(IJ)V
    .locals 1
    .parameter "refnum"
    .parameter "offset"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->type:I

    .line 167
    iput-wide p2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->offset:J

    .line 168
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->generation:I

    .line 170
    return-void
.end method

.method constructor <init>(IJI)V
    .locals 1
    .parameter "refnum"
    .parameter "offset"
    .parameter "generation"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->type:I

    .line 154
    iput-wide p2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->offset:J

    .line 155
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    .line 156
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->generation:I

    .line 157
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 217
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    iget v1, p1, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    iget v1, p1, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    check-cast p1, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->compareTo(Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 225
    instance-of v2, p1, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 226
    check-cast v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    .line 227
    .local v0, other:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 230
    .end local v0           #other:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    :cond_0
    return v1
.end method

.method getRefnum()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->refnum:I

    return v0
.end method

.method public toPdf(ILjava/io/OutputStream;)V
    .locals 4
    .parameter "midSize"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->type:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 207
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 208
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->offset:J

    mul-int/lit8 v2, p1, 0x8

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 209
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->generation:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 210
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->generation:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 211
    return-void
.end method

.method public toPdf(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 190
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "0000000000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->offset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 191
    .local v1, off:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 192
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "00000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->generation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 193
    .local v0, gen:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 195
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->generation:I

    const v4, 0xffff

    if-ne v2, v4, :cond_0

    const-string v2, " f \n"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 197
    return-void

    .line 195
    :cond_0
    const-string v2, " n \n"

    goto :goto_0
.end method
