.class public final Lcom/zte/zdm/b/c/c/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/aj;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/StringBuffer;

.field private d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/c;->d:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/c/c;->c()V

    return-void
.end method

.method private a(J)V
    .locals 0

    return-void
.end method

.method private b(Lcom/zte/zdm/d/c/aj;)I
    .locals 3

    const/16 v0, 0x1f4

    invoke-static {p1}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/a;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/zte/zdm/b/c/e;->b(Lcom/zte/zdm/d/c/a;)Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/b/c/c/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/ai;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/b/c/c/c;->d:Ljava/lang/Long;

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/c;->d:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/zte/zdm/b/c/c/c;->a:Lcom/zte/zdm/d/c/aj;

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xd5

    goto :goto_0
.end method

.method private c(Lcom/zte/zdm/d/c/aj;)I
    .locals 4

    const/16 v0, 0x1f4

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/c;->a:Lcom/zte/zdm/d/c/aj;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/aj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/aj;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/a;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/c/c;->d(Lcom/zte/zdm/d/c/aj;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/zte/zdm/b/c/e;->b(Lcom/zte/zdm/d/c/a;)Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/zte/zdm/b/c/c/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/b/c/c/c;->a(J)V

    const/16 v0, 0xd5

    goto :goto_0
.end method

.method private d(Lcom/zte/zdm/d/c/aj;)I
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/c;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/a;Ljava/lang/String;)Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f4

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/c/c/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xd5

    goto :goto_0
.end method

.method private d()Lcom/zte/zdm/d/c/aj;
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/c;->a:Lcom/zte/zdm/d/c/aj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c/c/c;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/ap;)V

    new-instance v2, Lcom/zte/zdm/d/c/n;

    iget-object v3, p0, Lcom/zte/zdm/b/c/c/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/zdm/d/c/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/n;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/c;->a:Lcom/zte/zdm/d/c/aj;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zte/zdm/d/c/ai;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/aj;->a([Lcom/zte/zdm/d/c/ai;)V

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/c;->a:Lcom/zte/zdm/d/c/aj;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/zte/zdm/d/c/aj;)I
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/c;->a:Lcom/zte/zdm/d/c/aj;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/c/c;->b(Lcom/zte/zdm/d/c/aj;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/c/c;->c(Lcom/zte/zdm/d/c/aj;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/c;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/zte/zdm/d/c/aj;
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/c/c/c;->d()Lcom/zte/zdm/d/c/aj;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/c;->a:Lcom/zte/zdm/d/c/aj;

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/c;->d:Ljava/lang/Long;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/c;->c:Ljava/lang/StringBuffer;

    return-void
.end method
