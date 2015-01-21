.class Lcom/android/mms/ui/ComposeMessageActivity$73;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showSimSelectedDialog(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 9107
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 9
    .parameter "dialog"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 9110
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCutRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9111
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9112
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 9113
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9114
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCutRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 9115
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCutRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4802(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    .line 9118
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mOldThreadID:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_0

    .line 9119
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v4, v4, Lcom/android/mms/ui/ComposeMessageActivity;->mOldThreadID:J

    invoke-static {v3, v4, v5}, Lcom/android/mms/data/Conversation;->asyncDeleteObsoleteThreadID(Landroid/content/AsyncQueryHandler;J)V

    .line 9146
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 9147
    return-void

    .line 9122
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCutRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9123
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 9124
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 9125
    .local v0, conv:Lcom/android/mms/data/Conversation;
    const-wide/16 v1, 0x0

    .line 9126
    .local v1, threadId:J
    if-eqz v0, :cond_2

    .line 9127
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 9128
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 9131
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 9132
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsOneSimSelected:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9133
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v4, 0x2537

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(II)V
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10100(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 9134
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsOneSimSelected:Z
    invoke-static {v3, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 9140
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mOldThreadID:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mOldThreadID:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_3

    .line 9141
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean v5, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSameConv:Z

    .line 9142
    const-string v3, "Mms/compose"

    const-string v4, "onDismiss not same thread"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9144
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCutRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4802(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    goto :goto_0

    .line 9136
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
