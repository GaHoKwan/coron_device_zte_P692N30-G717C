.class public Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;
.super Ljava/lang/Object;


# instance fields
.field public sIndex:S

.field public sNumberOfItemToGet:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;->sIndex:S

    iput-short p2, p0, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;->sNumberOfItemToGet:S

    return-void
.end method
