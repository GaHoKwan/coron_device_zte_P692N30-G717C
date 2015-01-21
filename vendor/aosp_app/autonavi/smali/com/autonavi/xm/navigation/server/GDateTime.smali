.class public Lcom/autonavi/xm/navigation/server/GDateTime;
.super Ljava/lang/Object;


# instance fields
.field public date:Lcom/autonavi/xm/navigation/server/GDate;

.field public time:Lcom/autonavi/xm/navigation/server/GTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/GDateTime;->date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/GDateTime;->time:Lcom/autonavi/xm/navigation/server/GTime;

    return-void
.end method
