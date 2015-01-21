.class public Lcom/itextpdf/text/pdf/parser/InlineImageInfo;
.super Ljava/lang/Object;
.source "InlineImageInfo.java"


# instance fields
.field private final imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private final samples:[B


# direct methods
.method public constructor <init>([BLcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "samples"
    .parameter "imageDictionary"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/InlineImageInfo;->samples:[B

    .line 58
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/InlineImageInfo;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 59
    return-void
.end method


# virtual methods
.method public getImageDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/InlineImageInfo;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getSamples()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/InlineImageInfo;->samples:[B

    return-object v0
.end method
