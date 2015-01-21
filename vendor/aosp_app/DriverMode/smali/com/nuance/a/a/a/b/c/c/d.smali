.class public Lcom/nuance/a/a/a/b/c/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/c/d;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/c/d;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/nuance/a/a/a/b/c/a/a;Lcom/nuance/a/a/a/b/c/c/e;Ljava/util/Vector;)Lcom/nuance/a/a/a/b/c/c/c;
    .locals 4

    sget-object v0, Lcom/nuance/a/a/a/b/c/c/d;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/c/d;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "createNMASResource"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/nuance/a/a/a/b/c/c/d;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "manager is null"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "manager can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/b/c/c/d;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "nmasListener is null"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nmasListener can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/b/c;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/a/a/a/b/b/c$a;->c:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/a/a/a/b/b/c$a;->d:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/a/a/a/b/b/c$a;->e:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/a/a/a/b/b/c$a;->f:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/a/a/a/b/b/c$a;->g:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/a/a/a/b/b/c$a;->h:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/a/a/a/b/b/c$a;->i:Lcom/nuance/a/a/a/b/b/c$a;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/a/a/a/b/b/c$a;->j:Lcom/nuance/a/a/a/b/b/c$a;

    if-ne v2, v3, :cond_4

    :cond_3
    sget-object v1, Lcom/nuance/a/a/a/b/c/c/d;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/b/c;->d()Lcom/nuance/a/a/a/b/b/c$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not allowed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/nuance/a/a/a/b/c/b/b/a;

    check-cast p0, Lcom/nuance/a/a/a/b/c/b/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/a/a/a/b/c/b/b/a;-><init>(Lcom/nuance/a/a/a/b/c/b/a/a;Lcom/nuance/a/a/a/b/c/c/e;Ljava/util/Vector;)V

    return-object v0
.end method
