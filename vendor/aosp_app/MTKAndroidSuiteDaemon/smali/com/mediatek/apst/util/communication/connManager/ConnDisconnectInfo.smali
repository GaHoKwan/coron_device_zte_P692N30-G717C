.class public Lcom/mediatek/apst/util/communication/connManager/ConnDisconnectInfo;
.super Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;
.source "ConnDisconnectInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;-><init>(II)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;-><init>(II)V

    .line 67
    return-void
.end method
