.class Lcom/zte/zdm/b/a/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/e/f;

.field final synthetic b:Lcom/zte/zdm/b/c/b/c;

.field final synthetic c:Lcom/zte/zdm/b/a/g;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/a/g;Lcom/zte/zdm/e/f;Lcom/zte/zdm/b/c/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a/j;->c:Lcom/zte/zdm/b/a/g;

    iput-object p2, p0, Lcom/zte/zdm/b/a/j;->a:Lcom/zte/zdm/e/f;

    iput-object p3, p0, Lcom/zte/zdm/b/a/j;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zte/zdm/b/a/j;->c:Lcom/zte/zdm/b/a/g;

    iget-object v0, v0, Lcom/zte/zdm/b/a/g;->b:Lcom/zte/zdm/e/b;

    iget-object v1, p0, Lcom/zte/zdm/b/a/j;->a:Lcom/zte/zdm/e/f;

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/b;->c(Lcom/zte/zdm/e/f;)Lcom/zte/zdm/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/a/j;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v1}, Lcom/zte/zdm/b/c/b/c;->c()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/zte/zdm/b/a/j;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v2}, Lcom/zte/zdm/b/c/b/c;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/a/j;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v3}, Lcom/zte/zdm/b/c/b/c;->h()C

    move-result v3

    iget-object v4, p0, Lcom/zte/zdm/b/a/j;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v4}, Lcom/zte/zdm/b/c/b/c;->i()C

    move-result v4

    iget-object v5, p0, Lcom/zte/zdm/b/a/j;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v5}, Lcom/zte/zdm/b/c/b/c;->g()I

    move-result v5

    iget-object v6, p0, Lcom/zte/zdm/b/a/j;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v6}, Lcom/zte/zdm/b/c/b/c;->f()I

    move-result v6

    iget-object v7, p0, Lcom/zte/zdm/b/a/j;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v7}, Lcom/zte/zdm/b/c/b/c;->d()I

    move-result v7

    invoke-interface/range {v0 .. v7}, Lcom/zte/zdm/e/d;->a(Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method
