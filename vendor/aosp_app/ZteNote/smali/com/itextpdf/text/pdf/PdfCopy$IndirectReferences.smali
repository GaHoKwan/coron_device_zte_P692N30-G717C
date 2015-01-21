.class Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
.super Ljava/lang/Object;
.source "PdfCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndirectReferences"
.end annotation


# instance fields
.field hasCopied:Z

.field theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->hasCopied:Z

    .line 75
    return-void
.end method


# virtual methods
.method getCopied()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->hasCopied:Z

    return v0
.end method

.method getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method setCopied()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->hasCopied:Z

    return-void
.end method
