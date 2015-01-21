.class Lcom/zte/zdm/b/f/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/f/c/b;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/zte/zdm/b/f/e/b;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/f/e/b;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/e/c;->c:Lcom/zte/zdm/b/f/e/b;

    iput-object p2, p0, Lcom/zte/zdm/b/f/e/c;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/zte/zdm/b/f/e/c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/f/d/f;)V
    .locals 2

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/c;->a:Ljava/util/List;

    iget-boolean v0, p0, Lcom/zte/zdm/b/f/e/c;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->r()Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->q()Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    goto :goto_0
.end method
