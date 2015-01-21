.class public Lcom/zte/zdm/b/a/r;
.super Lcom/zte/zdm/b/a/a;


# instance fields
.field private d:Lcom/zte/zdm/d/c/at;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/at;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;)V

    iput-object p3, p0, Lcom/zte/zdm/b/a/r;->d:Lcom/zte/zdm/d/c/at;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/at;Lcom/zte/zdm/b/f/e/b;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;Lcom/zte/zdm/b/f/e/b;)V

    iput-object p3, p0, Lcom/zte/zdm/b/a/r;->d:Lcom/zte/zdm/d/c/at;

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/ai;)V
    .locals 4

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proccessItem:\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/r;->a:Lcom/zte/zdm/b/f/e/b;

    iget-object v1, p0, Lcom/zte/zdm/b/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lcom/zte/zdm/b/f/e/b;->e(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V

    return-void
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/a/r;->d:Lcom/zte/zdm/d/c/at;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/a/r;->d:Lcom/zte/zdm/d/c/at;

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/at;->k()Ljava/util/ArrayList;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/r;->a(Lcom/zte/zdm/d/c/ai;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/a/r;->c()Z

    move-result v0

    return v0
.end method
