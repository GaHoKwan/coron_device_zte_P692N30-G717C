.class public Lcom/autonavi/xm/navigation/server/map/GRegConfig;
.super Ljava/lang/Object;


# instance fields
.field public eDeviceIDType:Lcom/autonavi/xm/navigation/server/map/GDeviceId;

.field public eRegMode:Lcom/autonavi/xm/navigation/server/map/GRegMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/map/GRegMode;Lcom/autonavi/xm/navigation/server/map/GDeviceId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/map/GRegConfig;->eRegMode:Lcom/autonavi/xm/navigation/server/map/GRegMode;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/map/GRegConfig;->eDeviceIDType:Lcom/autonavi/xm/navigation/server/map/GDeviceId;

    return-void
.end method
