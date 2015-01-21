.class public Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public nNumberOfRoad:I

.field public pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    return-void
.end method
