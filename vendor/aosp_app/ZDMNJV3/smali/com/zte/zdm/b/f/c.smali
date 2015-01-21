.class public Lcom/zte/zdm/b/f/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/b/f/d;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/zte/zdm/b/f/d;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    invoke-direct {p0, v0, p2}, Lcom/zte/zdm/b/f/c;->a(Lcom/zte/zdm/b/f/d;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p2}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/zte/zdm/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/b/f/c;->b(Ljava/lang/String;Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object p2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d;
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    :goto_0
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

    const-string v1, "current = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/b/f/c;->b(Ljava/lang/String;Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/b/f/c;->f()Lcom/zte/zdm/b/f/d;

    move-result-object p2

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/b/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/c;->a:Lcom/zte/zdm/b/f/d;

    return-void
.end method

.method public b(Lcom/zte/zdm/b/f/d;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/f/c;->b(Lcom/zte/zdm/b/f/d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public f()Lcom/zte/zdm/b/f/d;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/c;->a:Lcom/zte/zdm/b/f/d;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/b/f/c;->a(Ljava/lang/String;Lcom/zte/zdm/b/f/d;)Lcom/zte/zdm/b/f/d;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/f/c;->a:Lcom/zte/zdm/b/f/d;

    invoke-direct {p0, v1, v0}, Lcom/zte/zdm/b/f/c;->a(Lcom/zte/zdm/b/f/d;Ljava/util/List;)V

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/c;->b:Ljava/lang/String;

    return-void
.end method
