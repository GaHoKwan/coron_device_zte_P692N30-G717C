.class public Lcom/mediatek/bluetooth/map/cache/MessageRequest;
.super Ljava/lang/Object;
.source "MessageRequest.java"


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mAttachement:Z

.field private mCharset:I

.field private mFractionReq:I

.field private mHandle:J

.field private mMasId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mMasId:I

    .line 54
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mCharset:I

    return v0
.end method

.method public getFractionReq()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mFractionReq:I

    return v0
.end method

.method public getHandle()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mHandle:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mHandle:J

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAttachDelivered()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mAttachement:Z

    return v0
.end method

.method public setAttachment(Z)V
    .locals 0
    .parameter "attach"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mAttachement:Z

    .line 95
    return-void
.end method

.method public setHandle(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->mHandle:J

    .line 92
    return-void
.end method
