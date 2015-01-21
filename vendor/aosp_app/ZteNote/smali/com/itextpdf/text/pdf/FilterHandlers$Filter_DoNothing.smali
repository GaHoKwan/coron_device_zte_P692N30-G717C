.class Lcom/itextpdf/text/pdf/FilterHandlers$Filter_DoNothing;
.super Ljava/lang/Object;
.source "FilterHandlers.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/FilterHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter_DoNothing"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_DoNothing;-><init>()V

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
    .line 209
    return-object p1
.end method
