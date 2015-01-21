.class Lcom/android/mms/ui/ComposeMessageActivity$69;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$updated:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8322
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$updated:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 8325
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v0, :cond_3

    .line 8327
    .local v0, isPortrait:Z
    :goto_0
    const/4 v2, 0x0

    .line 8328
    .local v2, updateLimit:I
    if-eqz v0, :cond_4

    .line 8329
    const/16 v2, 0xa

    .line 8334
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInputWithLimit(ZI)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 8336
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    :goto_2
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMA] onUpdate contact updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$updated:Lcom/android/mms/data/Contact;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 8338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CMA] onUpdate recipients: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 8340
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 8342
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8343
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 8348
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 8357
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInViewContact:Lcom/android/mms/data/Contact;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Contact;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInViewContact:Lcom/android/mms/data/Contact;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$updated:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8358
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInViewContact:Lcom/android/mms/data/Contact;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_6

    .line 8359
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    sget-object v4, Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;->DELETE_CONTACT:Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/RecipientsEditor;->updatePressedChip(Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;)V

    .line 8363
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInViewContact:Lcom/android/mms/data/Contact;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5702(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    .line 8366
    :cond_2
    return-void

    .end local v0           #isPortrait:Z
    .end local v1           #recipients:Lcom/android/mms/data/ContactList;
    .end local v2           #updateLimit:I
    :cond_3
    move v0, v3

    .line 8325
    goto/16 :goto_0

    .line 8331
    .restart local v0       #isPortrait:Z
    .restart local v2       #updateLimit:I
    :cond_4
    const/16 v2, 0x14

    goto/16 :goto_1

    .line 8334
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    goto/16 :goto_2

    .line 8361
    .restart local v1       #recipients:Lcom/android/mms/data/ContactList;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    sget-object v4, Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;->UPDATE_CONTACT:Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/RecipientsEditor;->updatePressedChip(Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;)V

    goto :goto_3
.end method
