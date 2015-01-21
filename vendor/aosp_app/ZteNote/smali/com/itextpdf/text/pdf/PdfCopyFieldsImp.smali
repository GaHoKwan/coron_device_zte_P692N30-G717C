.class Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;
.super Lcom/itextpdf/text/pdf/PdfWriter;
.source "PdfCopyFieldsImp.java"


# static fields
.field protected static final fieldKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final iTextTag:Lcom/itextpdf/text/pdf/PdfName;

.field protected static final widgetKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zero:Ljava/lang/Integer;


# instance fields
.field private calculationOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private calculationOrderRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field closing:Z

.field fieldTree:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/AcroFields;",
            ">;"
        }
    .end annotation
.end field

.field file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field form:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private hasSignature:Z

.field nd:Lcom/itextpdf/text/Document;

.field pageDics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field

.field pageRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field pages2intrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ">;"
        }
    .end annotation
.end field

.field readers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            ">;"
        }
    .end annotation
.end field

.field readers2intrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ">;"
        }
    .end annotation
.end field

.field resources:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private tabOrder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfArray;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field visited:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "_iTextTag_"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->iTextTag:Lcom/itextpdf/text/pdf/PdfName;

    .line 69
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->zero:Ljava/lang/Integer;

    .line 624
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    .line 625
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    .line 627
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 628
    .local v0, one:Ljava/lang/Integer;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->M:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BORDER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STRUCTPARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->H:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->Q:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TU:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MAXLEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LOCK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;-><init>(Ljava/io/OutputStream;C)V

    .line 90
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;C)V
    .locals 2
    .parameter "os"
    .parameter "pdfVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers2intrefs:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pages2intrefs:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->visited:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fields:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldTree:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pageRefs:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pageDics:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->resources:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->closing:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrder:Ljava/util/ArrayList;

    .line 94
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/PdfDocument;->addWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 95
    if-eqz p2, :cond_0

    .line 96
    invoke-super {p0, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->setPdfVersion(C)V

    .line 97
    :cond_0
    new-instance v0, Lcom/itextpdf/text/Document;

    invoke-direct {v0}, Lcom/itextpdf/text/Document;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->nd:Lcom/itextpdf/text/Document;

    .line 98
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->nd:Lcom/itextpdf/text/Document;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Document;->addDocListener(Lcom/itextpdf/text/DocListener;)V

    .line 99
    return-void
.end method

.method private adjustTabOrder(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfNumber;)V
    .locals 7
    .parameter "annots"
    .parameter "ind"
    .parameter "nn"

    .prologue
    const/4 v6, 0x0

    .line 234
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    .line 235
    .local v3, v:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->tabOrder:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 236
    .local v2, t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local v2       #t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 239
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 240
    sget-object v4, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->zero:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->tabOrder:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 261
    :cond_1
    :goto_1
    return-void

    .line 247
    .end local v0           #k:I
    .end local v1           #size:I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 248
    .restart local v1       #size:I
    move v0, v1

    .restart local v0       #k:I
    :goto_2
    if-ltz v0, :cond_3

    .line 249
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v3, :cond_4

    .line 250
    add-int/lit8 v4, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, p2}, Lcom/itextpdf/text/pdf/PdfArray;->add(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 252
    const/4 v1, -0x2

    .line 256
    :cond_3
    const/4 v4, -0x2

    if-eq v1, v4, :cond_1

    .line 257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 258
    invoke-virtual {p1, v6, p2}, Lcom/itextpdf/text/pdf/PdfArray;->add(ILcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 248
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private static getCOName(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PRIndirectReference;)Ljava/lang/String;
    .locals 6
    .parameter "reader"
    .parameter "ref"

    .prologue
    .line 141
    const-string v1, ""

    .line 142
    .local v1, name:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 143
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 144
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    .line 153
    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_1
    return-object v1

    .restart local v2       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    move-object v0, v2

    .line 146
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 147
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v3

    .line 148
    .local v3, t:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v3, :cond_3

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_3
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 152
    .restart local p1
    goto :goto_0
.end method


# virtual methods
.method addDocument(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 8
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isOpenedWithFullPermissions()Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    new-instance v4, Lcom/itextpdf/text/exceptions/BadPasswordException;

    const-string v5, "pdfreader.not.opened.with.owner.password"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->openDoc()V

    .line 116
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    new-instance v2, Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    .end local p1
    .local v2, reader:Lcom/itextpdf/text/pdf/PdfReader;
    move-object p1, v2

    .line 125
    .end local v2           #reader:Lcom/itextpdf/text/pdf/PdfReader;
    .restart local p1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->shuffleSubsetNames()I

    .line 126
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers2intrefs:Ljava/util/HashMap;

    new-instance v5, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v0

    .line 129
    .local v0, len:I
    new-instance v3, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 130
    .local v3, refs:Lcom/itextpdf/text/pdf/IntHashtable;
    const/4 v1, 0x1

    .local v1, p:I
    :goto_1
    if-gt v1, v0, :cond_3

    .line 131
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 132
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfReader;->releasePage(I)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v0           #len:I
    .end local v1           #p:I
    .end local v3           #refs:Lcom/itextpdf/text/pdf/IntHashtable;
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isTampered()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string v5, "the.document.was.reused"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->consolidateNamedDestinations()V

    .line 123
    invoke-virtual {p1, v7}, Lcom/itextpdf/text/pdf/PdfReader;->setTampered(Z)V

    goto :goto_0

    .line 134
    .restart local v0       #len:I
    .restart local v1       #p:I
    .restart local v3       #refs:Lcom/itextpdf/text/pdf/IntHashtable;
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pages2intrefs:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->visited:Ljava/util/HashMap;

    new-instance v5, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fields:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->updateCalculationOrder(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 138
    return-void
.end method

.method addDocument(Lcom/itextpdf/text/pdf/PdfReader;Ljava/util/List;)V
    .locals 4
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, pagesToKeep:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isTampered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    const-string v2, "the.document.was.reused"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 105
    .end local p1
    .local v0, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfReader;->selectPages(Ljava/util/List;)V

    .line 106
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfReader;->setTampered(Z)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->addDocument(Lcom/itextpdf/text/pdf/PdfReader;)V

    goto :goto_0
.end method

.method addPageOffsetToField(Ljava/util/Map;I)V
    .locals 5
    .parameter
    .parameter "pageOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/AcroFields$Item;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, fd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    if-nez p2, :cond_1

    .line 426
    :cond_0
    return-void

    .line 420
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 421
    .local v1, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 422
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 423
    .local v3, p:I
    add-int v4, v3, p2

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->forcePage(II)V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected branchForm(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 25
    .parameter
    .parameter "parent"
    .parameter "fname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            "Ljava/lang/String;",
            ")",
            "Lcom/itextpdf/text/pdf/PdfArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    .local p1, level:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 266
    .local v5, arr:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 267
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 268
    .local v15, name:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 269
    .local v17, obj:Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    .line 270
    .local v11, ind:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v7, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 271
    .local v7, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz p2, :cond_0

    .line 272
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 273
    :cond_0
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v23, Lcom/itextpdf/text/pdf/PdfString;

    const-string v24, "UnicodeBig"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 274
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, fname2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrder:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 276
    .local v6, coidx:I
    if-ltz v6, :cond_1

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrderRefs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/util/HashMap;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 279
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    check-cast v17, Ljava/util/HashMap;

    .end local v17           #obj:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11, v9}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->branchForm(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 280
    invoke-virtual {v5, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto/16 :goto_0

    .restart local v17       #obj:Ljava/lang/Object;
    :cond_2
    move-object/from16 v14, v17

    .line 284
    check-cast v14, Ljava/util/ArrayList;

    .line 285
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 286
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 287
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 288
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 289
    .local v18, page:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pageDics:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 290
    .local v19, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v4

    .line 291
    .local v4, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v4, :cond_3

    .line 292
    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v4           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 293
    .restart local v4       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 295
    :cond_3
    sget-object v22, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->iTextTag:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 296
    .local v16, nn:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v22, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->iTextTag:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v11, v1}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->adjustTabOrder(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfNumber;)V

    .line 321
    .end local v4           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v16           #nn:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v18           #page:I
    .end local v19           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_1
    invoke-virtual {v5, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 322
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 323
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v7, v1, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V

    goto/16 :goto_0

    .line 300
    :cond_4
    new-instance v13, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v13}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 301
    .local v13, kids:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v12, 0x1

    .local v12, k:I
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    .line 302
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 303
    .restart local v18       #page:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pageDics:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 304
    .restart local v19       #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v4

    .line 305
    .restart local v4       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v4, :cond_5

    .line 306
    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v4           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 307
    .restart local v4       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 309
    :cond_5
    new-instance v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 310
    .local v20, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    add-int/lit8 v22, v12, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 311
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 312
    sget-object v22, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->iTextTag:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 313
    .restart local v16       #nn:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v22, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->iTextTag:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v21

    .line 315
    .local v21, wref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->adjustTabOrder(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfNumber;)V

    .line 316
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 317
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V

    .line 301
    add-int/lit8 v12, v12, 0x2

    goto/16 :goto_2

    .line 319
    .end local v4           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v16           #nn:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v18           #page:I
    .end local v19           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #wref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_6
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 326
    .end local v6           #coidx:I
    .end local v7           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #fname2:Ljava/lang/String;
    .end local v11           #ind:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v12           #k:I
    .end local v13           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v14           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v15           #name:Ljava/lang/String;
    .end local v17           #obj:Ljava/lang/Object;
    :cond_7
    return-object v5
.end method

.method public close()V
    .locals 2

    .prologue
    .line 353
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->closing:Z

    if-eqz v1, :cond_0

    .line 354
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->close()V

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->closing:Z

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->closeIt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected closeIt()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_0

    .line 371
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfReader;->removeFields()V

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    :cond_0
    const/4 v8, 0x0

    .local v8, r:I
    :goto_1
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_2

    .line 374
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfReader;

    .line 375
    .local v9, reader:Lcom/itextpdf/text/pdf/PdfReader;
    const/4 v5, 0x1

    .local v5, page:I
    :goto_2
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v12

    if-gt v5, v12, :cond_1

    .line 376
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pageRefs:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->getNewReference(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pageDics:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 373
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 380
    .end local v5           #page:I
    .end local v9           #reader:Lcom/itextpdf/text/pdf/PdfReader;
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->mergeFields()V

    .line 381
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->createAcroForms()V

    .line 382
    const/4 v8, 0x0

    :goto_3
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_4

    .line 383
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfReader;

    .line 384
    .restart local v9       #reader:Lcom/itextpdf/text/pdf/PdfReader;
    const/4 v5, 0x1

    .restart local v5       #page:I
    :goto_4
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v12

    if-gt v5, v12, :cond_3

    .line 385
    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 386
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v9, v5}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->getNewReference(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    .line 387
    .local v6, pageRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->root:Lcom/itextpdf/text/pdf/PdfPages;

    invoke-virtual {v12, v6}, Lcom/itextpdf/text/pdf/PdfPages;->addPageRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    .line 388
    .local v7, parent:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v12, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 389
    const/4 v12, 0x0

    invoke-virtual {p0, v0, v6, v12}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 382
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #pageRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v7           #parent:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 392
    .end local v5           #page:I
    .end local v9           #reader:Lcom/itextpdf/text/pdf/PdfReader;
    :cond_4
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 393
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/IntHashtable;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfReader;

    .line 395
    .restart local v9       #reader:Lcom/itextpdf/text/pdf/PdfReader;
    :try_start_0
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v12

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 396
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 397
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 398
    .local v11, t:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v4

    .line 399
    .local v4, keys:[I
    const/4 v3, 0x0

    :goto_6
    array-length v12, v4

    if-ge v3, v12, :cond_5

    .line 400
    new-instance v10, Lcom/itextpdf/text/pdf/PRIndirectReference;

    aget v12, v4, v3

    invoke-direct {v10, v9, v12}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    .line 401
    .local v10, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    aget v13, v4, v3

    invoke-virtual {v11, v13}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v13

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 406
    .end local v10           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_5
    :try_start_1
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 407
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 409
    :catch_0
    move-exception v12

    goto :goto_5

    .line 405
    .end local v4           #keys:[I
    .end local v11           #t:Lcom/itextpdf/text/pdf/IntHashtable;
    :catchall_0
    move-exception v12

    .line 406
    :try_start_2
    iget-object v13, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 407
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 411
    :goto_7
    throw v12

    .line 414
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/IntHashtable;>;"
    .end local v9           #reader:Lcom/itextpdf/text/pdf/PdfReader;
    :cond_6
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfDocument;->close()V

    .line 415
    return-void

    .line 409
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/IntHashtable;>;"
    .restart local v9       #reader:Lcom/itextpdf/text/pdf/PdfReader;
    :catch_1
    move-exception v13

    goto :goto_7
.end method

.method protected createAcroForms()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 330
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldTree:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->form:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 333
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->form:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->resources:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 334
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->resources:Lcom/itextpdf/text/pdf/PdfDictionary;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v7, v4}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V

    .line 335
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->form:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    const-string v6, "/Helv 0 Tf 0 g "

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 336
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->tabOrder:Ljava/util/HashMap;

    .line 337
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrder:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrderRefs:Ljava/util/ArrayList;

    .line 338
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->form:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldTree:Ljava/util/HashMap;

    const-string v6, ""

    invoke-virtual {p0, v5, v7, v6}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->branchForm(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 339
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->hasSignature:Z

    if-eqz v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->form:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SIGFLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 341
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 342
    .local v0, co:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrderRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 343
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrderRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 344
    .local v2, obj:Ljava/lang/Object;
    instance-of v3, v2, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v3, :cond_3

    .line 345
    check-cast v2, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 342
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 347
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->form:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method

.method createWidgets(Ljava/util/ArrayList;Lcom/itextpdf/text/pdf/AcroFields$Item;)V
    .locals 10
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/text/pdf/AcroFields$Item;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 430
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 432
    .local v5, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 433
    .local v0, dr:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    .line 434
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->resources:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v8, v7}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 435
    :cond_0
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 436
    .local v6, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .local v1, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v4, v1

    .line 437
    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    .line 438
    .local v4, key:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->widgetKeys:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 439
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 441
    .end local v1           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v4           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    sget-object v7, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->iTextTag:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getTabOrder(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 442
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
    .end local v0           #dr:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    return-void
.end method

.method protected getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 4
    .parameter "rootObj"

    .prologue
    .line 542
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;

    move-result-object v0

    .line 543
    .local v0, cat:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->form:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v3, :cond_0

    .line 544
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->form:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    .line 545
    .local v2, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v2           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_0
    return-object v0

    .line 549
    .end local v0           #cat:Lcom/itextpdf/text/pdf/PdfDictionary;
    :catch_0
    move-exception v1

    .line 550
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method protected getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I
    .locals 3
    .parameter "reader"
    .parameter "number"
    .parameter "generation"

    .prologue
    .line 560
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 561
    .local v1, refs:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v0

    .line 562
    .local v0, n:I
    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->getIndirectReferenceNumber()I

    move-result v0

    .line 564
    invoke-virtual {v1, p2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 566
    :cond_0
    return v0
.end method

.method protected getNewReference(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 4
    .parameter "ref"

    .prologue
    const/4 v3, 0x0

    .line 555
    new-instance v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(II)V

    return-object v0
.end method

.method public getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 2
    .parameter "page"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pageRefs:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method getReaderFile(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 1
    .parameter "reader"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    return-object v0
.end method

.method protected isPage(Lcom/itextpdf/text/pdf/PRIndirectReference;)Z
    .locals 3
    .parameter "ref"

    .prologue
    .line 607
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->pages2intrefs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 608
    .local v0, refs:Lcom/itextpdf/text/pdf/IntHashtable;
    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v1

    .line 611
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isVisited(Lcom/itextpdf/text/pdf/PRIndirectReference;)Z
    .locals 3
    .parameter "ref"

    .prologue
    .line 589
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->visited:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 590
    .local v0, refs:Lcom/itextpdf/text/pdf/IntHashtable;
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v1

    .line 593
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isVisited(Lcom/itextpdf/text/pdf/PdfReader;II)Z
    .locals 2
    .parameter "reader"
    .parameter "number"
    .parameter "generation"

    .prologue
    .line 597
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 598
    .local v0, refs:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v1

    return v1
.end method

.method mergeField(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;)V
    .locals 20
    .parameter "name"
    .parameter "item"

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldTree:Ljava/util/HashMap;

    .line 449
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .local v15, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    :goto_1
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 454
    .local v14, s:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 455
    .local v13, obj:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 456
    if-nez v13, :cond_2

    .line 457
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #obj:Ljava/lang/Object;
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 458
    .local v13, obj:Ljava/util/HashMap;
    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v13

    .line 459
    check-cast v11, Ljava/util/HashMap;

    .line 460
    goto :goto_1

    .line 462
    .local v13, obj:Ljava/lang/Object;
    :cond_2
    instance-of v0, v13, Ljava/util/HashMap;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v11, v13

    .line 463
    check-cast v11, Ljava/util/HashMap;

    goto :goto_1

    .line 468
    :cond_3
    instance-of v0, v13, Ljava/util/HashMap;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 470
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    .line 471
    .local v12, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v13, :cond_7

    .line 472
    new-instance v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 473
    .local v5, field:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 474
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->hasSignature:Z

    .line 475
    :cond_4
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .local v2, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v9, v2

    .line 476
    check-cast v9, Lcom/itextpdf/text/pdf/PdfName;

    .line 477
    .local v9, key:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fieldKeys:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 478
    invoke-virtual {v12, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 480
    .end local v2           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v9           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->createWidgets(Ljava/util/ArrayList;Lcom/itextpdf/text/pdf/AcroFields$Item;)V

    .line 483
    invoke-virtual {v11, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v5           #field:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_7
    move-object v10, v13

    .line 486
    check-cast v10, Ljava/util/ArrayList;

    .line 487
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 488
    .restart local v5       #field:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/PdfName;

    .line 489
    .local v16, type1:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/PdfName;

    .line 490
    .local v17, type2:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v17}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 492
    const/4 v6, 0x0

    .line 493
    .local v6, flag1:I
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 494
    .local v3, f1:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 495
    check-cast v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #f1:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v6

    .line 496
    :cond_8
    const/4 v7, 0x0

    .line 497
    .local v7, flag2:I
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 498
    .local v4, f2:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 499
    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v4           #f2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 500
    :cond_9
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 501
    xor-int v18, v6, v7

    const/high16 v19, 0x1

    and-int v18, v18, v19

    if-nez v18, :cond_0

    .line 503
    const/high16 v18, 0x1

    and-int v18, v18, v6

    if-nez v18, :cond_a

    xor-int v18, v6, v7

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_0

    .line 510
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->createWidgets(Ljava/util/ArrayList;Lcom/itextpdf/text/pdf/AcroFields$Item;)V

    goto/16 :goto_0

    .line 506
    :cond_b
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 507
    xor-int v18, v6, v7

    const/high16 v19, 0x2

    and-int v18, v18, v19

    if-eqz v18, :cond_a

    goto/16 :goto_0
.end method

.method mergeFields()V
    .locals 4

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, pageOffset:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 527
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->fields:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v0

    .line 528
    .local v0, fd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->addPageOffsetToField(Ljava/util/Map;I)V

    .line 529
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->mergeWithMaster(Ljava/util/Map;)V

    .line 530
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->readers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v3

    add-int/2addr v2, v3

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v0           #fd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    :cond_0
    return-void
.end method

.method mergeWithMaster(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/AcroFields$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, fd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 519
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 520
    .local v2, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/AcroFields$Item;

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->mergeField(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;)V

    goto :goto_0

    .line 522
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public openDoc()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->nd:Lcom/itextpdf/text/Document;

    invoke-virtual {v0}, Lcom/itextpdf/text/Document;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->nd:Lcom/itextpdf/text/Document;

    invoke-virtual {v0}, Lcom/itextpdf/text/Document;->open()V

    .line 622
    :cond_0
    return-void
.end method

.method propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V
    .locals 10
    .parameter "obj"
    .parameter "refo"
    .parameter "restricted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 231
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local p1
    :cond_1
    instance-of v7, p1, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v7, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 213
    :pswitch_1
    check-cast p1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 214
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfObject;

    .line 215
    .local v5, ob:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v2, v5

    .line 216
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 217
    .local v2, ind:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->isVisited(Lcom/itextpdf/text/pdf/PRIndirectReference;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->isPage(Lcom/itextpdf/text/pdf/PRIndirectReference;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 218
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->getNewReference(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    .line 219
    .local v6, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {p0, v7, v6, p3}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V

    goto :goto_1

    .end local v2           #ind:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v5           #ob:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v6           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local p1
    :pswitch_2
    move-object v0, p1

    .line 194
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 195
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    .line 196
    .local v4, key:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz p3, :cond_4

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 198
    :cond_4
    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 199
    .restart local v5       #ob:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v2, v5

    .line 200
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 201
    .restart local v2       #ind:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->setVisited(Lcom/itextpdf/text/pdf/PRIndirectReference;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->isPage(Lcom/itextpdf/text/pdf/PRIndirectReference;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 202
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->getNewReference(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    .line 203
    .restart local v6       #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {p0, v7, v6, p3}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V

    goto :goto_2

    .line 207
    .end local v2           #ind:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v6           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_5
    invoke-virtual {p0, v5, v8, p3}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V

    goto :goto_2

    .line 223
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local p1
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :cond_6
    invoke-virtual {p0, v5, v8, p3}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->propagate(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)V

    goto/16 :goto_1

    .line 228
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v5           #ob:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local p1
    :pswitch_3
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "reference.pointing.to.reference"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected setVisited(Lcom/itextpdf/text/pdf/PRIndirectReference;)Z
    .locals 5
    .parameter "ref"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->visited:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 577
    .local v0, refs:Lcom/itextpdf/text/pdf/IntHashtable;
    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 578
    goto :goto_0

    :cond_1
    move v1, v2

    .line 580
    goto :goto_0
.end method

.method protected updateCalculationOrder(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 9
    .parameter "reader"

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 163
    .local v2, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 164
    .local v0, acro:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 182
    :cond_0
    return-void

    .line 166
    :cond_1
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->CO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v3

    .line 167
    .local v3, co:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v1

    .line 170
    .local v1, af:Lcom/itextpdf/text/pdf/AcroFields;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 171
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 172
    .local v6, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v7

    if-nez v7, :cond_3

    .line 170
    .end local v6           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .restart local v6       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    check-cast v6, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v6           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {p1, v6}, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->getCOName(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PRIndirectReference;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrder:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 180
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopyFieldsImp;->calculationOrder:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
