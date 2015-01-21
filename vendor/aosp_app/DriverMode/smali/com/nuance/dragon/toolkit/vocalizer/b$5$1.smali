.class final Lcom/nuance/dragon/toolkit/vocalizer/b$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocalizer/b$5;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b$5;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$5$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$5$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$5;->b:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceReleaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$5$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$5;->b:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceReleaseListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$5$1;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$5;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/b$5;->c:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$ResourceReleaseListener;->onReleased(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V

    :cond_0
    return-void
.end method
