.class public Lcom/autonavi/xm/navigation/server/poi/GMeshRoadIdList;
.super Ljava/lang/Object;


# instance fields
.field public lNumberOfRoadID:I

.field public pMeshRoadID:[Lcom/autonavi/xm/navigation/server/poi/GMeshRoadId;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/poi/GMeshRoadId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GMeshRoadIdList;->lNumberOfRoadID:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GMeshRoadIdList;->pMeshRoadID:[Lcom/autonavi/xm/navigation/server/poi/GMeshRoadId;

    return-void
.end method
