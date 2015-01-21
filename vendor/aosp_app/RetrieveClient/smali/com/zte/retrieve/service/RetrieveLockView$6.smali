.class Lcom/zte/retrieve/service/RetrieveLockView$6;
.super Ljava/util/TimerTask;
.source "RetrieveLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/RetrieveLockView;->setTopActivityChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cpName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    .line 208
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 215
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->cpName:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->cpName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->getTopActivity()Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/zte/retrieve/service/RetrieveLockView;->access$19(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    .line 217
    .local v0, res:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "res="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 218
    if-eqz v0, :cond_3

    .line 219
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 222
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 223
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getAnswerStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->unRegCallListener()V
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$12(Lcom/zte/retrieve/service/RetrieveLockView;)V

    .line 225
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$10(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    .line 229
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->setLock()Z

    .line 230
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/controller/Controller;->setAnswerStatus(Z)V

    .line 231
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #setter for: Lcom/zte/retrieve/service/RetrieveLockView;->isTryingUnlock:Z
    invoke-static {v1, v3}, Lcom/zte/retrieve/service/RetrieveLockView;->access$13(Lcom/zte/retrieve/service/RetrieveLockView;Z)V

    .line 233
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 236
    .end local v0           #res:I
    :cond_3
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->getTopActivity()Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$19(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$6;->cpName:Landroid/content/ComponentName;

    .line 238
    return-void
.end method
