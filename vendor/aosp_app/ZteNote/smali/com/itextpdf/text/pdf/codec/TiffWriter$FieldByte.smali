.class public Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldByte;
.super Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldByte"
.end annotation


# direct methods
.method public constructor <init>(I[B)V
    .locals 2
    .parameter "tag"
    .parameter "values"

    .prologue
    .line 221
    const/4 v0, 0x1

    array-length v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 222
    iput-object p2, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldByte;->data:[B

    .line 223
    return-void
.end method
