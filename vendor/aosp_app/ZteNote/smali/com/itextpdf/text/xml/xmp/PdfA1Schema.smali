.class public Lcom/itextpdf/text/xml/xmp/PdfA1Schema;
.super Lcom/itextpdf/text/xml/xmp/XmpSchema;
.source "PdfA1Schema.java"


# static fields
.field public static final CONFORMANCE:Ljava/lang/String; = "pdfaid:conformance"

.field public static final DEFAULT_XPATH_ID:Ljava/lang/String; = "pdfaid"

.field public static final DEFAULT_XPATH_URI:Ljava/lang/String; = "http://www.aiim.org/pdfa/ns/id/"

.field public static final PART:Ljava/lang/String; = "pdfaid:part"

.field private static final serialVersionUID:J = 0x498fad9316d0dec8L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "xmlns:pdfaid=\"http://www.aiim.org/pdfa/ns/id/\""

    invoke-direct {p0, v0}, Lcom/itextpdf/text/xml/xmp/XmpSchema;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/xml/xmp/PdfA1Schema;->addPart(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public addConformance(Ljava/lang/String;)V
    .locals 1
    .parameter "conformance"

    .prologue
    .line 80
    const-string v0, "pdfaid:conformance"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/PdfA1Schema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public addPart(Ljava/lang/String;)V
    .locals 1
    .parameter "part"

    .prologue
    .line 72
    const-string v0, "pdfaid:part"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/PdfA1Schema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    return-void
.end method
