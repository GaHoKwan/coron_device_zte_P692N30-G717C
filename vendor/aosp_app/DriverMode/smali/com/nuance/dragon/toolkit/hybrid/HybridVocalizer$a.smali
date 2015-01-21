.class final Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;

.field final b:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

.field final c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;Lcom/nuance/dragon/toolkit/audio/AudioPipe;Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->a:Lcom/nuance/dragon/toolkit/hybrid/HybridTtsSpec;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->b:Lcom/nuance/dragon/toolkit/audio/AudioPipe;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$a;->c:Lcom/nuance/dragon/toolkit/hybrid/HybridVocalizer$Listener;

    return-void
.end method
