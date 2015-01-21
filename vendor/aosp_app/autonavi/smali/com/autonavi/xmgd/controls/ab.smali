.class public Lcom/autonavi/xmgd/controls/ab;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/xmgd/controls/ab;


# instance fields
.field private b:Landroid/os/Bundle;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/controls/aa;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:[Lcom/autonavi/xmgd/e/k;

.field private g:Lcom/autonavi/xmgd/e/k;

.field private h:Lcom/autonavi/xmgd/e/g;

.field private i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/autonavi/xmgd/e/c;

.field private k:Landroid/os/Bundle;

.field private l:Landroid/os/Bundle;

.field private m:Landroid/os/Bundle;

.field private n:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/controls/ab;->a:Lcom/autonavi/xmgd/controls/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xmgd/controls/ab;->d:Ljava/util/ArrayList;

    iput v0, p0, Lcom/autonavi/xmgd/controls/ab;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/xmgd/controls/ab;->f:[Lcom/autonavi/xmgd/e/k;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xmgd/plugin/PluginManager;->getManager(Landroid/content/Context;)Lcom/autonavi/xmgd/plugin/PluginManager;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/plugin/PluginManager;->queryPlugin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->load(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/autonavi/xmgd/controls/aa;

    invoke-direct {v5, v4, v0}, Lcom/autonavi/xmgd/controls/aa;-><init>(ILcom/autonavi/xmgd/plugin/PluginWrapper;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/controls/ab;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/controls/ab;->a:Lcom/autonavi/xmgd/controls/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/controls/ab;

    invoke-direct {v0}, Lcom/autonavi/xmgd/controls/ab;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/controls/ab;->a:Lcom/autonavi/xmgd/controls/ab;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/controls/ab;->a:Lcom/autonavi/xmgd/controls/ab;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/controls/ab;->e:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->b:Landroid/os/Bundle;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->j:Lcom/autonavi/xmgd/e/c;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->h:Lcom/autonavi/xmgd/e/g;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->g:Lcom/autonavi/xmgd/e/k;

    return-void
.end method

.method public a([Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->f:[Lcom/autonavi/xmgd/e/k;

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->c:Landroid/os/Bundle;

    return-void
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/controls/aa;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->k:Landroid/os/Bundle;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/controls/ab;->e:I

    return v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->l:Landroid/os/Bundle;

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->m:Landroid/os/Bundle;

    return-void
.end method

.method public f()[Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->f:[Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->f:[Lcom/autonavi/xmgd/e/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->f:[Lcom/autonavi/xmgd/e/k;

    array-length v0, v0

    goto :goto_0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ab;->n:Landroid/os/Bundle;

    return-void
.end method

.method public h()Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->g:Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method public i()Lcom/autonavi/xmgd/e/g;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->h:Lcom/autonavi/xmgd/e/g;

    return-object v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/autonavi/xmgd/e/c;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->j:Lcom/autonavi/xmgd/e/c;

    return-object v0
.end method

.method public m()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->k:Landroid/os/Bundle;

    return-object v0
.end method

.method public n()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->l:Landroid/os/Bundle;

    return-object v0
.end method

.method public o()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public p()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ab;->n:Landroid/os/Bundle;

    return-object v0
.end method
