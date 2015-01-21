.class public Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;
.super Ljava/lang/Object;
.source "FileManagerOperationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileManagerOperationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeavyOperationListener"
.end annotation


# static fields
.field public static final HEAVY_DIALOG_TAG:Ljava/lang/String; = "HeavyDialogFragment"


# instance fields
.field private mOperationToast:Z

.field private mPermissionToast:Z

.field mTitle:I

.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;I)V
    .locals 2
    .parameter
    .parameter "titleID"

    .prologue
    const/4 v1, 0x0

    .line 1154
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    const v0, 0x7f08000d

    iput v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mTitle:I

    .line 1147
    iput-boolean v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mPermissionToast:Z

    .line 1148
    iput-boolean v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mOperationToast:Z

    .line 1155
    iput p2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mTitle:I

    .line 1156
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick cancel"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->cancel(Ljava/lang/String;)V

    .line 1263
    :cond_0
    return-void
.end method

.method public onTaskPrepare()V
    .locals 5

    .prologue
    .line 1161
    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mTitle:I

    const v3, 0x7f080017

    const v4, 0x7f080019

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/filemanager/ProgressDialogFragment;->newInstance(IIII)Lcom/mediatek/filemanager/ProgressDialogFragment;

    move-result-object v0

    .line 1163
    .local v0, heavyDialogFragment:Lcom/mediatek/filemanager/ProgressDialogFragment;
    invoke-virtual {v0, p0}, Lcom/mediatek/filemanager/ProgressDialogFragment;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "HeavyDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1165
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1166
    return-void
.end method

.method public onTaskProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V
    .locals 4
    .parameter "progressInfo"

    .prologue
    const/4 v3, 0x1

    .line 1170
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->isFailInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1197
    :pswitch_0
    iget-boolean v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mPermissionToast:Z

    if-nez v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 1199
    iput-boolean v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mPermissionToast:Z

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1173
    :pswitch_1
    iget-boolean v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mPermissionToast:Z

    if-nez v1, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 1175
    iput-boolean v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mPermissionToast:Z

    goto :goto_0

    .line 1179
    :pswitch_2
    iget-boolean v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mPermissionToast:Z

    if-nez v1, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f08002e

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 1181
    iput-boolean v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mPermissionToast:Z

    goto :goto_0

    .line 1185
    :pswitch_3
    iget-boolean v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mOperationToast:Z

    if-nez v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 1187
    iput-boolean v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mOperationToast:Z

    goto :goto_0

    .line 1191
    :pswitch_4
    iget-boolean v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mOperationToast:Z

    if-nez v1, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 1193
    iput-boolean v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->mOperationToast:Z

    goto :goto_0

    .line 1205
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "HeavyDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/ProgressDialogFragment;

    .line 1207
    .local v0, heavyDialogFragment:Lcom/mediatek/filemanager/ProgressDialogFragment;
    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {v0, p1}, Lcom/mediatek/filemanager/ProgressDialogFragment;->setProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V

    goto :goto_0

    .line 1171
    nop

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTaskResult(I)V
    .locals 4
    .parameter "errorType"

    .prologue
    .line 1215
    const-string v1, "FileManagerOperationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeavyOperationListener,onTaskResult result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    packed-switch p1, :pswitch_data_0

    .line 1236
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/filemanager/FileInfoManager;->updateFileInfoList(Ljava/lang/String;I)V

    .line 1237
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1240
    :goto_0
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "HeavyDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/ProgressDialogFragment;

    .line 1242
    .local v0, heavyDialogFragment:Lcom/mediatek/filemanager/ProgressDialogFragment;
    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoManager;->getPasteType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1246
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoManager;->clearPasteList()V

    .line 1247
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1254
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1255
    return-void

    .line 1218
    .end local v0           #heavyDialogFragment:Lcom/mediatek/filemanager/ProgressDialogFragment;
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0

    .line 1221
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f080031

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0

    .line 1224
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0

    .line 1227
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0

    .line 1230
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0

    .line 1233
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    goto :goto_0

    .line 1216
    nop

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
