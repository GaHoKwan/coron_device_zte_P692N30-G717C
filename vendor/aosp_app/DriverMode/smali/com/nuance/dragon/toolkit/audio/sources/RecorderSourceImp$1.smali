.class Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_audioType:Lcom/nuance/dragon/toolkit/audio/AudioType;
    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$000(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->startRecordingInternal(Lcom/nuance/dragon/toolkit/audio/AudioType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$1;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->handleSourceClosed(Z)V

    :cond_0
    return-void
.end method
