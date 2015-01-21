.class Lcom/android/mms/ui/CBMessageListActivity$2;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CBMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CBMessageListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$2;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/CBMessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$2;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$2;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$2;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #calls: Lcom/android/mms/ui/CBMessageListActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$100(Lcom/android/mms/ui/CBMessageListActivity;)V

    .line 306
    return-void
.end method
