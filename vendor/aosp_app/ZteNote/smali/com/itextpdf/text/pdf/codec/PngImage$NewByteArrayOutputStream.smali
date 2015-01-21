.class Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PngImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/PngImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewByteArrayOutputStream"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;->buf:[B

    return-object v0
.end method
