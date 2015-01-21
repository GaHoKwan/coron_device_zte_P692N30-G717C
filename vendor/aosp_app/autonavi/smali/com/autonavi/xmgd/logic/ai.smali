.class public Lcom/autonavi/xmgd/logic/ai;
.super Lcom/autonavi/xmgd/logic/n;

# interfaces
.implements Lcom/autonavi/xmgd/logic/j;


# static fields
.field private static d:Lcom/autonavi/xmgd/logic/ai;


# instance fields
.field private a:Lcom/autonavi/xmgd/logic/k;

.field private b:Lcom/autonavi/xmgd/naviservice/e;

.field private c:Landroid/os/Handler;

.field private e:Lcom/autonavi/xmgd/e/k;

.field private f:Lcom/autonavi/xmgd/f/z;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/k;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/n;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->c:Landroid/os/Handler;

    iput-object v2, p0, Lcom/autonavi/xmgd/logic/ai;->e:Lcom/autonavi/xmgd/e/k;

    iput-object v2, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    iput-object v2, p0, Lcom/autonavi/xmgd/logic/ai;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/ai;->h:Z

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/autonavi/xmgd/logic/n;->f(Z)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/ai;)Lcom/autonavi/xmgd/logic/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->a:Lcom/autonavi/xmgd/logic/k;

    return-object v0
.end method

.method private a(Lcom/autonavi/xmgd/f/z;)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->c:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/xmgd/logic/al;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/xmgd/logic/al;-><init>(Lcom/autonavi/xmgd/logic/ai;Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static n()Lcom/autonavi/xmgd/logic/j;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/ai;->d:Lcom/autonavi/xmgd/logic/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/ai;

    invoke-direct {v0}, Lcom/autonavi/xmgd/logic/ai;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/logic/ai;->d:Lcom/autonavi/xmgd/logic/ai;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/logic/ai;->d:Lcom/autonavi/xmgd/logic/ai;

    return-object v0
.end method

.method public static o()Lcom/autonavi/xmgd/logic/j;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/ai;->d:Lcom/autonavi/xmgd/logic/ai;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->a:Lcom/autonavi/xmgd/logic/k;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/ai;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/autonavi/xmgd/logic/ai;->d:Lcom/autonavi/xmgd/logic/ai;

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

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->b:Lcom/autonavi/xmgd/naviservice/e;

    check-cast p1, Lcom/autonavi/xmgd/logic/k;

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/ai;->a:Lcom/autonavi/xmgd/logic/k;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/k;Z)V
    .locals 4

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/ai;->h:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[ShowMapLogicImpl]  Multi ShowMap!"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/ai;->h:Z

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/ai;->e:Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->b:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v1, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->c:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xmgd/logic/aj;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/xmgd/logic/aj;-><init>(Lcom/autonavi/xmgd/logic/ai;Lcom/autonavi/xmgd/e/k;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "[ShowMapLogicImpl] showMap"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const-string v2, "[ShowMapLogicImpl] showMap"

    invoke-virtual {v1, v3, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->b:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->k()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMap"

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/autonavi/xmgd/f/z;Z)V
    .locals 6

    const/4 v5, 0x5

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/ai;->h:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[ShowMapLogicImpl]  Multi ShowMap!"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/ai;->h:Z

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->a()[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const/16 v4, 0x396

    iput v4, v3, Lcom/autonavi/xmgd/e/k;->lCategoryID:I

    iget-object v4, p0, Lcom/autonavi/xmgd/logic/ai;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/xmgd/f/z;->c()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->c:Landroid/os/Handler;

    new-instance v2, Lcom/autonavi/xmgd/logic/ak;

    invoke-direct {v2, p0, v0, p2}, Lcom/autonavi/xmgd/logic/ak;-><init>(Lcom/autonavi/xmgd/logic/ai;Lcom/autonavi/xmgd/e/k;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "[ShowMapLogicImpl] showMap"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v2

    const-string v3, "[ShowMapLogicImpl] showMap"

    invoke-virtual {v2, v5, v3}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->b:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1}, Lcom/autonavi/xmgd/naviservice/e;->k()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    const-string v2, "[ShowMapLogicImpl] showMap"

    invoke-virtual {v1, v5, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->b()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/f/z;->a()[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_0

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/logic/ai;->a(Lcom/autonavi/xmgd/f/z;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/f/z;->b()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/f/z;->a()[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/logic/ai;->a(Lcom/autonavi/xmgd/f/z;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public e()Lcom/autonavi/xmgd/f/z;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/f/z;->b()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/f/z;->a()[Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/f/z;->b()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/f/z;->a()[Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j()Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->e:Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->e:Lcom/autonavi/xmgd/e/k;

    return-void
.end method

.method public l()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/ai;->m()V

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

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ai;->b:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v5, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->b:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->l()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v7, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto :goto_1

    :pswitch_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ae;

    iget v0, v0, Lcom/autonavi/xmgd/logic/ae;->a:I

    move v1, v2

    :goto_2
    if-ne v0, v6, :cond_1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v1, 0x3

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ae;

    iget v0, v0, Lcom/autonavi/xmgd/logic/ae;->a:I

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v1, 0x3

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ae;

    iget v0, v0, Lcom/autonavi/xmgd/logic/ae;->a:I

    if-ne v0, v6, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ae;

    iget v0, v0, Lcom/autonavi/xmgd/logic/ae;->a:I

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v5, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v7, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const-string v1, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v5, v1}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "[ShowMapLogicImpl] showMapBack"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public m()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/ai;->h:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/ai;->h:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->a:Lcom/autonavi/xmgd/logic/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ai;->a:Lcom/autonavi/xmgd/logic/k;

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/k;->a()V

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_CURSOR:Lcom/autonavi/xm/navigation/server/GParam;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    iput-object v3, p0, Lcom/autonavi/xmgd/logic/ai;->e:Lcom/autonavi/xmgd/e/k;

    iput-object v3, p0, Lcom/autonavi/xmgd/logic/ai;->f:Lcom/autonavi/xmgd/f/z;

    iput-object v3, p0, Lcom/autonavi/xmgd/logic/ai;->g:Ljava/util/ArrayList;

    goto :goto_0
.end method
