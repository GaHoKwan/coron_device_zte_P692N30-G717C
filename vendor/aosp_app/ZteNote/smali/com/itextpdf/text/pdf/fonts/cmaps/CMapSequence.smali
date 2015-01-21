.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;
.super Ljava/lang/Object;
.source "CMapSequence.java"


# instance fields
.field public len:I

.field public off:I

.field public seq:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .parameter "seq"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->seq:[B

    .line 56
    iput p2, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->off:I

    .line 57
    iput p3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;->len:I

    .line 58
    return-void
.end method
