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


# virtual methods
.method public toUIPoi()Lcom/autonavi/xmgd/e/k;
    .locals 3

    new-instance v0, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/k;-><init>()V

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lCategoryID:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lMatchCode:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lDistance:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lHilightFlag:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lPoiId:I

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/k;->siELonOff:S

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/k;->siELatOff:S

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lPoiIndex:I

    iget-byte v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    iput-byte v1, v0, Lcom/autonavi/xmgd/e/k;->ucFlag:B

    iget-byte v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    iput-byte v1, v0, Lcom/autonavi/xmgd/e/k;->Reserved:B

    iget-short v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/k;->usNodeId:S

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/GCoord;->clone()Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->b(I)Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    iput-object v2, v0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    iput-object v2, v0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    goto :goto_0
.end method
