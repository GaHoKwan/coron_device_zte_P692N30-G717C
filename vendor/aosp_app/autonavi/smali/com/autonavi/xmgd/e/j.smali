.class public Lcom/autonavi/xmgd/e/j;
.super Lcom/autonavi/xmgd/e/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/e/k;-><init>()V

    return-void
.end method

.method public static a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/j;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/xmgd/e/j;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/j;-><init>()V

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v3, p0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lDistance:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lDistance:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lAdminCode:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lPoiId:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lPoiId:I

    iget-short v1, p0, Lcom/autonavi/xmgd/e/k;->siELonOff:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/j;->siELonOff:S

    iget-short v1, p0, Lcom/autonavi/xmgd/e/k;->siELatOff:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/j;->siELatOff:S

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lPoiIndex:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lPoiIndex:I

    iget-short v1, p0, Lcom/autonavi/xmgd/e/k;->usNodeId:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/j;->usNodeId:S

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lCategoryID:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lCategoryID:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lHilightFlag:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lHilightFlag:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lMatchCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lMatchCode:I

    iget-byte v1, p0, Lcom/autonavi/xmgd/e/k;->Reserved:B

    iput-byte v1, v0, Lcom/autonavi/xmgd/e/j;->Reserved:B

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szTel:Ljava/lang/String;

    iget-byte v1, p0, Lcom/autonavi/xmgd/e/k;->ucFlag:B

    iput-byte v1, v0, Lcom/autonavi/xmgd/e/j;->ucFlag:B

    iget-short v1, p0, Lcom/autonavi/xmgd/e/k;->usNodeId:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/j;->usNodeId:S

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lPoiId:I

    if-nez v1, :cond_2

    const-string v1, ""

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/autonavi/xmgd/e/k;->lPoiId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/autonavi/xmgd/e/j;
    .locals 4

    new-instance v0, Lcom/autonavi/xmgd/e/j;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/j;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/j;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->c:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xmgd/e/j;->d:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->d:I

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v3, p0, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, p0, Lcom/autonavi/xmgd/e/j;->lDistance:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lDistance:I

    iget v1, p0, Lcom/autonavi/xmgd/e/j;->lAdminCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lAdminCode:I

    iget v1, p0, Lcom/autonavi/xmgd/e/j;->lPoiId:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lPoiId:I

    iget-short v1, p0, Lcom/autonavi/xmgd/e/j;->siELonOff:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/j;->siELonOff:S

    iget-short v1, p0, Lcom/autonavi/xmgd/e/j;->siELatOff:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/j;->siELatOff:S

    iget v1, p0, Lcom/autonavi/xmgd/e/j;->lPoiIndex:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lPoiIndex:I

    iget-short v1, p0, Lcom/autonavi/xmgd/e/j;->usNodeId:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/j;->usNodeId:S

    iget v1, p0, Lcom/autonavi/xmgd/e/j;->lCategoryID:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lCategoryID:I

    iget v1, p0, Lcom/autonavi/xmgd/e/j;->lHilightFlag:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lHilightFlag:I

    iget v1, p0, Lcom/autonavi/xmgd/e/j;->lMatchCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lMatchCode:I

    iget-byte v1, p0, Lcom/autonavi/xmgd/e/j;->Reserved:B

    iput-byte v1, v0, Lcom/autonavi/xmgd/e/j;->Reserved:B

    iget-object v1, p0, Lcom/autonavi/xmgd/e/j;->szAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/j;->szName:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/j;->szTel:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szTel:Ljava/lang/String;

    iget-byte v1, p0, Lcom/autonavi/xmgd/e/j;->ucFlag:B

    iput-byte v1, v0, Lcom/autonavi/xmgd/e/j;->ucFlag:B

    iget-short v1, p0, Lcom/autonavi/xmgd/e/j;->usNodeId:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/j;->usNodeId:S

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/e/j;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v3, p1, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v3, p1, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/e/j;->szAddr:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/xmgd/e/j;->szAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/e/j;->szName:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/xmgd/e/j;->szName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/e/j;->szTel:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/xmgd/e/j;->szTel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
