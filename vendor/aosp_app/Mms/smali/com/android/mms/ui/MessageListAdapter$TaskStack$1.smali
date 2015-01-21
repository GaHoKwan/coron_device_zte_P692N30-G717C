.class Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter$TaskStack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter$TaskStack;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter$TaskStack;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;->this$0:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1107
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;->this$0:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    iget-boolean v3, v3, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThreadOver:Z

    if-nez v3, :cond_3

    .line 1108
    const/4 v2, 0x0

    .line 1109
    .local v2, r:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;->this$0:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    #getter for: Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->access$400(Lcom/android/mms/ui/MessageListAdapter$TaskStack;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 1110
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;->this$0:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    #getter for: Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->access$400(Lcom/android/mms/ui/MessageListAdapter$TaskStack;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 1112
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;->this$0:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    #getter for: Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->access$400(Lcom/android/mms/ui/MessageListAdapter$TaskStack;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1117
    :cond_1
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;->this$0:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    #getter for: Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->access$400(Lcom/android/mms/ui/MessageListAdapter$TaskStack;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1118
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;->this$0:Lcom/android/mms/ui/MessageListAdapter$TaskStack;

    #getter for: Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->access$400(Lcom/android/mms/ui/MessageListAdapter$TaskStack;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    .line 1120
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1121
    if-eqz v2, :cond_0

    .line 1122
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v1

    .line 1114
    .local v1, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "MessageListAdapter"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1120
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1125
    .end local v2           #r:Ljava/lang/Runnable;
    :cond_3
    return-void
.end method
