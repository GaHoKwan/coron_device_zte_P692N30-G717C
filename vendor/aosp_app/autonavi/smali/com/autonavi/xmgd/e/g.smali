.class public Lcom/autonavi/xmgd/e/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getStringTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/e/g;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/e/g;->d:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/g;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/xmgd/e/k;
    .locals 2

    const-string v0, "chenwei.GUserSafePOI"

    const-string v1, "toGPoi()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/k;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/e/g;)Z
    .locals 2

    iget-object v0, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->isSame(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Lcom/autonavi/xmgd/e/g;
    .locals 2

    const-string v0, "chenwei.GUserSafePOI"

    const-string v1, "clone()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/autonavi/xmgd/e/g;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/g;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xmgd/e/g;->d:I

    iput v1, v0, Lcom/autonavi/xmgd/e/g;->d:I

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->clone()Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/e/g;->b()Lcom/autonavi/xmgd/e/g;

    move-result-object v0

    return-object v0
.end method
