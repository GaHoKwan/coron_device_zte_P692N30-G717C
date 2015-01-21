.class Lcom/android/mms/ui/ComposeMessageActivity$46$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

.field final synthetic val$allList:Lcom/android/mms/data/ContactList;

.field final synthetic val$list:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$46;Lcom/android/mms/data/ContactList;Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5857
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->val$allList:Lcom/android/mms/data/ContactList;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5859
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->val$allList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 5860
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5863
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->commitToChipIfNeeded()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5864
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 5866
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->val$allList:Lcom/android/mms/data/ContactList;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 5867
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5868
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$46$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$46;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$46;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5870
    :cond_1
    return-void
.end method
