.class final Lcom/itextpdf/awt/PdfGraphics2D$Kid;
.super Ljava/lang/Object;
.source "PdfGraphics2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/PdfGraphics2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Kid"
.end annotation


# instance fields
.field final graphics:Lcom/itextpdf/awt/PdfGraphics2D;

.field final pos:I


# direct methods
.method constructor <init>(ILcom/itextpdf/awt/PdfGraphics2D;)V
    .locals 0
    .parameter "pos"
    .parameter "graphics"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Lcom/itextpdf/awt/PdfGraphics2D$Kid;->pos:I

    .line 153
    iput-object p2, p0, Lcom/itextpdf/awt/PdfGraphics2D$Kid;->graphics:Lcom/itextpdf/awt/PdfGraphics2D;

    .line 154
    return-void
.end method
