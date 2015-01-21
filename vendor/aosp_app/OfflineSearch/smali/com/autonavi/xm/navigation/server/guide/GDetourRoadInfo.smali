.class public Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

.field public StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

.field public eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public nIndex:I

.field public nMeshID:I

.field public nMeshRoadID:I

.field public szRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILcom/autonavi/xm/navigation/server/GCoord;ILcom/autonavi/xm/navigation/server/GDateTime;Lcom/autonavi/xm/navigation/server/GDateTime;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nIndex:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nMeshID:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nMeshRoadID:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {p5}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->szRoadName:Ljava/lang/String;

    return-void
.end method
