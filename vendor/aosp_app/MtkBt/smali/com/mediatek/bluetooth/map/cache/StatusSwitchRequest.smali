.class public Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;
.super Ljava/lang/Object;
.source "StatusSwitchRequest.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mHandle:J

.field private mIndicator:I

.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->mHandle:J

    return-wide v0
.end method

.method public getIndicator()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->mIndicator:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->mValue:I

    return v0
.end method

.method public setHandle(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->mHandle:J

    .line 60
    return-void
.end method

.method public setIndicator(I)V
    .locals 0
    .parameter "indicator"

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->mIndicator:I

    .line 63
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 65
    iput p1, p0, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->mValue:I

    .line 66
    return-void
.end method
