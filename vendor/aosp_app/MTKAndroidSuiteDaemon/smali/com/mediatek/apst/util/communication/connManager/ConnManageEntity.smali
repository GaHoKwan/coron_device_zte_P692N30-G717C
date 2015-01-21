.class public Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;
.super Lcom/mediatek/apst/util/communication/common/TransportEntity;
.source "ConnManageEntity.java"


# static fields
.field public static final ConnManageFeatureID:I = 0x0

.field public static final connection_status_exception:I = -0x1

.field public static final connection_status_failed:I = 0x0

.field public static final connection_status_success:I = 0x1

.field public static final disconnect_info_id:I = 0x0

.field public static final expt_info_id:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private infoID:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/communication/common/TransportEntity;-><init>(I)V

    .line 108
    iput v1, p0, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;->infoID:I

    .line 109
    iput v1, p0, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;->status:I

    .line 110
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "infoID"
    .parameter "status"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/communication/common/TransportEntity;-><init>(I)V

    .line 123
    iput p1, p0, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;->infoID:I

    .line 124
    iput p2, p0, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;->status:I

    .line 125
    return-void
.end method


# virtual methods
.method public getInfoID()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;->infoID:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/apst/util/communication/connManager/ConnManageEntity;->status:I

    return v0
.end method
