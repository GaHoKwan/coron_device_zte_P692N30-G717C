.class Lcom/android/mms/ui/MessageListItem$20;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->updateMessageItemState(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3329
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-wide p2, p0, Lcom/android/mms/ui/MessageListItem$20;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 3332
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    move v0, v4

    .line 3333
    .local v0, deleteMode:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3334
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListAdapter;

    const-string v3, "sms"

    iget-wide v5, p0, Lcom/android/mms/ui/MessageListItem$20;->val$messageId:J

    invoke-static {v3, v5, v6}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v1

    .line 3335
    .local v1, id:J
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3336
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3341
    .end local v1           #id:J
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v4, v0}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;ZIZ)V

    .line 3342
    return-void

    .line 3332
    .end local v0           #deleteMode:Z
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    iget-boolean v0, v3, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    goto :goto_0

    .line 3338
    .restart local v0       #deleteMode:Z
    .restart local v1       #id:J
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$20;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageListAdapter;->mListItem:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/mms/ui/MessageItem;->setSelectedState(Z)V

    goto :goto_1
.end method
