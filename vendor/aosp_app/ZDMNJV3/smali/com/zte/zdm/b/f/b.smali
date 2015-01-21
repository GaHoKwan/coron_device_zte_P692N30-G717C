.class public Lcom/zte/zdm/b/f/b;
.super Lcom/zte/zdm/b/f/c;

# interfaces
.implements Lcom/zte/zdm/b/f/h/c;


# static fields
.field private static final g:Lcom/zte/zdm/b/f/b/d;


# instance fields
.field private d:Lcom/zte/zdm/b/f/h/d;

.field private e:I

.field private f:Lcom/zte/zdm/b/f/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/b/f/b/d;->a()Lcom/zte/zdm/b/f/b/d;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/b/f/b;->g:Lcom/zte/zdm/b/f/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/f/c;-><init>()V

    new-instance v0, Lcom/zte/zdm/b/f/g/a;

    invoke-direct {v0, p0}, Lcom/zte/zdm/b/f/g/a;-><init>(Lcom/zte/zdm/b/f/c;)V

    iput-object v0, p0, Lcom/zte/zdm/b/f/b;->f:Lcom/zte/zdm/b/f/g/a;

    return-void
.end method

.method private a(Lcom/zte/zdm/b/f/d;Lcom/zte/zdm/b/f/c/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-interface {p2, v0}, Lcom/zte/zdm/b/f/c/b;->a(Lcom/zte/zdm/b/f/d/f;)V

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-direct {p0, v0, p2}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;Lcom/zte/zdm/b/f/c/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/zte/zdm/b/f/d;Ljava/util/List;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0, p3}, Lcom/zte/zdm/b/f/d/f;->c(I)Lcom/zte/zdm/d/c/c/b;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/c/b;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v0, v3, p3}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Lcom/zte/zdm/b/f/d;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/c/b;

    new-instance v2, Lcom/zte/zdm/b/f/d;

    invoke-direct {v2}, Lcom/zte/zdm/b/f/d;-><init>()V

    invoke-static {v0}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/d/c/c/b;)Lcom/zte/zdm/b/f/d/f;

    move-result-object v3

    new-instance v4, Lcom/zte/zdm/b/f/d/a;

    const/16 v5, 0x3f

    invoke-direct {v4, v5}, Lcom/zte/zdm/b/f/d/a;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/b/f/d/a;)V

    invoke-virtual {v2, v3}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {v3}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/c/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/zte/zdm/b/f/b;->a(Ljava/util/List;Lcom/zte/zdm/b/f/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d/b;
    .locals 1

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->l()Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->c()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/f/b;->c(Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/b;->j(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;
    .locals 6

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/b;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/16 v0, 0x2f

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/zte/zdm/b/f/b;->a(Ljava/lang/String;Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Lcom/zte/zdm/b/f/d;

    invoke-direct {v2}, Lcom/zte/zdm/b/f/d;-><init>()V

    invoke-direct {p0, v3}, Lcom/zte/zdm/b/f/b;->k(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    new-instance v4, Lcom/zte/zdm/b/f/d/a;

    const/16 v5, 0x3f

    invoke-direct {v4, v5}, Lcom/zte/zdm/b/f/d/a;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/b/f/d/a;)V

    invoke-virtual {v2, v3}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/d;

    check-cast v0, Lcom/zte/zdm/b/f/d/d;

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/d;->a(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private k(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/f;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/zte/zdm/b/f/d/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/g;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "zcc_tree tasktree opening"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/b/f/f/d;->a()Lcom/zte/zdm/b/f/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/f/c;->a()Lcom/zte/zdm/b/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/c;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/f/b;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getrootelement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/b;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/f/b;->e:I

    return-void
.end method

.method public a(Lcom/zte/zdm/b/f/h/d;)V
    .locals 0

    invoke-static {p1}, Lcom/zte/zdm/g/a;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zte/zdm/b/f/b;->d:Lcom/zte/zdm/b/f/h/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/zte/zdm/b/f/b;->d:Lcom/zte/zdm/b/f/h/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    const/16 v3, 0x8

    invoke-interface {v2, v0, v3}, Lcom/zte/zdm/b/f/h/d;->a(Lcom/zte/zdm/b/f/d/f;I)V

    iget v0, p0, Lcom/zte/zdm/b/f/b;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/b/f/b;->f:Lcom/zte/zdm/b/f/g/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/g/a;->e()Lcom/zte/zdm/b/f/g/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/f/g/c;->a(Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->c()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/f/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/zte/zdm/b/f/c/b;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/zte/zdm/b/f/b;->d:Lcom/zte/zdm/b/f/h/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/zte/zdm/b/f/h/d;->a(Lcom/zte/zdm/b/f/d/f;I)V

    invoke-direct {p0, v1, p2}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;Lcom/zte/zdm/b/f/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/zte/zdm/b/f/d/f;)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x1a2

    const-string v2, "node already exists"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/b;->i(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/f/b;->d:Lcom/zte/zdm/b/f/h/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-interface {v2, v0, v3}, Lcom/zte/zdm/b/f/h/d;->a(Lcom/zte/zdm/b/f/d/f;I)V

    iget v0, p0, Lcom/zte/zdm/b/f/b;->e:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/b/f/b;->f:Lcom/zte/zdm/b/f/g/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/g/a;->e()Lcom/zte/zdm/b/f/g/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/zte/zdm/b/f/g/c;->a(Ljava/lang/String;Z)Z

    :cond_1
    new-instance v2, Lcom/zte/zdm/b/f/d;

    invoke-direct {v2}, Lcom/zte/zdm/b/f/d;-><init>()V

    invoke-virtual {v2, p2}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/d;

    check-cast v0, Lcom/zte/zdm/b/f/d/d;

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/zte/zdm/d/c/c/a;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/zte/zdm/b/f/b;->a(Ljava/util/List;Lcom/zte/zdm/b/f/d;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "add tnds error..."

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x1f4

    const-string v2, "create node failed..."

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/zte/zdm/b/f/b;->d:Lcom/zte/zdm/b/f/h/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    const/16 v3, 0x10

    invoke-interface {v2, v0, v3}, Lcom/zte/zdm/b/f/h/d;->a(Lcom/zte/zdm/b/f/d/f;I)V

    :try_start_0
    sget-object v2, Lcom/zte/zdm/b/f/b;->g:Lcom/zte/zdm/b/f/b/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/b/f/b/d;->a(Lcom/zte/zdm/b/f/d/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/zdm/b/f/b;->g:Lcom/zte/zdm/b/f/b/d;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/zte/zdm/b/f/b/d;->a(Ljava/lang/String;[BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x195

    const-string v2, "command not allowed"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->b(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x1f4

    const-string v2, "source node can not be clone..."

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/zte/zdm/b/f/d/f;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p2, v0}, Lcom/zte/zdm/b/f/b;->a(Ljava/lang/String;Lcom/zte/zdm/b/f/d/f;)V

    :goto_0
    iget v0, p0, Lcom/zte/zdm/b/f/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/b/f/b;->f:Lcom/zte/zdm/b/f/g/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/g/a;->e()Lcom/zte/zdm/b/f/g/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/b/f/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/zte/zdm/b/f/b;->b(Ljava/lang/String;Lcom/zte/zdm/b/f/d/f;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/f;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/zte/zdm/b/f/b;->d:Lcom/zte/zdm/b/f/h/d;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/zte/zdm/b/f/h/d;->a(Lcom/zte/zdm/b/f/d/f;I)V

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->d()[B

    :cond_1
    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    return-object v0
.end method

.method public b()V
    .locals 1

    const-string v0, "zcc_tree tasktree closing"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/b;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/b/f/f/d;->a()Lcom/zte/zdm/b/f/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/b/f/f/c;->a(Lcom/zte/zdm/b/f/c;)V

    invoke-static {}, Lcom/zte/zdm/b/f/f/d;->a()Lcom/zte/zdm/b/f/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/f/c;->b()V

    const-string v0, "clear tree"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/b;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/f/b;->b(Lcom/zte/zdm/b/f/d;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/zte/zdm/b/f/d/f;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/b;->d:Lcom/zte/zdm/b/f/h/d;

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    const/4 v3, 0x4

    invoke-interface {v1, v0, v3}, Lcom/zte/zdm/b/f/h/d;->a(Lcom/zte/zdm/b/f/d/f;I)V

    iget v0, p0, Lcom/zte/zdm/b/f/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/b/f/b;->f:Lcom/zte/zdm/b/f/g/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/g/a;->e()Lcom/zte/zdm/b/f/g/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/b/f/g/c;->a(Ljava/lang/String;Lcom/zte/zdm/b/f/d/f;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->l()Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/b/f/d/b;)V

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->m()Lcom/zte/zdm/b/f/d/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/b/f/d/a;)V

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zte/zdm/b/f/d/f;->f(Ljava/lang/String;)V

    instance-of v0, p2, Lcom/zte/zdm/b/f/d/e;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/zte/zdm/b/f/d/e;

    move-object v1, p2

    check-cast v1, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/d/e;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/e;->a([B)V

    :cond_2
    invoke-virtual {v2, p2}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/zte/zdm/d/c/c/a;
    .locals 5

    new-instance v1, Lcom/zte/zdm/d/c/c/a;

    invoke-direct {v1}, Lcom/zte/zdm/d/c/c/a;-><init>()V

    new-instance v0, Lcom/zte/zdm/d/c/bo;

    const-string v2, "1.2"

    invoke-direct {v0, v2}, Lcom/zte/zdm/d/c/bo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/c/a;->a(Lcom/zte/zdm/d/c/bo;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v3, p0, Lcom/zte/zdm/b/f/b;->d:Lcom/zte/zdm/b/f/h/d;

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lcom/zte/zdm/b/f/h/d;->a(Lcom/zte/zdm/b/f/d/f;I)V

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/zdm/b/f/d/h;->b(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/zte/zdm/b/f/b;->a(Lcom/zte/zdm/b/f/d;Ljava/util/List;I)V

    return-object v1
.end method

.method public c()V
    .locals 2

    const-string v0, "zcc_trcommiting"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/b/f/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "zcc_trcommiting: atomictype"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/b;->b()V

    iget-object v0, p0, Lcom/zte/zdm/b/f/b;->f:Lcom/zte/zdm/b/f/g/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/g/a;->c()Z

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/b;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/zdm/b/f/b;->c(Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcom/zte/zdm/b/f/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/f/b;->f:Lcom/zte/zdm/b/f/g/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/g/a;->d()Z

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/b;->a()V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/f/b;->e:I

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/b;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x194

    const-string v2, "node not found"

    invoke-direct {v0, p1, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method
