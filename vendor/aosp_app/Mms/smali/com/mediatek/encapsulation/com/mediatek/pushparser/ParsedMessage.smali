.class public abstract Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
.super Ljava/lang/Object;
.source "ParsedMessage.java"


# instance fields
.field private mSenderAddr:Ljava/lang/String;

.field private mServiceCenterAddr:Ljava/lang/String;

.field private m_type:Ljava/lang/String;

.field private simId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->m_type:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getSenderAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->mSenderAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCenterAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->mServiceCenterAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->simId:I

    return v0
.end method

.method public setSenderAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->mSenderAddr:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setServiceCenterAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->mServiceCenterAddr:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->simId:I

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;->m_type:Ljava/lang/String;

    return-object v0
.end method
