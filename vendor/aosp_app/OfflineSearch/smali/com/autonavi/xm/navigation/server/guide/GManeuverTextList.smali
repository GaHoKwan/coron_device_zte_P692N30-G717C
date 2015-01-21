.class public Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfManeuver:I

.field public pManeuverText:[Lcom/autonavi/xm/navigation/server/guide/GManeuverText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/guide/GManeuverText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;->nNumberOfManeuver:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/guide/GManeuverTextList;->pManeuverText:[Lcom/autonavi/xm/navigation/server/guide/GManeuverText;

    return-void
.end method
