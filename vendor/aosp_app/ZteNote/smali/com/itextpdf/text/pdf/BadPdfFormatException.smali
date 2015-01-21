.class public Lcom/itextpdf/text/pdf/BadPdfFormatException;
.super Lcom/itextpdf/text/pdf/PdfException;
.source "BadPdfFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x19031e6e794fb702L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfException;-><init>()V

    .line 69
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfException;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method
