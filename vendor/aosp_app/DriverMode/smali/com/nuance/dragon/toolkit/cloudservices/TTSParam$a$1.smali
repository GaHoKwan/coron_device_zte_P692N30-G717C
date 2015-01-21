.class final Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$1;->a:Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;->b(Lcom/nuance/dragon/toolkit/cloudservices/TTSParam$a;)V

    return-void
.end method
