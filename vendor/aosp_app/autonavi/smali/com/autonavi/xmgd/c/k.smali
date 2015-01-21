.class public Lcom/autonavi/xmgd/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/xmgd/e/k;
    .locals 3

    new-instance v0, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/k;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->b:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xmgd/c/k;->d:I

    iput v1, v0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szTel:Ljava/lang/String;

    iget-object v1, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, p0, Lcom/autonavi/xmgd/c/k;->b:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, p0, Lcom/autonavi/xmgd/c/k;->c:I

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/c/k;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->h:Ljava/lang/String;

    goto :goto_1
.end method
