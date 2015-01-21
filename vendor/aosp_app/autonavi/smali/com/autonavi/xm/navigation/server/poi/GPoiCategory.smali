.class public Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;
.super Ljava/lang/Object;


# instance fields
.field public Reserved:S

.field public lCategoryID:I

.field public nNumberOfSubCategory:S

.field public pSubCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

.field public szName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ISSLjava/lang/String;[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->lCategoryID:I

    iput-short p2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->nNumberOfSubCategory:S

    iput-short p3, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->Reserved:S

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->szName:Ljava/lang/String;

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->pSubCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    return-void
.end method
