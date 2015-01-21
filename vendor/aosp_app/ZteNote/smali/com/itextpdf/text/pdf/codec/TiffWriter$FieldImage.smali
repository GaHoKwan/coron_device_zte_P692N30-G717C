.class public Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldImage;
.super Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldImage"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .parameter "values"

    .prologue
    .line 243
    const/16 v0, 0x111

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 244
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/TiffWriter$FieldImage;->data:[B

    .line 245
    return-void
.end method
