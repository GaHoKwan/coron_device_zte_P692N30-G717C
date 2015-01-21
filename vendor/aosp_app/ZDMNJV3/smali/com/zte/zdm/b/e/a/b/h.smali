.class Lcom/zte/zdm/b/e/a/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/b/e/a/b/f;

.field final synthetic b:Lcom/zte/zdm/b/e/a/b/g;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/a/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/b/h;->b:Lcom/zte/zdm/b/e/a/b/g;

    iput-object p2, p0, Lcom/zte/zdm/b/e/a/b/h;->a:Lcom/zte/zdm/b/e/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/h;->b:Lcom/zte/zdm/b/e/a/b/g;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/h;->a:Lcom/zte/zdm/b/e/a/b/f;

    invoke-static {v0, v1}, Lcom/zte/zdm/b/e/a/b/g;->a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/a/b/f;)V

    return-void
.end method
