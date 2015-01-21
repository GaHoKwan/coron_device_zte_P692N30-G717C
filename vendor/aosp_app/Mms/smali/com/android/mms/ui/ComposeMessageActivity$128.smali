.class Lcom/android/mms/ui/ComposeMessageActivity$128;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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
    .line 14036
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$128;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 14039
    const-string v0, "Mms/noti"

    const-string v1, "send chat mode, stop typing"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14040
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$128;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mChatModeNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21700(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14041
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$128;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$128;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mChatModeNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21700(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mms/ipmessage/ChatManager;->sendChatMode(Ljava/lang/String;I)V

    .line 14044
    :cond_0
    return-void
.end method
