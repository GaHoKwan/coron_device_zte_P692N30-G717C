.class public Lcom/zte/zdm/b/a/o;
.super Lcom/zte/zdm/b/a/a;


# instance fields
.field private d:Lcom/zte/zdm/d/c/w;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/w;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;)V

    iput-object p3, p0, Lcom/zte/zdm/b/a/o;->d:Lcom/zte/zdm/d/c/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/w;Lcom/zte/zdm/b/f/e/b;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/zte/zdm/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/a;Lcom/zte/zdm/b/f/e/b;)V

    iput-object p3, p0, Lcom/zte/zdm/b/a/o;->d:Lcom/zte/zdm/d/c/w;

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/ai;)V
    .locals 3

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proccessItem:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/o;->a:Lcom/zte/zdm/b/f/e/b;

    iget-object v1, p0, Lcom/zte/zdm/b/a/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lcom/zte/zdm/b/f/e/b;->b(Ljava/lang/String;Lcom/zte/zdm/d/c/ai;Lcom/zte/zdm/b/f/c/a;)V

    return-void
.end method

.method private c()Z
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/a/o;->d:Lcom/zte/zdm/d/c/w;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/w;->k()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/a/o;->a(Lcom/zte/zdm/d/c/ai;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/a/o;->c()Z

    move-result v0

    return v0
.end method
