.class public final Lcom/nuance/a/a/a/b/a/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/b/a/a/d;


# instance fields
.field private final a:Lcom/nuance/a/a/a/b/a/b/a/h;

.field private final b:Ljava/util/Hashtable;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/nuance/a/a/a/b/a/b/a/h;Lcom/nuance/a/a/a/b/a/b/a/g$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    iput-object p1, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->a:Lcom/nuance/a/a/a/b/a/b/a/h;

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->a:Lcom/nuance/a/a/a/b/a/b/a/h;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/a/h;->e()Lcom/nuance/a/a/a/b/a/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/a/a/a/b/a/b/a/a;->a(Lcom/nuance/a/a/a/b/a/b/a/h;Lcom/nuance/a/a/a/b/a/b/a/g$a;)V

    return-void
.end method

.method static a(Lcom/nuance/a/a/a/b/a/b/a/h;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/b/a/g;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/a/a/a/b/a/b/a/d;

    invoke-direct {v0, p0, p1}, Lcom/nuance/a/a/a/b/a/b/a/d;-><init>(Lcom/nuance/a/a/a/b/a/b/a/h;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/a/a/a/b/a/b/a/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/nuance/a/a/a/b/a/b/a/g;-><init>(Lcom/nuance/a/a/a/b/a/b/a/h;Lcom/nuance/a/a/a/b/a/b/a/g$a;)V

    return-object v1
.end method

.method public static a(Lcom/nuance/a/a/a/b/a/b/a/h;Ljava/lang/String;Lcom/nuance/a/a/a/b/a/b/a/g$a;)Lcom/nuance/a/a/a/b/a/b/a/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/a/a/a/b/a/b/a/e;

    invoke-direct {v0, p0, p1}, Lcom/nuance/a/a/a/b/a/b/a/e;-><init>(Lcom/nuance/a/a/a/b/a/b/a/h;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/a/a/a/b/a/b/a/g;

    invoke-direct {v1, v0, p2}, Lcom/nuance/a/a/a/b/a/b/a/g;-><init>(Lcom/nuance/a/a/a/b/a/b/a/h;Lcom/nuance/a/a/a/b/a/b/a/g$a;)V

    return-object v1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/a/a/a/b/a/b/a/a;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/b/a/g;
    .locals 7

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/a/a/a/b/a/b/a/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/a/a/a/b/a/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/a/a/a/b/a/b/a/a;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/a/a/a/b/a/b/a/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/nuance/a/a/a/b/a/b/a/g;-><init>(Lcom/nuance/a/a/a/b/a/b/a/h;Lcom/nuance/a/a/a/b/a/b/a/g$a;)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/nuance/a/a/a/b/a/a/b;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/a/a/a/b/a/b/a/g;->a(Lcom/nuance/a/a/a/b/a/b/a/g$b;)Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nuance/a/a/a/b/a/b/a/g$b;)Lcom/nuance/a/a/a/b/a/a/b;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->a:Lcom/nuance/a/a/a/b/a/b/a/h;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/a/a/a/b/a/b/a/h;->a(Ljava/util/Hashtable;Lcom/nuance/a/a/a/b/a/b/a/g$b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->a:Lcom/nuance/a/a/a/b/a/b/a/h;

    return-object v0
.end method

.method public final a(Ljava/lang/String;D)Lcom/nuance/a/a/a/b/a/a/d;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/a/a/a/b/a/a/c;

    const-string v1, "SessionEvent is alreadt committed."

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lcom/nuance/a/a/a/b/a/a/d;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/a/a/a/b/a/a/c;

    const-string v1, "SessionEvent is alreadt committed."

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lcom/nuance/a/a/a/b/a/a/d;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/a/a/a/b/a/a/c;

    const-string v1, "SessionEvent is alreadt committed."

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/a/b;)Lcom/nuance/a/a/a/b/a/a/d;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/a/a/a/b/a/a/c;

    const-string v1, "SessionEvent is alreadt committed."

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/a/a/a/b/a/a/c;

    const-string v1, "SessionEvent is alreadt committed."

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/nuance/a/a/a/b/a/a/d;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/a/a/a/b/a/a/c;

    const-string v1, "SessionEvent is alreadt committed."

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;[B)Lcom/nuance/a/a/a/b/a/a/d;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/a/a/a/b/a/a/c;

    const-string v1, "SessionEvent is alreadt committed."

    invoke-direct {v0, v1}, Lcom/nuance/a/a/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b()Lcom/nuance/a/a/a/b/a/a/b;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->a:Lcom/nuance/a/a/a/b/a/b/a/h;

    instance-of v0, v0, Lcom/nuance/a/a/a/b/a/b/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->a:Lcom/nuance/a/a/a/b/a/b/a/h;

    check-cast v0, Lcom/nuance/a/a/a/b/a/b/a/e;

    iput-boolean v3, v0, Lcom/nuance/a/a/a/b/a/b/a/e;->a:Z

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->a:Lcom/nuance/a/a/a/b/a/b/a/h;

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->b:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/b/a/h;->a(Ljava/util/Hashtable;Lcom/nuance/a/a/a/b/a/b/a/g$b;)V

    iput-boolean v3, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->c:Z

    :cond_1
    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/g;->a:Lcom/nuance/a/a/a/b/a/b/a/h;

    return-object v0
.end method
