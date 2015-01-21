.class final Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->done()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite$1;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->c(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;)V

    goto :goto_0
.end method
