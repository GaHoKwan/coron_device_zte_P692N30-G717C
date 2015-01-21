.class public Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldAscii;
.super Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldAscii"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 254
    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 255
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 256
    .local v0, b:[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldAscii;->data:[B

    .line 257
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldAscii;->data:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    return-void
.end method
