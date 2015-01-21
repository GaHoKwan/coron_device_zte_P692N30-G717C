.class Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$3;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$3;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$100(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$3;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$100(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$3;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;->onStarted(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V

    :cond_0
    return-void
.end method
