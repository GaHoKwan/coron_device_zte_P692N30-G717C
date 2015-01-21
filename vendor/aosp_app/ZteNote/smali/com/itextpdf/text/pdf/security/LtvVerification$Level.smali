.class public final enum Lcom/itextpdf/text/pdf/security/LtvVerification$Level;
.super Ljava/lang/Enum;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/security/LtvVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/pdf/security/LtvVerification$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

.field public static final enum CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

.field public static final enum OCSP:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

.field public static final enum OCSP_CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

.field public static final enum OCSP_OPTIONAL_CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    const-string v1, "OCSP"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->OCSP:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    .line 107
    new-instance v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    const-string v1, "CRL"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    .line 111
    new-instance v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    const-string v1, "OCSP_CRL"

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->OCSP_CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    .line 115
    new-instance v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    const-string v1, "OCSP_OPTIONAL_CRL"

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->OCSP_OPTIONAL_CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    sget-object v1, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->OCSP:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->OCSP_CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->OCSP_OPTIONAL_CRL:Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->$VALUES:[Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/pdf/security/LtvVerification$Level;
    .locals 1
    .parameter "name"

    .prologue
    .line 99
    const-class v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/pdf/security/LtvVerification$Level;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->$VALUES:[Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    invoke-virtual {v0}, [Lcom/itextpdf/text/pdf/security/LtvVerification$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/security/LtvVerification$Level;

    return-object v0
.end method
