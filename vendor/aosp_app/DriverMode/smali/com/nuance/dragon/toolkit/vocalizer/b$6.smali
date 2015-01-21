.class final Lcom/nuance/dragon/toolkit/vocalizer/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocalizer/b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b;Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->a(Lcom/nuance/dragon/toolkit/vocalizer/b;)Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget-boolean v2, v2, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->b:Z

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget v3, v3, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->f:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget v4, v4, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->g:I

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget v5, v5, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->h:I

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    iget v6, v6, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->c:I

    new-instance v7, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;

    invoke-direct {v7, p0}, Lcom/nuance/dragon/toolkit/vocalizer/b$6$1;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b$6;)V

    invoke-interface/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;->a(Ljava/lang/String;ZIIIILcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer$SpeakListener;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->b:Lcom/nuance/dragon/toolkit/vocalizer/b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/b;->b(Lcom/nuance/dragon/toolkit/vocalizer/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocalizer/b$6$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocalizer/b$6$2;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/b$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
