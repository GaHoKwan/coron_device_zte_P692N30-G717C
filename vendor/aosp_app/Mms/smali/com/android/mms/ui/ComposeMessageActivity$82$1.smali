.class Lcom/android/mms/ui/ComposeMessageActivity$82$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$82;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$82;)V
    .locals 0
    .parameter

    .prologue
    .line 9611
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 9618
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9619
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v3

    .line 9623
    .local v3, recipientsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9625
    .local v2, newRecipientsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17000(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget v5, v5, Lcom/android/mms/ui/ComposeMessageActivity$82;->val$mmsLimitCount:I

    mul-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    .line 9626
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->val$mmsLimitCount:I

    if-ge v0, v4, :cond_1

    .line 9627
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9626
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9621
    .end local v0           #i:I
    .end local v2           #newRecipientsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #recipientsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v3       #recipientsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 9629
    .restart local v0       #i:I
    .restart local v2       #newRecipientsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Ljava/util/List;)V

    .line 9638
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->simSelection()V
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 9642
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 9643
    .local v1, list:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCutRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4802(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    .line 9644
    return-void

    .line 9631
    .end local v0           #i:I
    .end local v1           #list:Lcom/android/mms/data/ContactList;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17000(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0       #i:I
    :goto_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->val$mmsLimitCount:I

    if-lt v0, v4, :cond_3

    .line 9632
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9631
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 9634
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$82$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$82;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity$82;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Ljava/util/List;)V

    .line 9636
    move-object v2, v3

    goto :goto_2
.end method
