.class public Lcom/zte/zdm/f/a/d;
.super Ljava/util/TreeSet;


# static fields
.field private static final a:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/f/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/f/a/d;)Z
    .locals 3

    new-instance v0, Lcom/zte/zdm/f/a/d;

    invoke-direct {v0, p0}, Lcom/zte/zdm/f/a/d;-><init>(Lcom/zte/zdm/f/a/d;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIntersect tmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " imsiset2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/zte/zdm/f/a/d;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/zte/zdm/f/a/d;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/zdm/f/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
