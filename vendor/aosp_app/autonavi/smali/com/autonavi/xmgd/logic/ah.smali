.class public Lcom/autonavi/xmgd/logic/ah;
.super Lcom/autonavi/xmgd/logic/n;

# interfaces
.implements Lcom/autonavi/xmgd/logic/h;


# static fields
.field private static b:Lcom/autonavi/xmgd/logic/ah;


# instance fields
.field private a:Lcom/autonavi/xmgd/logic/i;

.field private c:Lcom/autonavi/xmgd/naviservice/e;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/n;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/ah;->d:Z

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/ah;->e:Z

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/ah;->f:Z

    iput v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/autonavi/xmgd/logic/n;->f(Z)V

    return-void
.end method

.method private a(IZ)V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ah;->c:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v1, v0, p1

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->lLon:I

    iget v3, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->lLat:I

    invoke-direct {v2, v0, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->szNextRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ah;->a:Lcom/autonavi/xmgd/logic/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ah;->a:Lcom/autonavi/xmgd/logic/i;

    invoke-interface {v1, v2, v0}, Lcom/autonavi/xmgd/logic/i;->a(Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ah;->a:Lcom/autonavi/xmgd/logic/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ah;->a:Lcom/autonavi/xmgd/logic/i;

    invoke-interface {v1, v2, v0}, Lcom/autonavi/xmgd/logic/i;->b(Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j()Lcom/autonavi/xmgd/logic/h;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/ah;->b:Lcom/autonavi/xmgd/logic/ah;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/ah;

    invoke-direct {v0}, Lcom/autonavi/xmgd/logic/ah;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/logic/ah;->b:Lcom/autonavi/xmgd/logic/ah;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/logic/ah;->b:Lcom/autonavi/xmgd/logic/ah;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/xmgd/logic/ah;->a:Lcom/autonavi/xmgd/logic/i;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/ah;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/autonavi/xmgd/logic/ah;->b:Lcom/autonavi/xmgd/logic/ah;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-array v0, v3, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/ah;->c:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v2, v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v0, v0, v1

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    :goto_0
    iput-boolean v3, p0, Lcom/autonavi/xmgd/logic/ah;->d:Z

    iput p1, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/ah;->e:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/ah;->f:Z

    iget v1, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/autonavi/xmgd/logic/ah;->e:Z

    :cond_0
    iget v1, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_1

    iput-boolean v3, p0, Lcom/autonavi/xmgd/logic/ah;->f:Z

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/logic/ah;->a(IZ)V

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "enterShowCross"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/controls/r;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/logic/n;->a(Lcom/autonavi/xmgd/controls/r;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/ah;->c:Lcom/autonavi/xmgd/naviservice/e;

    check-cast p1, Lcom/autonavi/xmgd/logic/i;

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/ah;->a:Lcom/autonavi/xmgd/logic/i;

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    return v0
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/ah;->e:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/ah;->f:Z

    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/ah;->e:Z

    :cond_0
    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/logic/ah;->a(IZ)V

    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public e()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ah;->c:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v3, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v0, v0, v3

    iget v1, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    iput v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    iput-boolean v3, p0, Lcom/autonavi/xmgd/logic/ah;->e:Z

    iput-boolean v3, p0, Lcom/autonavi/xmgd/logic/ah;->f:Z

    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/autonavi/xmgd/logic/ah;->f:Z

    :cond_0
    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/logic/ah;->a(IZ)V

    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/logic/ah;->g:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public f()V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/autonavi/xmgd/logic/ah;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ah;->a:Lcom/autonavi/xmgd/logic/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ah;->a:Lcom/autonavi/xmgd/logic/i;

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ae;

    iget v0, v0, Lcom/autonavi/xmgd/logic/ae;->a:I

    move v1, v2

    :goto_0
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v1, 0x2

    if-le v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ae;

    iget v0, v0, Lcom/autonavi/xmgd/logic/ae;->a:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "showMapBack"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "showCrossBack"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "showCrossBack"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "showCrossBack"

    invoke-virtual {v0, v6, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "showCrossBack"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/ah;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/ah;->e:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/ah;->f:Z

    return v0
.end method
