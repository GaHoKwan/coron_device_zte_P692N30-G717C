.class public Lcom/autonavi/xmgd/e/k;
.super Lcom/autonavi/xm/navigation/server/poi/GPoi;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/server/poi/GPoi;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/e/k;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/server/poi/GPoi;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/e/k;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->b(I)Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    iput-object v1, p0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    iput-object v1, p0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/xmgd/e/k;
    .locals 3

    new-instance v0, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/k;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->d:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->d:I

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->c:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lCategoryID:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lCategoryID:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lMatchCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lMatchCode:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lDistance:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lDistance:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lHilightFlag:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lHilightFlag:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lPoiId:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lPoiId:I

    iget-short v1, p0, Lcom/autonavi/xmgd/e/k;->siELonOff:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/k;->siELonOff:S

    iget-short v1, p0, Lcom/autonavi/xmgd/e/k;->siELatOff:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/k;->siELatOff:S

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lPoiIndex:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lPoiIndex:I

    iget-byte v1, p0, Lcom/autonavi/xmgd/e/k;->ucFlag:B

    iput-byte v1, v0, Lcom/autonavi/xmgd/e/k;->ucFlag:B

    iget-byte v1, p0, Lcom/autonavi/xmgd/e/k;->Reserved:B

    iput-byte v1, v0, Lcom/autonavi/xmgd/e/k;->Reserved:B

    iget-short v1, p0, Lcom/autonavi/xmgd/e/k;->usNodeId:S

    iput-short v1, v0, Lcom/autonavi/xmgd/e/k;->usNodeId:S

    iget-object v1, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/autonavi/xmgd/e/g;
    .locals 3

    new-instance v0, Lcom/autonavi/xmgd/e/g;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/g;-><init>()V

    new-instance v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-direct {v1}, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;-><init>()V

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v2, p0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iput-object v2, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iget-object v1, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v2, p0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object v2, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v1, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget v2, p0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/autonavi/xmgd/e/k;->lPoiId:I

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
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

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    return-object v0
.end method
