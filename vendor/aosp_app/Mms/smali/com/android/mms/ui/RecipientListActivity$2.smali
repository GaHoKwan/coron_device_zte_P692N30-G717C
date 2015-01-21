.class Lcom/android/mms/ui/RecipientListActivity$2;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    #getter for: Lcom/android/mms/ui/RecipientListActivity;->mConv:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientListActivity;->access$100(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/RecipientListActivity;->mContacts:Lcom/android/mms/data/ContactList;
    invoke-static {v1, v2}, Lcom/android/mms/ui/RecipientListActivity;->access$002(Lcom/android/mms/ui/RecipientListActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    #getter for: Lcom/android/mms/ui/RecipientListActivity;->mContacts:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientListActivity;->access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    #getter for: Lcom/android/mms/ui/RecipientListActivity;->mContacts:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientListActivity;->access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/Contact;->reload(Z)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method
