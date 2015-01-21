.class Lcom/android/mms/ui/ChatPreferenceActivity$4;
.super Ljava/lang/Object;
.source "ChatPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$4;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x1

    .line 547
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$4;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #setter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mFromDownload:Z
    invoke-static {v1, v6}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$402(Lcom/android/mms/ui/ChatPreferenceActivity;Z)Z

    .line 548
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$4;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$4;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity$4;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-static {v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v4

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mSaveChatHistory:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$502(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 551
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$4;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;

    move-result-object v0

    .line 552
    .local v0, chatManager:Lcom/mediatek/mms/ipmessage/ChatManager;
    new-array v1, v6, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$4;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$300(Lcom/android/mms/ui/ChatPreferenceActivity;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ChatManager;->saveChatHistory([J)V

    .line 553
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 554
    return-void
.end method
