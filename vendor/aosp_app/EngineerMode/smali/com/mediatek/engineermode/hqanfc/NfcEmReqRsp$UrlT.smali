.class public Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;
.super Ljava/lang/Object;
.source "NfcEmReqRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlT"
.end annotation


# static fields
.field public static final CONTENT_SIZE:I = 0x42

.field public static final DATA_LENGTH:I = 0x40


# instance fields
.field public mUrlData:[B

.field public mUrlDataLength:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;->mUrlData:[B

    .line 1073
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1076
    const/16 v2, 0x42

    new-array v0, v2, [B

    .line 1077
    .local v0, array:[B
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;->mUrlData:[B

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;->mUrlData:[B

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1078
    iget-short v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;->mUrlDataLength:S

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->shortToLH(S)[B

    move-result-object v1

    .line 1079
    .local v1, shortArray:[B
    const/16 v2, 0x40

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1080
    return-object v0
.end method
