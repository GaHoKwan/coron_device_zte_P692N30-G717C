.class public abstract Lcom/itextpdf/text/pdf/PdfObject;
.super Ljava/lang/Object;
.source "PdfObject.java"


# static fields
.field public static final ARRAY:I = 0x5

.field public static final BOOLEAN:I = 0x1

.field public static final DICTIONARY:I = 0x6

.field public static final INDIRECT:I = 0xa

.field public static final NAME:I = 0x4

.field public static final NOTHING:Ljava/lang/String; = ""

.field public static final NULL:I = 0x8

.field public static final NUMBER:I = 0x2

.field public static final STREAM:I = 0x7

.field public static final STRING:I = 0x3

.field public static final TEXT_PDFDOCENCODING:Ljava/lang/String; = "PDF"

.field public static final TEXT_UNICODE:Ljava/lang/String; = "UnicodeBig"


# instance fields
.field protected bytes:[B

.field protected indRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

.field protected type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    .line 131
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "content"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    .line 143
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->bytes:[B

    .line 144
    return-void
.end method

.method protected constructor <init>(I[B)V
    .locals 0
    .parameter "type"
    .parameter "bytes"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfObject;->bytes:[B

    .line 156
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    .line 157
    return-void
.end method


# virtual methods
.method public canBeInObjStm()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 213
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->bytes:[B

    return-object v0
.end method

.method public getIndRef()Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->indRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    return-object v0
.end method

.method public isArray()Z
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 302
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDictionary()Z
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndirect()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isName()Z
    .locals 2

    .prologue
    .line 332
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber()Z
    .locals 2

    .prologue
    .line 312
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStream()Z
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString()Z
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected setContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->bytes:[B

    .line 261
    return-void
.end method

.method public setIndRef(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 0
    .parameter "indRef"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfObject;->indRef:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 392
    return-void
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->bytes:[B

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->bytes:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 172
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->bytes:[B

    if-nez v0, :cond_0

    .line 182
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->bytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    return v0
.end method
