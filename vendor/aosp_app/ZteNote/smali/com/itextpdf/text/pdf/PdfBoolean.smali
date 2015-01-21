.class public Lcom/itextpdf/text/pdf/PdfBoolean;
.super Lcom/itextpdf/text/pdf/PdfObject;
.source "PdfBoolean.java"


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean; = null

.field public static final PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean; = null

.field public static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/itextpdf/text/pdf/PdfBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    .line 62
    new-instance v0, Lcom/itextpdf/text/pdf/PdfBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 102
    invoke-direct {p0, v2, p1}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(ILjava/lang/String;)V

    .line 103
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfBoolean;->value:Z

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfBoolean;->value:Z

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/BadPdfFormatException;

    const-string v1, "the.value.has.to.be.true.of.false.instead.of.1"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/BadPdfFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfBoolean;->setContent(Ljava/lang/String;)V

    .line 90
    :goto_0
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfBoolean;->value:Z

    .line 91
    return-void

    .line 88
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfBoolean;->setContent(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfBoolean;->value:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfBoolean;->value:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
