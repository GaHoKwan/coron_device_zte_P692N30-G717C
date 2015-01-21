.class public Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;
.super Ljava/lang/Object;
.source "FileManagerOperationActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileManagerOperationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActionModeCallBack"
.end annotation


# instance fields
.field private mSelectPopupMenu:Landroid/widget/PopupMenu;

.field private mSelectedAll:Z

.field private mTextSelect:Landroid/widget/Button;

.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;


# direct methods
.method protected constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1266
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    .line 1269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectedAll:Z

    .line 1270
    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mTextSelect:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mTextSelect:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1266
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->createSelectPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateSelectPopupMenu()V

    return-void
.end method

.method private createSelectPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .parameter "anchorView"

    .prologue
    .line 1433
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1434
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1435
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1436
    return-object v0
.end method

.method private updateSelectPopupMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0c0024

    .line 1440
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    if-nez v2, :cond_0

    .line 1441
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mTextSelect:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->createSelectPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    .line 1458
    :goto_0
    return-void

    .line 1444
    :cond_0
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1445
    .local v0, menu:Landroid/view/Menu;
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedItemsCount()I

    move-result v1

    .line 1446
    .local v1, selectedCount:I
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1447
    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1449
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1450
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 1451
    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f08001e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1452
    iput-boolean v5, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectedAll:Z

    goto :goto_0

    .line 1454
    :cond_2
    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f08001d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1455
    iput-boolean v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectedAll:Z

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1370
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 1417
    :goto_0
    return v1

    .line 1372
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v4, v4, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/mediatek/filemanager/FileInfoManager;->savePasteList(ILjava/util/List;)V

    .line 1374
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_1
    move v1, v3

    .line 1417
    goto :goto_0

    .line 1377
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/filemanager/FileInfoManager;->savePasteList(ILjava/util/List;)V

    .line 1379
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 1382
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->showDeleteDialog()V

    goto :goto_1

    .line 1385
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #calls: Lcom/mediatek/filemanager/FileManagerOperationActivity;->share()V
    invoke-static {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$900(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V

    goto :goto_1

    .line 1388
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->showRenameDialog()V

    goto :goto_1

    .line 1391
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v4, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    new-instance v6, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;

    iget-object v7, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v8, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v8, v8, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v6, v7, v2}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;)V

    invoke-virtual {v4, v5, v1, v6}, Lcom/mediatek/filemanager/service/FileManagerService;->getDetailInfo(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    goto :goto_1

    .line 1397
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v4, v4, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/filemanager/utils/DrmManager;->showProtectionInfoDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1401
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1402
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 1406
    .end local v0           #path:Ljava/lang/String;
    :pswitch_8
    iget-boolean v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectedAll:Z

    if-eqz v1, :cond_1

    .line 1407
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1, v3}, Lcom/mediatek/filemanager/FileInfoAdapter;->setAllItemChecked(Z)V

    .line 1411
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateActionMode()V

    .line 1412
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 1409
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->setAllItemChecked(Z)V

    goto :goto_2

    .line 1370
    :pswitch_data_0
    .packed-switch 0x7f0c0017
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1274
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1275
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1276
    .local v0, customView:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1277
    const v3, 0x7f0c0003

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mTextSelect:Landroid/widget/Button;

    .line 1278
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mTextSelect:Landroid/widget/Button;

    new-instance v4, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;

    invoke-direct {v4, p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack$1;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1289
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 1290
    .local v2, menuInflater:Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1291
    const/4 v3, 0x1

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 1422
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #calls: Lcom/mediatek/filemanager/FileManagerOperationActivity;->switchToNavigationView()V
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$1000(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V

    .line 1423
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #setter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$202(Lcom/mediatek/filemanager/FileManagerOperationActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1428
    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectPopupMenu:Landroid/widget/PopupMenu;

    .line 1430
    :cond_1
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menuItem"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1462
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1475
    :goto_0
    return v0

    .line 1464
    :pswitch_0
    iget-boolean v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mSelectedAll:Z

    if-eqz v2, :cond_0

    .line 1465
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v1, v1, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/filemanager/FileInfoAdapter;->setAllItemChecked(Z)V

    .line 1469
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateActionMode()V

    .line 1470
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1467
    :cond_0
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v2, v2, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2, v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->setAllItemChecked(Z)V

    goto :goto_1

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0024
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1296
    iget-object v8, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v8, v8, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedItemsCount()I

    move-result v7

    .line 1299
    .local v7, selectedCount:I
    if-nez v7, :cond_3

    .line 1300
    const v8, 0x7f0c0018

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1301
    const v8, 0x7f0c0019

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1302
    const v8, 0x7f0c001a

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1309
    :goto_0
    if-eqz v7, :cond_0

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_4

    .line 1310
    :cond_0
    const v8, 0x7f0c0017

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1335
    :cond_1
    :goto_1
    const v8, 0x7f0c001d

    invoke-interface {p2, v8}, Landroid/view/Menu;->removeItem(I)V

    .line 1337
    if-nez v7, :cond_a

    .line 1338
    const v8, 0x7f0c001b

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1339
    const v8, 0x7f0c001c

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1365
    :cond_2
    :goto_2
    const/4 v8, 0x1

    return v8

    .line 1304
    :cond_3
    const v8, 0x7f0c0018

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1305
    const v8, 0x7f0c0019

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1306
    const v8, 0x7f0c001a

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1311
    :cond_4
    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1312
    iget-object v8, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v8, v8, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    .line 1313
    .local v1, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v8

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/filemanager/utils/DrmManager;->isRightsStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1316
    :cond_6
    const v8, 0x7f0c0017

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1318
    :cond_7
    const v8, 0x7f0c0017

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1321
    .end local v1           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_8
    const v8, 0x7f0c0017

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1322
    iget-object v8, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v8, v8, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v2

    .line 1323
    .local v2, files:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/filemanager/FileInfo;

    .line 1324
    .local v4, info:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 1325
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1327
    const v8, 0x7f0c0017

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1340
    .end local v0           #file:Ljava/io/File;
    .end local v2           #files:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/mediatek/filemanager/FileInfo;
    :cond_a
    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 1342
    const v8, 0x7f0c001c

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1344
    iget-object v8, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v8, v8, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1345
    const v8, 0x7f0c001b

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1348
    :cond_b
    iget-object v8, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v8, v8, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    .line 1349
    .restart local v1       #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1350
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1351
    .local v6, path:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mediatek/filemanager/utils/DrmManager;->checkDrmObjectType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1352
    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mediatek/filemanager/utils/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1353
    .local v5, mimeType:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 1354
    const/4 v8, 0x0

    const v9, 0x7f0c001d

    const/4 v10, 0x0

    const v11, 0x2050062

    invoke-interface {p2, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1361
    .end local v1           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #path:Ljava/lang/String;
    :cond_c
    const v8, 0x7f0c001c

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1363
    const v8, 0x7f0c001b

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2
.end method

.method public updateActionMode()V
    .locals 6

    .prologue
    const v5, 0x7f080025

    .line 1479
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v3}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedItemsCount()I

    move-result v2

    .line 1480
    .local v2, selectedCount:I
    const-string v1, ""

    .line 1481
    .local v1, selected:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1483
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1490
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1491
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->mTextSelect:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v3, v3, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-direct {v3}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateSelectPopupMenu()V

    .line 1494
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1495
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #getter for: Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 1497
    :cond_0
    return-void

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1486
    goto :goto_0

    .line 1488
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
