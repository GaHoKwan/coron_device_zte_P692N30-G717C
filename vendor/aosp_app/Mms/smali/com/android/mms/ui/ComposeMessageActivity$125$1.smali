.class Lcom/android/mms/ui/ComposeMessageActivity$125$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$125;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$125;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$125;)V
    .locals 0
    .parameter

    .prologue
    .line 13975
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$125$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$125;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 13977
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$125$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$125;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$125;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$125$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$125;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$125;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0xe9

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13980
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$125$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$125;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$125;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hiddeInvitePanel()V

    .line 13981
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$125$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$125;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$125;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$125$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$125;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$125;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mms/ipmessage/ChatManager;->handleInviteDlg(J)Z

    .line 13983
    return-void
.end method
