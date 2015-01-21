.class Lcom/android/mms/ui/ComposeMessageActivity$126$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$126;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$126;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$126;)V
    .locals 0
    .parameter

    .prologue
    .line 13996
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$126$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$126;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 13998
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$126$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$126;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$126;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hiddeInvitePanel()V

    .line 13999
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$126$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$126;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$126;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$126$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$126;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$126;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mms/ipmessage/ChatManager;->handleInviteDlgLater(J)Z

    .line 14001
    return-void
.end method
