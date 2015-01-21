.class public Lcom/autonavi/xmgd/logic/af;
.super Lcom/autonavi/xmgd/logic/n;

# interfaces
.implements Lcom/autonavi/xmgd/logic/d;


# static fields
.field private static f:Lcom/autonavi/xmgd/logic/d;


# instance fields
.field private a:Z

.field private b:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

.field private c:Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;

.field private d:I

.field private e:Lcom/autonavi/xmgd/logic/e;

.field private g:Lcom/autonavi/xmgd/naviservice/e;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/n;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/af;->a:Z

    iput-object v1, p0, Lcom/autonavi/xmgd/logic/af;->b:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iput-object v1, p0, Lcom/autonavi/xmgd/logic/af;->c:Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/logic/af;->d:I

    return-void
.end method

.method public static i()Lcom/autonavi/xmgd/logic/d;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/af;->f:Lcom/autonavi/xmgd/logic/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/af;

    invoke-direct {v0}, Lcom/autonavi/xmgd/logic/af;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/logic/af;->f:Lcom/autonavi/xmgd/logic/d;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/logic/af;->f:Lcom/autonavi/xmgd/logic/d;

    return-object v0
.end method

.method public static j()Lcom/autonavi/xmgd/logic/d;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/af;->f:Lcom/autonavi/xmgd/logic/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    invoke-super {p0}, Lcom/autonavi/xmgd/logic/n;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/autonavi/xmgd/logic/af;->f:Lcom/autonavi/xmgd/logic/d;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    iput p1, p0, Lcom/autonavi/xmgd/logic/af;->d:I

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RoutesManageEx] onEventOccured doAvoid_position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/logic/af;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/e;->b()V

    :cond_1
    return-void
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/af;->c:Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;

    iput-object p2, p0, Lcom/autonavi/xmgd/logic/af;->b:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/e;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/xmgd/controls/r;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/logic/n;->a(Lcom/autonavi/xmgd/controls/r;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/af;->g:Lcom/autonavi/xmgd/naviservice/e;

    check-cast p1, Lcom/autonavi/xmgd/logic/e;

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/e;->a()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/af;->a:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/af;->a:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->e:Lcom/autonavi/xmgd/logic/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/e;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/af;->a:Z

    return-void
.end method

.method public f()Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->c:Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;

    return-object v0
.end method

.method public g()Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/af;->b:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    return-object v0
.end method

.method public h()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    const/4 v1, -0x1

    iget v0, p0, Lcom/autonavi/xmgd/logic/af;->d:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/logic/af;->d:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONCE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/af;->b:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    iget v2, p0, Lcom/autonavi/xmgd/logic/af;->d:I

    aget-object v1, v1, v2

    iget v2, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nChinaRoadID:I

    iput v2, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nIndex:I

    iget v2, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nMeshID:I

    iput v2, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nMeshID:I

    iget-short v1, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nMeshRoadID:S

    iput v1, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nMeshRoadID:I

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/af;->g:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method
