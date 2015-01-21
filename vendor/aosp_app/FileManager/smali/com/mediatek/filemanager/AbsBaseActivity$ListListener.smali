.class public Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;
.super Ljava/lang/Object;
.source "AbsBaseActivity.java"

# interfaces
.implements Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AbsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListListener"
.end annotation


# static fields
.field public static final LIST_DIALOG_TAG:Ljava/lang/String; = "ListDialogFragment"


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/AbsBaseActivity;


# direct methods
.method protected constructor <init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected dismissDialogFragment()V
    .locals 3

    .prologue
    .line 761
    const-string v1, "AbsBaseActivity"

    const-string v2, "ListListener dismissDialogFragment"

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ListDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 764
    .local v0, listDialogFragment:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 765
    const-string v1, "AbsBaseActivity"

    const-string v2, "ListListener listDialogFragment != null dismiss"

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 768
    :cond_0
    return-void
.end method

.method public onTaskPrepare()V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public onTaskProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V
    .locals 4
    .parameter "progressInfo"

    .prologue
    const/4 v3, -0x1

    .line 806
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ListDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/ProgressDialogFragment;

    .line 808
    .local v0, listDialogFragment:Lcom/mediatek/filemanager/ProgressDialogFragment;
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    if-nez v0, :cond_0

    .line 810
    const/4 v1, 0x1

    const v2, 0x7f08000c

    invoke-static {v1, v3, v2, v3}, Lcom/mediatek/filemanager/ProgressDialogFragment;->newInstance(IIII)Lcom/mediatek/filemanager/ProgressDialogFragment;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ListDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 817
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/filemanager/ProgressDialogFragment;->setProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V

    .line 819
    :cond_1
    return-void
.end method

.method public onTaskResult(I)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, -0x1

    .line 772
    const-string v1, "AbsBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListListener,TaskResult result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v4, v4, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/filemanager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;ILcom/mediatek/filemanager/FileInfo;)V

    .line 775
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->getFirstCheckedFileInfoItem()Lcom/mediatek/filemanager/FileInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 780
    :goto_0
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 781
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    #calls: Lcom/mediatek/filemanager/AbsBaseActivity;->restoreSelectedPosition()I
    invoke-static {v1}, Lcom/mediatek/filemanager/AbsBaseActivity;->access$500(Lcom/mediatek/filemanager/AbsBaseActivity;)I

    move-result v0

    .line 782
    .local v0, selectedItemPosition:I
    if-ne v0, v5, :cond_2

    .line 783
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 795
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->dismissDialogFragment()V

    .line 796
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/AbsBaseActivity;->onPathChanged()V

    .line 797
    return-void

    .line 777
    .end local v0           #selectedItemPosition:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/filemanager/FileInfoManager;->loadFileInfoList(Ljava/lang/String;I)V

    goto :goto_0

    .line 784
    .restart local v0       #selectedItemPosition:I
    :cond_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedTop:I

    if-eq v1, v5, :cond_3

    .line 786
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedTop:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 787
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iput v5, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedTop:I

    goto :goto_1

    .line 788
    :cond_3
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mTop:I

    if-eq v1, v5, :cond_4

    .line 789
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mTop:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 790
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iput v5, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mTop:I

    goto :goto_1

    .line 792
    :cond_4
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method
