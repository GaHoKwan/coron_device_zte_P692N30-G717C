.class Lcom/android/mms/ui/CBMessageListActivity$3;
.super Landroid/os/Handler;
.source "CBMessageListActivity.java"


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
    .line 320
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x7f0b0062

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 324
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 326
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/CBMessageListAdapter;->changeSelectedState(J)V

    .line 328
    const-string v1, "CBMessageListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On messageListItem click, changeSelectedState msg.arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/CBMessageListAdapter;->getSelectedNumber()I

    move-result v1

    if-lez v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mDeleteButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$300(Lcom/android/mms/ui/CBMessageListActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/CBMessageListAdapter;->getSelectedNumber()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 332
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #setter for: Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z
    invoke-static {v1, v5}, Lcom/android/mms/ui/CBMessageListActivity;->access$402(Lcom/android/mms/ui/CBMessageListActivity;Z)Z

    goto :goto_0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mDeleteButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$300(Lcom/android/mms/ui/CBMessageListActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #setter for: Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/CBMessageListActivity;->access$402(Lcom/android/mms/ui/CBMessageListActivity;Z)Z

    goto :goto_0

    .line 347
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 348
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v1, "CBMessageListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConversation.getRecipients().size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/CBMessageListActivity;->access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 350
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 353
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$3;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/CBMessageListActivity;->access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method
