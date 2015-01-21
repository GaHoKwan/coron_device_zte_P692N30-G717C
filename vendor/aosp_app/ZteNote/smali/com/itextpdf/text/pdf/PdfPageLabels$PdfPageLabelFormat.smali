.class public Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;
.super Ljava/lang/Object;
.source "PdfPageLabels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfPageLabels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdfPageLabelFormat"
.end annotation


# instance fields
.field public logicalPage:I

.field public numberStyle:I

.field public physicalPage:I

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0
    .parameter "physicalPage"
    .parameter "numberStyle"
    .parameter "prefix"
    .parameter "logicalPage"

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;->physicalPage:I

    .line 293
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;->numberStyle:I

    .line 294
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;->prefix:Ljava/lang/String;

    .line 295
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfPageLabels$PdfPageLabelFormat;->logicalPage:I

    .line 296
    return-void
.end method
