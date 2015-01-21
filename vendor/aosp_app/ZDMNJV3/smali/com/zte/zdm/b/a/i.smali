.class Lcom/zte/zdm/b/a/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/e/f;

.field final synthetic b:Lcom/zte/zdm/b/c/b/c;

.field final synthetic c:Lcom/zte/zdm/b/a/g;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/a/g;Lcom/zte/zdm/e/f;Lcom/zte/zdm/b/c/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/a/i;->c:Lcom/zte/zdm/b/a/g;

    iput-object p2, p0, Lcom/zte/zdm/b/a/i;->a:Lcom/zte/zdm/e/f;

    iput-object p3, p0, Lcom/zte/zdm/b/a/i;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zte/zdm/b/a/i;->c:Lcom/zte/zdm/b/a/g;

    iget-object v0, v0, Lcom/zte/zdm/b/a/g;->b:Lcom/zte/zdm/e/b;

    iget-object v1, p0, Lcom/zte/zdm/b/a/i;->a:Lcom/zte/zdm/e/f;

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/b;->a(Lcom/zte/zdm/e/f;)Lcom/zte/zdm/e/a;

    move-result-object v0

    const-string v1, "CONFIRM: "

    iget-object v2, p0, Lcom/zte/zdm/b/a/i;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v2}, Lcom/zte/zdm/b/c/b/c;->c()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/zte/zdm/b/a/i;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v3}, Lcom/zte/zdm/b/c/b/c;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/b/a/i;->b:Lcom/zte/zdm/b/c/b/c;

    invoke-virtual {v4}, Lcom/zte/zdm/b/c/b/c;->d()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zte/zdm/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
