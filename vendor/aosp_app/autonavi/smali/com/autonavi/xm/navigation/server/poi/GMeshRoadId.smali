.class public Lcom/autonavi/xm/navigation/server/poi/GMeshRoadId;
.super Ljava/lang/Object;


# instance fields
.field public Reserved:S

.field public lMeshNo:I

.field public usMeshRoadID:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ISS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GMeshRoadId;->lMeshNo:I

    iput-short p2, p0, Lcom/autonavi/xm/navigation/server/poi/GMeshRoadId;->usMeshRoadID:S

    iput-short p3, p0, Lcom/autonavi/xm/navigation/server/poi/GMeshRoadId;->Reserved:S

    return-void
.end method
