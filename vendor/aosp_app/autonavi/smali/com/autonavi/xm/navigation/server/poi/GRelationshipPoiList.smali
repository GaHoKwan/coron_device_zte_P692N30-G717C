.class public Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;
.super Ljava/lang/Object;


# instance fields
.field public lNumberOfRelationshipPOI:I

.field public pRelationshipPOI:[Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;->lNumberOfRelationshipPOI:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoiList;->pRelationshipPOI:[Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoi;

    return-void
.end method
