.class public Lcom/itextpdf/text/pdf/PdfException;
.super Lcom/itextpdf/text/DocumentException;
.source "PdfException.java"


# static fields
.field private static final serialVersionUID:J = 0x5deac15503aa975fL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/itextpdf/text/DocumentException;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method
