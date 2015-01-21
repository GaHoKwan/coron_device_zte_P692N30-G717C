.class public abstract Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->onCancel()V

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->onStart()V

    return-void
.end method

.method protected final done()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;

    invoke-interface {v0, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;

    :cond_0
    return-void
.end method

.method protected abstract onCancel()V
.end method

.method protected abstract onStart()V
.end method
