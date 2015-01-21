.class public Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;
.super Ljava/lang/Object;
.source "PdfPublicKeyRecipient.java"


# instance fields
.field private certificate:Ljava/security/cert/Certificate;

.field protected cms:[B

.field private permission:I


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;I)V
    .locals 2
    .parameter "certificate"
    .parameter "permission"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->certificate:Ljava/security/cert/Certificate;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->permission:I

    .line 54
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->cms:[B

    .line 58
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->certificate:Ljava/security/cert/Certificate;

    .line 59
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->permission:I

    .line 60
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->certificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method protected getCms()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->cms:[B

    return-object v0
.end method

.method public getPermission()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->permission:I

    return v0
.end method

.method protected setCms([B)V
    .locals 0
    .parameter "cms"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;->cms:[B

    .line 72
    return-void
.end method
