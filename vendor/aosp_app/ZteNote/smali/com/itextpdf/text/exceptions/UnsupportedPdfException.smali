.class public Lcom/itextpdf/text/exceptions/UnsupportedPdfException;
.super Lcom/itextpdf/text/exceptions/InvalidPdfException;
.source "UnsupportedPdfException.java"


# static fields
.field private static final serialVersionUID:J = 0x1e43a1882e229d34L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method
