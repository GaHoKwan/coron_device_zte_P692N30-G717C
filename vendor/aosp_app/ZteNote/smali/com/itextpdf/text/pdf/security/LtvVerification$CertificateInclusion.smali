.class public final enum Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;
.super Ljava/lang/Enum;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/security/LtvVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertificateInclusion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

.field public static final enum NO:Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

.field public static final enum YES:Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;->YES:Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    .line 144
    new-instance v0, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;->NO:Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    sget-object v1, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;->YES:Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;->NO:Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;->$VALUES:[Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

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
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    const-class v0, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;->$VALUES:[Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    invoke-virtual {v0}, [Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/security/LtvVerification$CertificateInclusion;

    return-object v0
.end method