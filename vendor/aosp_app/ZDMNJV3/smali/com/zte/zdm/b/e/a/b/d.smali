.class Lcom/zte/zdm/b/e/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/b/e/a/b/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/b/d;->a:Lcom/zte/zdm/b/e/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/b/d;->a:Lcom/zte/zdm/b/e/a/b/c;

    invoke-static {v0}, Lcom/zte/zdm/b/e/a/b/c;->a(Lcom/zte/zdm/b/e/a/b/c;)Lcom/zte/zdm/b/e/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/b/g;->m()I

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/b/d;->a:Lcom/zte/zdm/b/e/a/b/c;

    invoke-static {v1, v0}, Lcom/zte/zdm/b/e/a/b/c;->a(Lcom/zte/zdm/b/e/a/b/c;I)V

    return-void
.end method
