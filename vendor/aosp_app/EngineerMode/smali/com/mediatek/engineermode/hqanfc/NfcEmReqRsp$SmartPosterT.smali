.class public Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;
.super Ljava/lang/Object;
.source "NfcEmReqRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartPosterT"
.end annotation


# static fields
.field public static final COMPANY_LENGTH:I = 0x40

.field public static final COMPANY_URL_LENGTH:I = 0x40

.field public static final CONTENT_SIZE:I = 0x84


# instance fields
.field public mCompany:[B

.field public mCompanyLength:S

.field public mCompanyUrl:[B

.field public mCompanyUrlLength:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompany:[B

    .line 993
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompanyUrl:[B

    .line 994
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 997
    const/16 v2, 0x84

    new-array v0, v2, [B

    .line 998
    .local v0, array:[B
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompany:[B

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompany:[B

    array-length v3, v3

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    iget-short v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompanyLength:S

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->shortToLH(S)[B

    move-result-object v1

    .line 1000
    .local v1, shortArray:[B
    const/16 v2, 0x40

    array-length v3, v1

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1001
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompanyUrl:[B

    array-length v3, v1

    add-int/lit8 v3, v3, 0x40

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompanyUrl:[B

    array-length v4, v4

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1003
    iget-short v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompanyUrlLength:S

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->shortToLH(S)[B

    move-result-object v1

    .line 1004
    array-length v2, v1

    add-int/lit8 v2, v2, 0x40

    add-int/lit8 v2, v2, 0x40

    array-length v3, v1

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1006
    return-object v0
.end method
