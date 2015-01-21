.class Lcom/android/mms/transaction/TransactionService$5;
.super Landroid/telephony/PhoneStateListener;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/TransactionService;->registerPhoneCallListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter

    .prologue
    .line 2575
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPhoneStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$2200(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2579
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #setter for: Lcom/android/mms/transaction/TransactionService;->mPhoneState4:I
    invoke-static {v0, p1}, Lcom/android/mms/transaction/TransactionService;->access$2602(Lcom/android/mms/transaction/TransactionService;I)I

    .line 2580
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPhoneState:I
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$2300(Lcom/android/mms/transaction/TransactionService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPhoneState2:I
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$2400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPhoneState3:I
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$2500(Lcom/android/mms/transaction/TransactionService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPhoneState4:I
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$2600(Lcom/android/mms/transaction/TransactionService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v1, 0x3

    #setter for: Lcom/android/mms/transaction/TransactionService;->mLastIdleSlot:I
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$2702(Lcom/android/mms/transaction/TransactionService;I)I

    .line 2587
    :cond_0
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get slot3 new state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",slot0 current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPhoneState:I
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$2300(Lcom/android/mms/transaction/TransactionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",slot1 current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPhoneState2:I
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$2400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",slot2 current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPhoneState3:I
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$2500(Lcom/android/mms/transaction/TransactionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mEnableCallbackIdle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mEnableCallbackIdle:Z
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$2000(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mLastIdleSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mLastIdleSlot:I
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$2700(Lcom/android/mms/transaction/TransactionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$5;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->callbackState()V
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$2800(Lcom/android/mms/transaction/TransactionService;)V

    .line 2591
    return-void

    .line 2580
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
