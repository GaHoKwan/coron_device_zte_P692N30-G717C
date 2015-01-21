.class public Lcom/autonavi/xm/navigation/server/map/GPointObject;
.super Ljava/lang/Object;


# static fields
.field public static final POINT_TYPE_VOICE:I = 0x39


# instance fields
.field public cRever:B

.field public cZLevel:B

.field public lType:I

.field public ptName:Lcom/autonavi/xm/navigation/server/GCoord;

.field public ptPnt:Lcom/autonavi/xm/navigation/server/GCoord;

.field public szName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IBBLcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->lType:I

    iput-byte p2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->cZLevel:B

    iput-byte p3, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->cRever:B

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->ptPnt:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->ptName:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->szName:Ljava/lang/String;

    return-void
.end method
