.class final Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;
.super Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;
.source "WPMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WPMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field private dialog:Lcom/android/mms/ui/NewProgressDialog;

.field final synthetic this$0:Lcom/android/mms/ui/WPMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/WPMessageActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    .line 818
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 819
    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 3

    .prologue
    .line 833
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    if-nez v1, :cond_0

    .line 834
    const-string v1, "Mms/WapPush"

    const-string v2, "mDialog is null!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/NewProgressDialog;->setDismiss(Z)V

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/NewProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/WapPush"

    const-string v2, "ignore IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 909
    const/16 v1, 0x25e4

    if-ne p1, v1, :cond_0

    instance-of v1, p2, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 910
    check-cast v0, Ljava/util/HashSet;

    .line 911
    .local v0, msgIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/WPMessageListAdapter;->deleteCachedItems(Ljava/util/HashSet;)V

    .line 914
    .end local v0           #msgIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 933
    :goto_0
    return-void

    .line 920
    :pswitch_0
    invoke-static {}, Lcom/android/mms/ui/WPMessageActivity;->access$200()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 921
    invoke-static {}, Lcom/android/mms/ui/WPMessageActivity;->access$210()I

    .line 922
    const-string v1, "Mms/WapPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "igonre a onDeleteComplete,mDeleteCounter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/WPMessageActivity;->access$200()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 925
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/WPMessageActivity;->access$202(I)I

    .line 926
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    const-wide/16 v2, -0x2

    invoke-static {v1, v2, v3}, Lcom/android/mms/transaction/WapPushMessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;J)V

    .line 928
    invoke-virtual {p0}, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->dismissProgressDialog()V

    goto :goto_0

    .line 914
    :pswitch_data_0
    .packed-switch 0x25e4
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 851
    packed-switch p1, :pswitch_data_0

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 854
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v3, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 856
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$300(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 857
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionModeListener:Lcom/android/mms/ui/WPMessageActivity$ModeCallback;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$400(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$ModeCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->confirmSyncCheckedPositons()V

    .line 863
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 865
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 866
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mEmptyViewDefault:Landroid/view/View;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$900(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 870
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mNeedToMarkAsSeen:Z
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$1000(Lcom/android/mms/ui/WPMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 871
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #setter for: Lcom/android/mms/ui/WPMessageActivity;->mNeedToMarkAsSeen:Z
    invoke-static {v3, v5}, Lcom/android/mms/ui/WPMessageActivity;->access$1002(Lcom/android/mms/ui/WPMessageActivity;Z)Z

    .line 872
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/WPMessageActivity;->markAllMessageAsSeen()V

    goto :goto_0

    .line 859
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v3, :cond_1

    .line 860
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/WPMessageListAdapter;->uncheckAll()V

    goto :goto_1

    .line 868
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mEmptyViewDefault:Landroid/view/View;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$900(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 876
    :pswitch_1
    const/4 v0, 0x0

    .line 877
    .local v0, count:I
    if-eqz p3, :cond_4

    .line 879
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 880
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_4
    const/16 v3, 0x63

    if-le v0, v3, :cond_5

    .line 884
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mUnreadConvCount:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$1100(Lcom/android/mms/ui/WPMessageActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "99+"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    :goto_3
    new-instance v1, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;

    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;-><init>(Landroid/content/res/Resources;)V

    .line 892
    .local v1, res:Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;->getThemeMainColor()I

    move-result v2

    .line 893
    .local v2, textColor:I
    if-eqz v2, :cond_0

    .line 894
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mUnreadConvCount:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$1100(Lcom/android/mms/ui/WPMessageActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 886
    .end local v1           #res:Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;
    .end local v2           #textColor:I
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mUnreadConvCount:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$1100(Lcom/android/mms/ui/WPMessageActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-lez v0, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x2537
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    .line 823
    return-void
.end method

.method public showProgressDialog()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->dialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 829
    :cond_0
    return-void
.end method
