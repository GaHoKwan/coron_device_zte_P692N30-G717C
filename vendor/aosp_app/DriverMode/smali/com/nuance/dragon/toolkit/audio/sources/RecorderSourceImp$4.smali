.class Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

.field final synthetic val$audio:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$4;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$4;->val$audio:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$4;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_buffer:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$200(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$4;->val$audio:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$4;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->notifyChunksAvailable()V

    return-void
.end method
