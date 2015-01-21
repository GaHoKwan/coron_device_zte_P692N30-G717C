.class final enum Lcom/zte/zdm/b/f/a/j;
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

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->h()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "permanent"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/b/f/a/e;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/zte/zdm/b/f/a/e;->d:I

    return-void
.end method
