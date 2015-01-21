.class final Lcom/nuance/dragon/toolkit/vocalizer/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource$a;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocalizer/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$3;->a:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$3;->a:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->c(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$3;->a:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->d(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$3;->a:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->a(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;->b()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$3;->a:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->e(Lcom/nuance/dragon/toolkit/vocalizer/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$3;->a:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->f(Lcom/nuance/dragon/toolkit/vocalizer/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
