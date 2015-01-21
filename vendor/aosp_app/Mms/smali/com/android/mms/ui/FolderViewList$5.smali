.class Lcom/android/mms/ui/FolderViewList$5;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderViewList;->confirmDeleteMessageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderViewList;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    iput-object p2, p0, Lcom/android/mms/ui/FolderViewList$5;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "mDialog"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x1

    .line 933
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 934
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-static {v4}, Lcom/android/mms/ui/DeleteProgressDialogUtil;->getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V

    .line 936
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;->showProgressDialog()V

    .line 937
    const/4 v1, 0x0

    .line 938
    .local v1, mDeleteUri:Landroid/net/Uri;
    sget v3, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    if-nez v3, :cond_2

    .line 939
    const-string v3, "content://mms-sms/folder_delete/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 954
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1700(Lcom/android/mms/ui/FolderViewList;)Ljava/lang/String;

    move-result-object v2

    .line 955
    .local v2, whereClause:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 956
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1700(Lcom/android/mms/ui/FolderViewList;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v2, " locked=0 "

    .line 958
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v3

    const/16 v4, 0x3e9

    invoke-static {v3, v4, v1, v2}, Lcom/android/mms/data/FolderView;->startDeleteBoxMessage(Landroid/content/AsyncQueryHandler;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 959
    return-void

    .line 940
    .end local v2           #whereClause:Ljava/lang/String;
    :cond_2
    sget v3, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    if-ne v3, v6, :cond_3

    .line 941
    const-string v3, "content://mms-sms/folder_delete/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, 0x4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 942
    :cond_3
    sget v3, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 943
    const-string v3, "content://mms-sms/folder_delete/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, 0x3

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 944
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 945
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, -0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 946
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 947
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 948
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 950
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_4
    sget v3, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 951
    const-string v3, "content://mms-sms/folder_delete/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 956
    .restart local v2       #whereClause:Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList$5;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/FolderViewList;->access$1700(Lcom/android/mms/ui/FolderViewList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND locked=0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
