.class final enum Lcom/zte/zdm/b/f/a/o;
.super Lcom/zte/zdm/b/f/a/f;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/zdm/b/f/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/a/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/f/d/f;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/e;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/b/f/a/e;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zte/zdm/b/f/a/e;->i:I

    return-void
.end method
