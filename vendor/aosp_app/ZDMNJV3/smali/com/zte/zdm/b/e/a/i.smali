.class Lcom/zte/zdm/b/e/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/a/b/f;


# instance fields
.field final synthetic a:Lcom/zte/zdm/b/e/e;

.field final synthetic b:I

.field final synthetic c:Lcom/zte/zdm/b/e/a/h;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/h;Lcom/zte/zdm/b/e/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/i;->c:Lcom/zte/zdm/b/e/a/h;

    iput-object p2, p0, Lcom/zte/zdm/b/e/a/i;->a:Lcom/zte/zdm/b/e/e;

    iput p3, p0, Lcom/zte/zdm/b/e/a/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/i;->a:Lcom/zte/zdm/b/e/e;

    iget v1, p0, Lcom/zte/zdm/b/e/a/i;->b:I

    invoke-interface {v0, p1, v1}, Lcom/zte/zdm/b/e/e;->a(II)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/i;->a:Lcom/zte/zdm/b/e/e;

    iget v1, p0, Lcom/zte/zdm/b/e/a/i;->b:I

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/e/e;->b(I)V

    return-void
.end method
