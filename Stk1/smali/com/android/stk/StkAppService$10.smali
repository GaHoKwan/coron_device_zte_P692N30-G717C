.class Lcom/android/stk/StkAppService$10;
.super Landroid/content/BroadcastReceiver;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 2844
    iput-object p1, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2847
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2848
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2849
    .local v2, simState:Ljava/lang/String;
    const-string v3, "simId"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2851
    .local v1, simId:I
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSIMStateChangeReceiver() - simId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]  state["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    const-string v3, "NOT_READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2855
    iget-object v3, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$2000(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->getNotificationId(I)I
    invoke-static {v4, v1}, Lcom/android/stk/StkAppService;->access$1900(Lcom/android/stk/StkAppService;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2879
    .end local v1           #simId:I
    .end local v2           #simState:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2856
    .restart local v1       #simId:I
    .restart local v2       #simState:Ljava/lang/String;
    :cond_1
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2858
    iget-object v3, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2861
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There are command in queue because SIM card was absent. size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2864
    .end local v1           #simId:I
    .end local v2           #simState:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2866
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v3, Lcom/android/stk/StkAppService;->STK_GEMINI_SIM_NUM:I

    if-ge v0, v3, :cond_0

    .line 2868
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IPO_SHUTDOWN][initial mMainCmd] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    iget-object v3, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2870
    iget-object v3, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v3

    aget-object v3, v3, v0

    iput-boolean v6, v3, Lcom/android/stk/StkAppService$StkContext;->mSetUpMenuHandled:Z

    .line 2871
    iget-object v3, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v3

    aget-object v3, v3, v0

    iput-boolean v6, v3, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuCalled:Z

    .line 2872
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IPO_SHUTDOWN][mMainCmd] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2874
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2875
    const-string v3, "SIM_ID"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2876
    .restart local v1       #simId:I
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove idle mode text by Refresh command for sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    iget-object v3, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$2000(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkAppService$10;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->getNotificationId(I)I
    invoke-static {v4, v1}, Lcom/android/stk/StkAppService;->access$1900(Lcom/android/stk/StkAppService;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method
