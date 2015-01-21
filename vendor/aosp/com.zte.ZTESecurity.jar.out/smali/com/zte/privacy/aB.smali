.class public Lcom/zte/privacy/aB;
.super Lcom/zte/privacy/N;


# instance fields
.field private kE:Z

.field private kF:Lcom/zte/privacy/az;

.field private po:Ljava/io/PrintWriter;

.field private qs:Ljava/util/List;

.field private qt:Ljava/util/List;

.field private qu:Ljava/util/Map;


# direct methods
.method public constructor <init>(ZLcom/zte/privacy/az;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/privacy/N;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/aB;->qs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/aB;->qt:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/aB;->qu:Ljava/util/Map;

    iput-object p2, p0, Lcom/zte/privacy/aB;->kF:Lcom/zte/privacy/az;

    iput-object p3, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    iput-boolean p1, p0, Lcom/zte/privacy/aB;->kE:Z

    return-void
.end method


# virtual methods
.method protected varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-gez p1, :cond_0

    iget-object v1, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v2, "%-20s|%5s|%s\n"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    const-string v4, ""

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v2, "%-20s|%5s|%s\n"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/r;->x(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, ""

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method public a(I[I)V
    .locals 12

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/zte/privacy/aB;->kE:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aget v1, p2, v1

    iget-object v2, p0, Lcom/zte/privacy/aB;->kF:Lcom/zte/privacy/az;

    invoke-virtual {v2}, Lcom/zte/privacy/az;->cg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v4, "%20s:v%d   //%s\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "this"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_0
    iget-object v1, p0, Lcom/zte/privacy/aB;->kF:Lcom/zte/privacy/az;

    invoke-virtual {v1}, Lcom/zte/privacy/az;->dp()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    add-int/lit8 v2, v1, 0x1

    aget v1, p2, v1

    invoke-static {v5}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v7, "%20s:v%d   //%s\n"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    aput-object v5, v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/zte/privacy/C;Lcom/zte/privacy/C;[Lcom/zte/privacy/C;[Ljava/lang/String;)V
    .locals 9

    new-instance v0, Lcom/zte/privacy/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/zte/privacy/f;-><init>(Lcom/zte/privacy/C;Lcom/zte/privacy/C;[Lcom/zte/privacy/C;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/privacy/aB;->qt:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zte/privacy/aB;->qt:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_1

    aget-object v2, p4, v0

    aget-object v3, p3, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v4, "TR_%d L%s ~ L%s > L%s all\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p0, p2}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0, v3}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v5, "TR_%d L%s ~ L%s > L%s %s\n"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0, p2}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p0, v3}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x4

    aput-object v2, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/privacy/N;->a(Lcom/zte/privacy/C;Lcom/zte/privacy/C;[Lcom/zte/privacy/C;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/C;Lcom/zte/privacy/C;I)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v1, "LOCAL_VARIABLE L%s ~ L%s v%d -> %s // %s \n"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p4}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, p5}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method public b(ILcom/zte/privacy/C;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/aB;->qu:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/zte/privacy/C;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/privacy/aB;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/f;

    iget-object v4, v0, Lcom/zte/privacy/f;->bb:Lcom/zte/privacy/C;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, " } // TC_%d"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zte/privacy/aB;->qt:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p0, v9, v1, v4}, Lcom/zte/privacy/aB;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/zte/privacy/aB;->qu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v5, "%-20s|%5s: line %d\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "LABEL"

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "L"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/zte/privacy/aB;->qt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/f;

    iget-object v1, v0, Lcom/zte/privacy/f;->bd:Lcom/zte/privacy/C;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "try { // TC_%d "

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/privacy/aB;->qt:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v9, v1, v2}, Lcom/zte/privacy/aB;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/zte/privacy/aB;->po:Ljava/io/PrintWriter;

    const-string v4, "%-20s|%5s:\n"

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "LABEL"

    aput-object v6, v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "L"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/zte/privacy/aB;->c(Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_3
    iget-object v4, v0, Lcom/zte/privacy/f;->bc:[Lcom/zte/privacy/C;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, v0, Lcom/zte/privacy/f;->types:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v6, v0, Lcom/zte/privacy/f;->bc:[Lcom/zte/privacy/C;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "catch(%s) // TC_%d"

    new-array v7, v10, [Ljava/lang/Object;

    if-nez v4, :cond_5

    const-string v1, "all"

    :goto_4
    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/zte/privacy/aB;->qt:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {p0, v9, v6, v7}, Lcom/zte/privacy/aB;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    move-object v1, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v3

    goto/16 :goto_0
.end method

.method protected c(Lcom/zte/privacy/C;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zte/privacy/aB;->qs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/aB;->qs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/privacy/aB;->qs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
