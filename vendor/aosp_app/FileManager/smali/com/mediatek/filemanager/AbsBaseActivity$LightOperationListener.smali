.class public Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;
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
    name = "LightOperationListener"
.end annotation


# instance fields
.field mDstName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/filemanager/AbsBaseActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "dstName"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->mDstName:Ljava/lang/String;

    .line 827
    iput-object p2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->mDstName:Ljava/lang/String;

    .line 828
    return-void
.end method


# virtual methods
.method public onTaskPrepare()V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method public onTaskProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V
    .locals 0
    .parameter "progressInfo"

    .prologue
    .line 877
    return-void
.end method

.method public onTaskResult(I)V
    .locals 8
    .parameter "errorType"

    .prologue
    .line 832
    const-string v2, "AbsBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LightOperationListener,TaskResult result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    packed-switch p1, :pswitch_data_0

    .line 865
    :pswitch_0
    const-string v2, "AbsBaseActivity"

    const-string v3, "wrong errorType for LightOperationListener"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 836
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget v4, v4, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/filemanager/FileInfoManager;->updateOneFileInfoList(Ljava/lang/String;I)Lcom/mediatek/filemanager/FileInfo;

    move-result-object v0

    .line 837
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 838
    if-eqz v0, :cond_0

    .line 839
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2, v0}, Lcom/mediatek/filemanager/FileInfoAdapter;->getPosition(Lcom/mediatek/filemanager/FileInfo;)I

    move-result v1

    .line 840
    .local v1, postion:I
    const-string v2, "AbsBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LightOperation postion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 842
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 847
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v1           #postion:I
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->mDstName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 848
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080038

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->mDstName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0

    .line 856
    :pswitch_4
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v3, 0x7f08003d

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0

    .line 859
    :pswitch_5
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto/16 :goto_0

    .line 862
    :pswitch_6
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$LightOperationListener;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto/16 :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
