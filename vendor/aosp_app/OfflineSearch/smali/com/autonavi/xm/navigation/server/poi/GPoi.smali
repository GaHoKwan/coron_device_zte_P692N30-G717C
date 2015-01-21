.class public Lcom/autonavi/xm/navigation/server/poi/GPoi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public Reserved:B

.field public lAdminCode:I

.field public lCategoryID:I

.field public lDistance:I

.field public lHilightFlag:I

.field public lMatchCode:I

.field public lPoiId:I

.field public lPoiIndex:I

.field public siELatOff:S

.field public siELonOff:S

.field public szAddr:Ljava/lang/String;

.field public szName:Ljava/lang/String;

.field public szTel:Ljava/lang/String;

.field public ucFlag:B

.field public usNodeId:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/GCoord;IIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    iput p6, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    iput p7, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    iput-short p8, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    iput-short p9, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    iput-object p10, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    iput-object p11, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    iput-object p12, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    iput p13, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    move/from16 v0, p14

    iput-byte v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    move/from16 v0, p15

    iput-byte v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v0, p16

    iput-short v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    return-void
.end method

.method private static clone(Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/poi/GPoi;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    :goto_1
    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    iget-short v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    iput-short v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    iget-short v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    iput-short v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    iget v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    iput v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    iget-byte v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    iput-byte v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    iget-byte v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    iput-byte v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    iget-short v0, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    iput-short v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iput v1, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    goto :goto_1
.end method
