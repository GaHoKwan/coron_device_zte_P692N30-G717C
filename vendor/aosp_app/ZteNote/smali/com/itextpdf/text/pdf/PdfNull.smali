.class public Lcom/itextpdf/text/pdf/PdfNull;
.super Lcom/itextpdf/text/pdf/PdfObject;
.source "PdfNull.java"


# static fields
.field private static final CONTENT:Ljava/lang/String; = "null"

.field public static final PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNull;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfNull;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const/16 v0, 0x8

    const-string v1, "null"

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(ILjava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "null"

    return-object v0
.end method
