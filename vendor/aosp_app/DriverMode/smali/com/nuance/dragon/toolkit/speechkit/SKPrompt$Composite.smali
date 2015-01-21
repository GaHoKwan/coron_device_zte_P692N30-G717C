.class public Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;
.super Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private b:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->a:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    new-instance v1, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite$1;-><init>(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$a;)V

    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b()V

    return-void
.end method


# virtual methods
.method public addPrompt(Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b:Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Composite prompt is empty"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->done()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$Composite;->b()V

    goto :goto_0
.end method
