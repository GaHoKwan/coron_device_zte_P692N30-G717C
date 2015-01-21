.class final Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocalizer/b$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b$2;Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->b:Lcom/nuance/dragon/toolkit/vocalizer/b$2;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->b:Lcom/nuance/dragon/toolkit/vocalizer/b$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->c:Lcom/nuance/dragon/toolkit/vocalizer/b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->a(Lcom/nuance/dragon/toolkit/vocalizer/b;Lcom/nuance/dragon/toolkit/audio/AudioType;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->b:Lcom/nuance/dragon/toolkit/vocalizer/b$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->b:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->b:Lcom/nuance/dragon/toolkit/vocalizer/b$2;

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->b:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->b:Lcom/nuance/dragon/toolkit/vocalizer/b$2;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->c:Lcom/nuance/dragon/toolkit/vocalizer/b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioType;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;->onLoaded(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
