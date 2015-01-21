.class Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;
.super Ljava/lang/Object;
.source "PdfImageObject.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/parser/PdfImageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackingFilter"
.end annotation


# instance fields
.field public lastFilterName:Lcom/itextpdf/text/pdf/PdfName;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;->lastFilterName:Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfImageObject$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BLcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)[B
    .locals 0
    .parameter "b"
    .parameter "filterName"
    .parameter "decodeParams"
    .parameter "streamDictionary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$TrackingFilter;->lastFilterName:Lcom/itextpdf/text/pdf/PdfName;

    .line 116
    return-object p1
.end method
