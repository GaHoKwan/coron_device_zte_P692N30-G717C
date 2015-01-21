.class public Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;
.super Ljava/lang/Object;
.source "PRAcroForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PRAcroForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldInformation"
.end annotation


# instance fields
.field fieldName:Ljava/lang/String;

.field info:Lcom/itextpdf/text/pdf/PdfDictionary;

.field ref:Lcom/itextpdf/text/pdf/PRIndirectReference;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 0
    .parameter "fieldName"
    .parameter "info"
    .parameter "ref"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->fieldName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->info:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 69
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->ref:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 70
    return-void
.end method


# virtual methods
.method public getInfo()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->info:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->ref:Lcom/itextpdf/text/pdf/PRIndirectReference;

    return-object v0
.end method

.method public getWidgetName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->info:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 78
    .local v0, name:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
