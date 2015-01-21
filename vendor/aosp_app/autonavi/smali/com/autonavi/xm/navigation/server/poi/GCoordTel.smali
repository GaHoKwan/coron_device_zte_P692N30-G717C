.class public Lcom/autonavi/xm/navigation/server/poi/GCoordTel;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public eFlag:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

.field public lTelAreaCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;Lcom/autonavi/xm/navigation/server/GCoord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;->eFlag:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p3, p0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;->lTelAreaCode:I

    return-void
.end method
