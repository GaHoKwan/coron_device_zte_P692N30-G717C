.class final Lcom/nuance/dragon/toolkit/util/internal/a$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/nuance/dragon/toolkit/util/internal/a$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/util/internal/a$b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/util/internal/a$b$1;->b:Lcom/nuance/dragon/toolkit/util/internal/a$b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/util/internal/a$b$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/util/internal/a$b$1;->b:Lcom/nuance/dragon/toolkit/util/internal/a$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/util/internal/a$b$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a$b;->a(Ljava/lang/Object;)V

    return-void
.end method
