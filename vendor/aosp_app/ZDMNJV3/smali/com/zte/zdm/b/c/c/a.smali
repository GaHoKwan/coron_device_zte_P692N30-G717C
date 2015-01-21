.class public Lcom/zte/zdm/b/c/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/c/b;


# static fields
.field public static final A:[Lcom/zte/zdm/d/c/bp; = null

.field public static final B:Ljava/lang/String; = "./devinf11"

.field public static final C:Ljava/lang/String; = "./devinf11"

.field public static final D:Ljava/lang/String; = "server"

.field public static final E:Ljava/lang/String; = "client"

.field public static final z:[Lcom/zte/zdm/d/c/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Lcom/zte/zdm/d/c/bo;

    sget-object v1, Lcom/zte/zdm/d/c/o;->o:Lcom/zte/zdm/d/c/bo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/zdm/d/c/o;->p:Lcom/zte/zdm/d/c/bo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/d/c/o;->q:Lcom/zte/zdm/d/c/bo;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/zdm/b/c/c/a;->z:[Lcom/zte/zdm/d/c/bo;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/zdm/d/c/bp;

    sget-object v1, Lcom/zte/zdm/d/c/o;->v:Lcom/zte/zdm/d/c/bp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/zdm/d/c/o;->w:Lcom/zte/zdm/d/c/bp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/d/c/o;->x:Lcom/zte/zdm/d/c/bp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/d/c/o;->y:Lcom/zte/zdm/d/c/bp;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Lcom/zte/zdm/d/c/o;->z:Lcom/zte/zdm/d/c/bp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zdm/b/c/c/a;->A:[Lcom/zte/zdm/d/c/bp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/aj;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/m;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/c/c; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->e()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "missing metadata"

    aput-object v1, v0, v3

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid {0} capabilities ({1})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_0
    move-exception v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0}, Lcom/zte/zdm/b/c/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid {0} capabilities ({1})"

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "invalid metadata type"

    aput-object v1, v0, v3

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid {0} capabilities ({1})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->k()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string v1, "The item element is missing"

    aput-object v1, v0, v3

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid {0} capabilities ({1})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/bb;)V
    :try_end_1
    .catch Lcom/zte/zdm/b/c/c; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "./devinf11"

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string v1, "URI not ./devinf11"

    aput-object v1, v0, v3

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid {0} capabilities ({1})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string v1, "missing source"

    aput-object v1, v0, v3

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid {0} capabilities ({1})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_4
    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/az;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Missing session ID"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/bb;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    move v0, v1

    :cond_1
    :goto_3
    if-nez v0, :cond_7

    new-array v1, v1, [Ljava/lang/String;

    if-nez p0, :cond_6

    const-string v0, "null"

    :goto_4
    aput-object v0, v1, v2

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid source({0})"

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bb;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/bm;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    move v0, v1

    :cond_1
    :goto_3
    if-nez v0, :cond_7

    new-array v1, v1, [Ljava/lang/String;

    if-nez p0, :cond_6

    const-string v0, "null"

    :goto_4
    aput-object v0, v1, v2

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid target ({0})"

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/bo;)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/zte/zdm/b/c/c/a;->z:[Lcom/zte/zdm/d/c/bo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/zte/zdm/b/c/c/a;->z:[Lcom/zte/zdm/d/c/bo;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/zte/zdm/d/c/bo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "DTD ver {0} not supported"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Lcom/zte/zdm/d/c/bp;)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/zte/zdm/b/c/c/a;->A:[Lcom/zte/zdm/d/c/bp;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/zte/zdm/b/c/c/a;->A:[Lcom/zte/zdm/d/c/bp;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/zte/zdm/d/c/bp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Protocol ver {0} not supported"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Lcom/zte/zdm/d/c/c;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "alert is null!"

    aput-object v1, v0, v2

    if-nez p0, :cond_0

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid alert command ({0})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/m;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/c/c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zte/zdm/b/c/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid alert command ({0})"

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Lcom/zte/zdm/d/c/m;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Missing message ID"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Missing message ID"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
