.class final enum Lcom/zte/zdm/b/f/a/p;
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
    .locals 3

    const/4 v0, 0x0

    const-class v1, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/zte/zdm/b/f/d/e;

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/e;->d()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/b/e; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Leaf get value caught error"

    invoke-static {p0, v2, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/b/f/a/e;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p1, Lcom/zte/zdm/b/f/a/e;->j:[B

    return-void
.end method
