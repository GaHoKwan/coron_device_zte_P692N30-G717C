.class Lcom/android/mms/ui/ConversationList$19;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->showExportDialog(Ljava/util/HashSet;Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;

.field final synthetic val$mode:Landroid/view/ActionMode;

.field final synthetic val$selectedThreadIds:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;Ljava/util/HashSet;Landroid/view/ActionMode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3080
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$19;->this$0:Lcom/android/mms/ui/ConversationList;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$19;->val$selectedThreadIds:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$19;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    .line 3083
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3084
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$19;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$19;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3087
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3117
    :goto_0
    return-void

    .line 3090
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3115
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3116
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$19;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 3093
    :pswitch_0
    const-string v5, "ConversationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onclick threadIds:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$19;->val$selectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$19;->val$selectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 3097
    .local v3, selectThreadIds:[J
    const/4 v0, 0x0

    .line 3098
    .local v0, i:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$19;->val$selectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 3099
    .local v4, threadId:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v0

    .line 3100
    const-string v5, "ConversationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "threadId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3103
    .end local v4           #threadId:Ljava/lang/Long;
    :cond_1
    const/16 v2, 0x7b

    .line 3104
    .local v2, resId:I
    if-ne p2, v8, :cond_2

    .line 3105
    const/16 v2, 0x7c

    .line 3106
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$19;->this$0:Lcom/android/mms/ui/ConversationList;

    iput-boolean v8, v5, Lcom/android/mms/ui/ConversationList;->mIsSendEmail:Z

    .line 3108
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$19;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$19;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$19;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/ConversationList;->mSaveChatHistory:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/mms/ui/ConversationList;->access$5202(Lcom/android/mms/ui/ConversationList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3110
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$19;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mediatek/mms/ipmessage/ChatManager;->saveChatHistory([J)V

    goto/16 :goto_1

    .line 3090
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
