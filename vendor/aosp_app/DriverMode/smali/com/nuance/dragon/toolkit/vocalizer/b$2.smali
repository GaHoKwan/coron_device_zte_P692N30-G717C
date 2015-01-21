.class final Lcom/nuance/dragon/toolkit/vocalizer/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocalizer/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->c:Lcom/nuance/dragon/toolkit/vocalizer/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->b:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$LoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->c:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->a(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;

    iget v3, v3, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$2;->c:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocalizer/b;->b(Lcom/nuance/dragon/toolkit/vocalizer/b;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/vocalizer/b$2$1;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b$2;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
