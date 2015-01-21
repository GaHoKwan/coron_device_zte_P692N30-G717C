.class public abstract Lcom/mediatek/apst/util/communication/common/TransportEntity;
.super Ljava/lang/Object;
.source "TransportEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x43dea2d54b362a0cL


# instance fields
.field private featureID:I

.field private token:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/apst/util/communication/common/TransportEntity;->token:I

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "featureID"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/mediatek/apst/util/communication/common/TransportEntity;->featureID:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/apst/util/communication/common/TransportEntity;->token:I

    .line 67
    return-void
.end method


# virtual methods
.method public getFeatureID()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/mediatek/apst/util/communication/common/TransportEntity;->featureID:I

    return v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/mediatek/apst/util/communication/common/TransportEntity;->token:I

    return v0
.end method

.method public setFeatureID(I)V
    .locals 0
    .parameter "featureID"

    .prologue
    .line 82
    iput p1, p0, Lcom/mediatek/apst/util/communication/common/TransportEntity;->featureID:I

    .line 83
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .parameter "token"

    .prologue
    .line 98
    iput p1, p0, Lcom/mediatek/apst/util/communication/common/TransportEntity;->token:I

    .line 99
    return-void
.end method
