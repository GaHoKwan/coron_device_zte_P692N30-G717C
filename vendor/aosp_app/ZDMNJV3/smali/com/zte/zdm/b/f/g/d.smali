.class Lcom/zte/zdm/b/f/g/d;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/zte/zdm/b/f/g/e;

.field b:Lcom/zte/zdm/b/f/g/f;

.field c:Lcom/zte/zdm/b/f/g/f;

.field d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/b/f/g/f;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/g/f;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/g/d;->b:Lcom/zte/zdm/b/f/g/f;

    new-instance v0, Lcom/zte/zdm/b/f/g/f;

    invoke-direct {v0}, Lcom/zte/zdm/b/f/g/f;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/g/d;->c:Lcom/zte/zdm/b/f/g/f;

    return-void
.end method
