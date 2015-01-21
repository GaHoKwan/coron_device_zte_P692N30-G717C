.class public Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;
.super Ljava/lang/Object;
.source "NfcEmReqRsp.java"

# interfaces
.implements Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$RawOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcEmVersionRsp"
.end annotation


# static fields
.field public static final CONTENT_SIZE:I = 0x17

.field private static final DATA_LENGTH:I = 0x13


# instance fields
.field public mFwVersion:I

.field public mHwVersion:I

.field public mMwVersion:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x13

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;->mMwVersion:[B

    .line 33
    return-void
.end method


# virtual methods
.method public getContentSize()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x17

    return v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    const v4, 0xffff

    .line 37
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;->mMwVersion:[B

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 38
    invoke-static {p1}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->getByteArr(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->byteToInt([B)I

    move-result v0

    .line 39
    .local v0, version:I
    and-int v1, v0, v4

    iput v1, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;->mFwVersion:I

    .line 40
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v4

    iput v1, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;->mHwVersion:I

    .line 41
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;->mMwVersion:[B

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 46
    iget v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;->mFwVersion:I

    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->intToLH(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 47
    iget v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVersionRsp;->mHwVersion:I

    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->intToLH(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 48
    return-void
.end method
