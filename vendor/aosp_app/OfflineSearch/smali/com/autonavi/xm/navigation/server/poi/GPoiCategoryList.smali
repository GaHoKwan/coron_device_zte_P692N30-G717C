.class public Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;
.super Ljava/lang/Object;


# instance fields
.field public lNumberOfCategory:I

.field public pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->lNumberOfCategory:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    return-void
.end method
