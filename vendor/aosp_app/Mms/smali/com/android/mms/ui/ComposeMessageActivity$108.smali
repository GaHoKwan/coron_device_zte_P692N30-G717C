.class Lcom/android/mms/ui/ComposeMessageActivity$108;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onIpMsgOptionsItemSelected(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$conversationForRemoveSpam:Lcom/android/mms/data/Conversation;

.field final synthetic val$isSpamFromRemove:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12169
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->val$conversationForRemoveSpam:Lcom/android/mms/data/Conversation;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->val$isSpamFromRemove:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 12172
    const-string v3, ","

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->val$conversationForRemoveSpam:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 12173
    .local v2, numbers:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/mms/ipmessage/ContactManager;->getContactIdByNumber(Ljava/lang/String;)S

    move-result v0

    .line 12175
    .local v0, contactId:I
    const/4 v3, 0x1

    new-array v1, v3, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    .line 12176
    .local v1, contactIds:[I
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/mms/ipmessage/ContactManager;->deleteContactFromSpamList([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12178
    const-string v3, "Mms/ipmsg/compose"

    const-string v4, "onIpMsgOptionsItemSelected(): Remove spam failed!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12179
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->val$isSpamFromRemove:Z

    invoke-virtual {v3, v4}, Lcom/android/mms/data/Conversation;->setSpam(Z)V

    .line 12185
    :goto_0
    return-void

    .line 12182
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$108;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->asyncUpdateThreadMuteIcon()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$20900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0
.end method
