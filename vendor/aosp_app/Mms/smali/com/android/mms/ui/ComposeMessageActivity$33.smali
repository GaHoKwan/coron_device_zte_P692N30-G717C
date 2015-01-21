.class Lcom/android/mms/ui/ComposeMessageActivity$33;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onResume()V
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
    .line 4146
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v6, 0xa

    .line 4151
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInputWithLimit(ZI)Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 4154
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4156
    .local v2, min:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 4157
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->reload()V

    .line 4156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4151
    .end local v1           #i:I
    .end local v2           #min:I
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v3

    goto :goto_0

    .line 4160
    .restart local v1       #i:I
    .restart local v2       #min:I
    .restart local v3       #recipients:Lcom/android/mms/data/ContactList;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4161
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientsEditor;->getLastContactInEditor()Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 4162
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_2

    .line 4163
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 4166
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$33$1;

    invoke-direct {v5, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$33$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$33;Lcom/android/mms/data/ContactList;)V

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4171
    return-void
.end method
