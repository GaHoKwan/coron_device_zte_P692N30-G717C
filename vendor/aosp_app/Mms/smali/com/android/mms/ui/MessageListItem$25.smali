.class Lcom/android/mms/ui/MessageListItem$25;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->showDownloadButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 3614
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/16 v13, 0x8

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3619
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3670
    :cond_0
    :goto_0
    return-void

    .line 3623
    :cond_1
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/mms/ext/IMmsUtils;

    .line 3625
    .local v9, mMmsUtils:Lcom/mediatek/mms/ext/IMmsUtils;
    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->getComposeContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeviceStorageFullStatus()Z

    move-result v1

    const/4 v2, 0x3

    invoke-interface {v9, v0, v1, v11, v2}, Lcom/mediatek/mms/ext/IMmsUtils;->allowSafeDraft(Landroid/app/Activity;ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3631
    :cond_2
    const/4 v10, 0x0

    .line 3634
    .local v10, simId:I
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string v5, "sim_id"

    aput-object v5, v3, v12

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3637
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 3639
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3640
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 3643
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3648
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStorageFullToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3650
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeviceStorageFullStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3651
    invoke-static {}, Lcom/android/mms/MmsApp;->getToastHandler()Lcom/android/mms/MmsApp$ToastHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3643
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3656
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$4000(Lcom/android/mms/ui/MessageListItem;)Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v11}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V

    .line 3658
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3659
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 3660
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3661
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3662
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3663
    const-string v0, "type"

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3666
    const-string v0, "simId"

    invoke-virtual {v8, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3667
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$4200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3668
    invoke-virtual {p1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 3669
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$25;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMmsMessageListItemPlugin:Lcom/mediatek/mms/ext/IMmsMessageListItem;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$4300(Lcom/android/mms/ui/MessageListItem;)Lcom/mediatek/mms/ext/IMmsMessageListItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMessageListItem;->hideDownloadButton()Z

    goto/16 :goto_0
.end method
