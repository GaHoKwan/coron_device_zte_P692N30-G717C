.class public abstract Lcom/zte/zdm/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/a/b;
.implements Lcom/zte/zdm/b/f/c/a;


# instance fields
.field protected a:Lcom/zte/zdm/b/f/e/b;

.field protected b:Ljava/lang/String;

.field protected c:I

.field private d:Lcom/zte/zdm/d/c/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:Lcom/zte/zdm/b/a/t;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->h()Lcom/zte/zdm/b/f/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/a/a;->a:Lcom/zte/zdm/b/f/e/b;

    const-string v0, "zxmdmp"

    iput-object v0, p0, Lcom/zte/zdm/b/a/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/b/a/a;->c:I

    iput-object p1, p0, Lcom/zte/zdm/b/a/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/b/a/a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/b/a/a;->d:Lcom/zte/zdm/d/c/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/a;->f:Ljava/util/List;

    new-instance v0, Lcom/zte/zdm/b/a/t;

    invoke-direct {v0}, Lcom/zte/zdm/b/a/t;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/a;->g:Lcom/zte/zdm/b/a/t;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;Lcom/zte/zdm/b/f/e/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->h()Lcom/zte/zdm/b/f/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/a/a;->a:Lcom/zte/zdm/b/f/e/b;

    const-string v0, "zxmdmp"

    iput-object v0, p0, Lcom/zte/zdm/b/a/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/b/a/a;->c:I

    iput-object p1, p0, Lcom/zte/zdm/b/a/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/b/a/a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/b/a/a;->d:Lcom/zte/zdm/d/c/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/a;->f:Ljava/util/List;

    new-instance v0, Lcom/zte/zdm/b/a/t;

    invoke-direct {v0}, Lcom/zte/zdm/b/a/t;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/a;->g:Lcom/zte/zdm/b/a/t;

    iput-object p4, p0, Lcom/zte/zdm/b/a/a;->a:Lcom/zte/zdm/b/f/e/b;

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8

    const/4 v4, 0x0

    if-nez p1, :cond_1

    const-string v0, "invokeResults:items is null"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/aw;

    new-instance v1, Lcom/zte/zdm/d/c/m;

    const-string v2, "1"

    invoke-direct {v1, v2}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/b/a/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/zdm/b/a/a;->d:Lcom/zte/zdm/d/c/a;

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/zte/zdm/d/c/ai;

    invoke-interface {p1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/zte/zdm/d/c/ai;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/zte/zdm/d/c/aw;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/bn;Lcom/zte/zdm/d/c/bc;[Lcom/zte/zdm/d/c/ai;)V

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/a;->a(Lcom/zte/zdm/d/c/a;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/util/List;)I
    .locals 1

    iput p2, p0, Lcom/zte/zdm/b/a/a;->c:I

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/b/a/a;->a(Ljava/lang/String;I)V

    invoke-direct {p0, p3}, Lcom/zte/zdm/b/a/a;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/zte/zdm/b/a/a;->c:I

    return v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a/a;->g:Lcom/zte/zdm/b/a/t;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/b/a/t;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public abstract a()Z
.end method

.method public b()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/zte/zdm/b/a/a;->f:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/zdm/b/a/a;->g:Lcom/zte/zdm/b/a/t;

    iget-object v3, p0, Lcom/zte/zdm/b/a/a;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/zdm/b/a/a;->d:Lcom/zte/zdm/d/c/a;

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/b/a/t;->a(Ljava/lang/String;Lcom/zte/zdm/d/c/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v0, p0, Lcom/zte/zdm/b/a/a;->g:Lcom/zte/zdm/b/a/t;

    invoke-virtual {v0}, Lcom/zte/zdm/b/a/t;->a()V

    iget-object v0, p0, Lcom/zte/zdm/b/a/a;->f:Ljava/util/List;

    return-object v0
.end method
