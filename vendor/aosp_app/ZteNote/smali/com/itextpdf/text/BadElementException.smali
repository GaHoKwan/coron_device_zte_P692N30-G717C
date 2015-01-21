.class public Lcom/itextpdf/text/BadElementException;
.super Lcom/itextpdf/text/DocumentException;
.source "BadElementException.java"


# static fields
.field private static final serialVersionUID:J = -0xb16a3c06ab032aeL


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
    .line 62
    invoke-direct {p0, p1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method
