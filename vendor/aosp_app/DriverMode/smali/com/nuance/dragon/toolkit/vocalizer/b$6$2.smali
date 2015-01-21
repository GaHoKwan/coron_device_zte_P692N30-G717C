.class final Lcom/nuance/dragon/toolkit/vocalizer/b$6$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/b$6;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/b$6$2;->a:Lcom/nuance/dragon/toolkit/vocalizer/b$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/b$6;->a:Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/TtsAudioSource;->cancel()V

    return-void
.end method
