.class public Lcom/autonavi/xm/navigation/server/map/GDisplayPoiPriority;
.super Ljava/lang/Object;


# instance fields
.field ePoiDisplayLevel:Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

.field nCategory:I


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/map/GDisplayPoiPriority;->ePoiDisplayLevel:Lcom/autonavi/xm/navigation/server/map/GPoiDisplayLevel;

    iput p2, p0, Lcom/autonavi/xm/navigation/server/map/GDisplayPoiPriority;->nCategory:I

    return-void
.end method
