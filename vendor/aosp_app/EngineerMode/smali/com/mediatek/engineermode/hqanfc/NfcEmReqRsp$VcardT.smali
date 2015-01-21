.class public Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;
.super Ljava/lang/Object;
.source "NfcEmReqRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcardT"
.end annotation


# static fields
.field public static final ADDRESS_LENGTH:I = 0x80

.field public static final CITY_LENGTH:I = 0x40

.field public static final COMPANY_LENGTH:I = 0x40

.field public static final COMPANY_URL_LENGTH:I = 0x40

.field public static final CONTENT_SIZE:I = 0x240

.field public static final EMAIL_LENGTH:I = 0x40

.field public static final NAME_LENGTH:I = 0x40

.field public static final POSTAL_CODE_LENGTH:I = 0x20

.field public static final TEL_LENGTH:I = 0x20

.field public static final TITLEP_LENGTH:I = 0x40


# instance fields
.field public mAddress:[B

.field public mCity:[B

.field public mCompany:[B

.field public mCompanyUrl:[B

.field public mEmail:[B

.field public mName:[B

.field public mPostalCode:[B

.field public mTel:[B

.field public mTitlep:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0x40

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mName:[B

    .line 1034
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mCompany:[B

    .line 1035
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mTitlep:[B

    .line 1036
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mTel:[B

    .line 1037
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mEmail:[B

    .line 1038
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mAddress:[B

    .line 1039
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mPostalCode:[B

    .line 1040
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mCity:[B

    .line 1041
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$VcardT;->mCompanyUrl:[B

    .line 1042
    return-void
.end method
