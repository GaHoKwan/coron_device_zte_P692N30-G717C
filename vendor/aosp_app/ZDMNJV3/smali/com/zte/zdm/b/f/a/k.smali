.class final enum Lcom/zte/zdm/b/f/a/k;
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
    .locals 2

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "text/plain"

    :cond_1
    return-object v0
.end method

.method public a(Lcom/zte/zdm/b/f/a/e;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p1, Lcom/zte/zdm/b/f/a/e;->e:Ljava/lang/String;

    return-void
.end method
