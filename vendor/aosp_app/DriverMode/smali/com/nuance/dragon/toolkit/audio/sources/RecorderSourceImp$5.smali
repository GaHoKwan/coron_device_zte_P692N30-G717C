.class Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_started:Z
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$300(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_started:Z
    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$302(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_closed:Z
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$400(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    const/4 v1, 0x1

    #setter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_closed:Z
    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$402(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->notifySourceClosed()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$500(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$500(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/util/WorkerThread;->stop()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #setter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_workerThread:Lcom/nuance/dragon/toolkit/util/WorkerThread;
    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$502(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Lcom/nuance/dragon/toolkit/util/WorkerThread;)Lcom/nuance/dragon/toolkit/util/WorkerThread;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$100(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->val$success:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$100(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;->onStopped(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #setter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;
    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$102(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    #getter for: Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->_listener:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;->access$100(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$5;->this$0:Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp$Listener;->onError(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSourceImp;)V

    goto :goto_0
.end method
