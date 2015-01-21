.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$1;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$1;->a:Z

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Z)V

    return-void
.end method
