.class public Lcom/mediatek/filemanager/FileManagerOperationActivity;
.super Lcom/mediatek/filemanager/AbsBaseActivity;
.source "FileManagerOperationActivity.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/filemanager/FileManagerOperationActivity$1;,
        Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;,
        Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;,
        Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;,
        Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;,
        Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;,
        Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;,
        Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;
    }
.end annotation


# static fields
.field private static final CURRENT_POSTION_KEY:Ljava/lang/String; = "current_postion_key"

.field private static final CURRENT_TOP_KEY:Ljava/lang/String; = "current_top_key"

.field private static final CURRENT_VIEW_MODE_KEY:Ljava/lang/String; = "view_mode_key"

.field public static final DELETE_DIALOG_TAG:Ljava/lang/String; = "delete_dialog_fragment_tag"

.field private static final DETAIL_INFO_KEY:Ljava/lang/String; = "detail_info_key"

.field public static final FORBIDDEN_DIALOG_TAG:Ljava/lang/String; = "forbidden_dialog_fragment_tag"

.field public static final INTENT_EXTRA_SELECT_PATH:Ljava/lang/String; = "select_path"

.field private static final MAX_SHARE_FILES_COUNT:I = 0x7d0

.field private static final NEW_FILE_PATH_KEY:Ljava/lang/String; = "new_file_path_key"

.field private static final PREF_SORT_BY:Ljava/lang/String; = "pref_sort_by"

.field public static final RENAME_DIALOG_TAG:Ljava/lang/String; = "rename_dialog_fragment_tag"

.field public static final RENAME_EXTENSION_DIALOG_TAG:Ljava/lang/String; = "rename_extension_dialog_fragment_tag"

.field private static final SAVED_SELECTED_PATH_KEY:Ljava/lang/String; = "saved_selected_path"

.field private static final SAVED_SELECTED_TOP_KEY:Ljava/lang/String; = "saved_selected_top_key"

.field private static final TAG:Ljava/lang/String; = "FileManagerOperationActivity"

.field private static final TXT_MIME_TYPE:Ljava/lang/String; = "text/plain"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field public final mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

.field private mIsConfigChanged:Z

.field private mNavigationView:Landroid/view/View;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOrientationConfig:I

.field private mTxtFile:Lcom/mediatek/filemanager/FileInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;-><init>()V

    .line 118
    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mNavigationView:Landroid/view/View;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mIsConfigChanged:Z

    .line 122
    new-instance v0, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-direct {v0, p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V

    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    .line 124
    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mTxtFile:Lcom/mediatek/filemanager/FileInfo;

    .line 1266
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->switchToNavigationView()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/filemanager/FileManagerOperationActivity;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/filemanager/FileManagerOperationActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/filemanager/FileManagerOperationActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->setPrefsSortBy(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->sortFileInfoList()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->share()V

    return-void
.end method

.method private getPrefsSortBy()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 801
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 802
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_sort_by"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private restoreViewMode(III)V
    .locals 4
    .parameter "mode"
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    if-ne p1, v3, :cond_1

    .line 303
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 304
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1, p1}, Lcom/mediatek/filemanager/FileInfoAdapter;->changeMode(I)V

    .line 305
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    .line 306
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateActionMode()V

    .line 307
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "saved_selected_path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, saveSelectedPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    new-instance v1, Lcom/mediatek/filemanager/FileInfo;

    invoke-direct {v1, v0}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedFileInfo:Lcom/mediatek/filemanager/FileInfo;

    .line 310
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "saved_selected_top_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSelectedTop:I

    .line 318
    .end local v0           #saveSelectedPath:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p2, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 319
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mNavigationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 315
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->changeMode(I)V

    .line 316
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private setPrefsSortBy(I)V
    .locals 2
    .parameter "sort"

    .prologue
    .line 789
    iput p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    .line 790
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 791
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_sort_by"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 792
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 793
    return-void
.end method

.method private share()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 482
    const/4 v3, 0x0

    .line 483
    .local v3, forbidden:Z
    const/4 v2, 0x0

    .line 484
    .local v2, files:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v8, sendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/FileInfoAdapter;->isMode(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 487
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v10}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v2

    .line 493
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v11, :cond_5

    .line 495
    const-string v10, "FileManagerOperationActivity"

    const-string v11, "Share multiple files"

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/filemanager/FileInfo;

    .line 497
    .local v5, info:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v5}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v10

    invoke-virtual {v5}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/utils/DrmManager;->isRightsStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 499
    const/4 v3, 0x1

    .line 506
    .end local v5           #info:Lcom/mediatek/filemanager/FileInfo;
    :cond_0
    if-nez v3, :cond_1

    .line 507
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v11, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-static {v10, v11, v2}, Lcom/mediatek/filemanager/utils/FileUtils;->getMultipleMimeType(Lcom/mediatek/filemanager/service/FileManagerService;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v6, v10, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 513
    const v10, 0x7f080026

    :try_start_0
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    if-eqz v3, :cond_9

    .line 556
    const v10, 0x20500da

    const v11, 0x20500db

    invoke-virtual {p0, v10, v11}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->showForbiddenDialog(II)V

    .line 563
    :cond_2
    :goto_2
    return-void

    .line 489
    :cond_3
    const-string v10, "FileManagerOperationActivity"

    const-string v11, "Maybe dispatch events twice, view mode error."

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 503
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #info:Lcom/mediatek/filemanager/FileInfo;
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/filemanager/FileInfo;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    .end local v5           #info:Lcom/mediatek/filemanager/FileInfo;
    .restart local v6       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v10, "FileManagerOperationActivity"

    const-string v11, "Cannot find any activity"

    invoke-static {v10, v11, v0}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 523
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_5
    const-string v10, "FileManagerOperationActivity"

    const-string v11, "Share a single file"

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/FileInfo;

    .line 525
    .local v1, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {v1, v10}, Lcom/mediatek/filemanager/FileInfo;->getFileMimeType(Lcom/mediatek/filemanager/service/FileManagerService;)Ljava/lang/String;

    move-result-object v7

    .line 527
    .local v7, mimeType:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v10

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/utils/DrmManager;->isRightsStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 529
    const/4 v3, 0x1

    .line 532
    :cond_6
    if-eqz v7, :cond_7

    const-string v10, "unknown"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 533
    :cond_7
    const-string v7, "application/zip"

    .line 536
    :cond_8
    if-nez v3, :cond_1

    .line 537
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 538
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/mediatek/filemanager/utils/FileUtils;->tryContentMediaUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 542
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 543
    const-string v10, "FileManagerOperationActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Share Uri file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v10, "FileManagerOperationActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Share file mimetype: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const v10, 0x7f080026

    :try_start_1
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 548
    :catch_1
    move-exception v0

    .line 549
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v10, "FileManagerOperationActivity"

    const-string v11, "Cannot find any activity"

    invoke-static {v10, v11, v0}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 559
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_9
    iget-object v10, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v10, :cond_2

    .line 560
    iget-object v10, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v10}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_2
.end method

.method private sortFileInfoList()V
    .locals 3

    .prologue
    .line 768
    const-string v1, "FileManagerOperationActivity"

    const-string v2, "Start sortFileInfoList()"

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 774
    .local v0, selection:I
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    iget v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/FileInfoManager;->sort(I)V

    .line 775
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 776
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 779
    const-string v1, "FileManagerOperationActivity"

    const-string v2, "End sortFileInfoList()"

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method private switchToEditView()V
    .locals 2

    .prologue
    .line 469
    const-string v0, "FileManagerOperationActivity"

    const-string v1, "Switch to edit view"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->changeMode(I)V

    .line 472
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    .line 473
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateActionMode()V

    .line 474
    return-void
.end method

.method private switchToEditView(II)V
    .locals 3
    .parameter "position"
    .parameter "top"

    .prologue
    .line 462
    const-string v0, "FileManagerOperationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToEditView position and top"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->setChecked(IZ)V

    .line 464
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 465
    invoke-direct {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->switchToEditView()V

    .line 466
    return-void
.end method

.method private switchToNavigationView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    const-string v0, "FileManagerOperationActivity"

    const-string v1, "Switch to navigation view"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/FileInfoAdapter;->changeMode(I)V

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 459
    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 222
    const-string v5, "FileManagerOperationActivity"

    const-string v6, "Call createBeamUris() in FileManagerOperationActivity."

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkBeamSurpported()Z

    move-result v5

    if-nez v5, :cond_0

    .line 225
    const-string v5, "FileManagerOperationActivity"

    const-string v6, "MtkBeam is not surpport!"

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-object v4

    .line 229
    :cond_0
    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/filemanager/FileInfoAdapter;->isMode(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 230
    const-string v5, "FileManagerOperationActivity"

    const-string v6, "current mode is not Edit Mode."

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v5}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedItemsCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 234
    const-string v5, "FileManagerOperationActivity"

    const-string v6, "Edit Mode; select count == 0."

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_2
    const/4 v1, 0x0

    .line 239
    .local v1, fileInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/filemanager/FileInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v3, sendFiles:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v5}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v1

    .line 241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 242
    .local v0, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 243
    const v5, 0x7f080045

    const v6, 0x7f080046

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->showForbiddenDialog(II)V

    goto :goto_0

    .line 248
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/FileInfo;

    .line 250
    .restart local v0       #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/filemanager/utils/DrmManager;->isRightsStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_7

    .line 253
    :cond_6
    const v5, 0x7f080047

    const v6, 0x7f080048

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->showForbiddenDialog(II)V

    goto/16 :goto_0

    .line 257
    :cond_7
    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    .end local v0           #fileInfo:Lcom/mediatek/filemanager/FileInfo;
    :cond_8
    const-string v5, "FileManagerOperationActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number of sending files is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Landroid/net/Uri;

    .line 261
    .local v4, uris:[Landroid/net/Uri;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method protected initCurrentFileInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1005
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "select_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1007
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    .end local v0           #file:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1011
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #path:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v3, 0x7f080039

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(Ljava/lang/String;)V

    .line 1013
    .end local v0           #file:Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/MountPointManager;->getRootPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 632
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    const-string v2, "FileManagerOperationActivity"

    const-string v3, "onClick, service is busy,return."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 637
    .local v0, id:I
    const-string v2, "FileManagerOperationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick,id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/MountPointManager;->isRootPathMount(Ljava/lang/String;)Z

    move-result v1

    .line 640
    .local v1, isMounted:Z
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/FileInfoAdapter;->isMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 641
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateActionMode()V

    .line 642
    const-string v2, "FileManagerOperationActivity"

    const-string v3, "onClick,retuen."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_1
    invoke-super {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1031
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1032
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mOrientationConfig:I

    if-eq v0, v1, :cond_0

    .line 1033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mIsConfigChanged:Z

    .line 1034
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mOrientationConfig:I

    .line 1036
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    const-string v0, "FileManagerOperationActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->getPrefsSortBy()I

    move-result v0

    iput v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    .line 199
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mOrientationConfig:I

    .line 201
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 202
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 203
    const-string v0, "FileManagerOperationActivity"

    const-string v1, "mNfcAdapter == null"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkBeamSurpported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0, p0}, Landroid/nfc/NfcAdapter;->setMtkBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 0
    .parameter "unMountPoint"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->onEjected(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v8, "FileManagerOperationActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick, position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 569
    const-string v8, "FileManagerOperationActivity"

    const-string v9, "onItemClick, service is busy,return. "

    invoke-static {v8, v9}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/mediatek/filemanager/FileInfoAdapter;->isMode(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 573
    const-string v8, "FileManagerOperationActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick,Selected position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v8

    if-ge p3, v8, :cond_2

    if-gez p3, :cond_3

    .line 576
    :cond_2
    const-string v8, "FileManagerOperationActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick,events error,mFileInfoList.size(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v10}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/filemanager/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_3
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8, p3}, Lcom/mediatek/filemanager/FileInfoAdapter;->getItem(I)Lcom/mediatek/filemanager/FileInfo;

    move-result-object v4

    .line 582
    .local v4, selecteItemFileInfo:Lcom/mediatek/filemanager/FileInfo;
    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 583
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 584
    .local v6, top:I
    const-string v8, "FileManagerOperationActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick,fromTop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/filemanager/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p0, v8, v4, v6}, Lcom/mediatek/filemanager/AbsBaseActivity;->addToNavigationList(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;I)V

    .line 586
    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    .end local v6           #top:I
    :cond_4
    const/4 v0, 0x1

    .line 590
    .local v0, canOpen:Z
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {v4, v8}, Lcom/mediatek/filemanager/FileInfo;->getFileMimeType(Lcom/mediatek/filemanager/service/FileManagerService;)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfo;->isDrmFile()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 593
    invoke-static {}, Lcom/mediatek/filemanager/utils/DrmManager;->getInstance()Lcom/mediatek/filemanager/utils/DrmManager;

    move-result-object v8

    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/filemanager/utils/DrmManager;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 597
    const/4 v0, 0x0

    .line 598
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v9, 0x7f080033

    invoke-virtual {v8, v9}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 602
    :cond_5
    if-eqz v0, :cond_0

    .line 603
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 605
    .local v7, uri:Landroid/net/Uri;
    const-string v8, "FileManagerOperationActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick,Open uri file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    if-eqz v3, :cond_6

    const-string v8, "text/plain"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 608
    iput-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mTxtFile:Lcom/mediatek/filemanager/FileInfo;

    .line 612
    :cond_6
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mTxtFile:Lcom/mediatek/filemanager/FileInfo;

    .line 615
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v9, 0x7f080033

    invoke-virtual {v8, v9}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 616
    const-string v8, "FileManagerOperationActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick,Cannot open file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    .end local v0           #canOpen:Z
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #selecteItemFileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_7
    const-string v8, "FileManagerOperationActivity"

    const-string v9, "onItemClick,edit view ."

    invoke-static {v8, v9}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8, p3}, Lcom/mediatek/filemanager/FileInfoAdapter;->getItem(I)Lcom/mediatek/filemanager/FileInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileInfo;->isChecked()Z

    move-result v5

    .line 624
    .local v5, state:Z
    iget-object v9, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    if-nez v5, :cond_8

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, p3, v8}, Lcom/mediatek/filemanager/FileInfoAdapter;->setChecked(IZ)V

    .line 625
    iget-object v8, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-virtual {v8}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateActionMode()V

    .line 626
    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 624
    :cond_8
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 1018
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v2, v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->isMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1021
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1022
    .local v0, top:I
    invoke-direct {p0, p3, v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->switchToEditView(II)V

    .line 1023
    const/4 v1, 0x1

    .line 1026
    .end local v0           #top:I
    :cond_0
    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 991
    const-string v2, "select_path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 993
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 994
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 995
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v3, 0x7f080039

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(Ljava/lang/String;)V

    .line 996
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/MountPointManager;->getRootPath()Ljava/lang/String;

    move-result-object v1

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/filemanager/AbsBaseActivity;->addToNavigationList(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;I)V

    .line 999
    invoke-virtual {p0, v1}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 1001
    .end local v0           #file:Ljava/io/File;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 715
    const-string v0, "FileManagerOperationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "FileManagerOperationActivity"

    const-string v1, "onOptionsItemSelected,service is busy. "

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 758
    :goto_0
    return v0

    .line 722
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 756
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 724
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->showCreateFolderDialog()V

    :cond_1
    :goto_1
    move v0, v7

    .line 758
    goto :goto_0

    .line 727
    :pswitch_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 728
    .local v6, intent:Landroid/content/Intent;
    const-class v0, Lcom/mediatek/filemanager/FileManagerSearchActivity;

    invoke-virtual {v6, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 729
    const-string v0, "current_path"

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const/high16 v0, 0x1000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 731
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 734
    .end local v6           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfoManager;->getPasteList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfoManager;->getPasteType()I

    move-result v4

    new-instance v5, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;

    const v8, 0x7f08000b

    invoke-direct {v5, p0, v8}, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;I)V

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/filemanager/service/FileManagerService;->pasteFiles(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    goto :goto_1

    .line 741
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->showSortDialog()V

    goto :goto_1

    .line 744
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_1

    .line 745
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->changePrefsShowHidenFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/filemanager/service/FileManagerService;->setListType(ILjava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    new-instance v3, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;

    invoke-direct {v3, p0}, Lcom/mediatek/filemanager/AbsBaseActivity$ListListener;-><init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/filemanager/service/FileManagerService;->listFiles(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    goto :goto_1

    .line 745
    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    .line 753
    :pswitch_5
    invoke-direct {p0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->switchToEditView()V

    goto :goto_1

    .line 722
    :pswitch_data_0
    .packed-switch 0x7f0c001e
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onPathChanged()V
    .locals 1

    .prologue
    .line 1040
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->onPathChanged()V

    .line 1041
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateActionMode()V

    .line 1044
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f0c001e

    const v6, 0x7f0c0022

    const v5, 0x7f0c001f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 650
    const-string v1, "FileManagerOperationActivity"

    const-string v2, "onPrepareOptionsMenu..."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 652
    .local v0, inflater:Landroid/view/MenuInflater;
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 653
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-nez v1, :cond_1

    .line 654
    const-string v1, "FileManagerOperationActivity"

    const-string v2, "onPrepareOptionsMenu, invalid service,return true."

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_0
    :goto_0
    return v4

    .line 658
    :cond_1
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 659
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 660
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 661
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 662
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 663
    const v1, 0x7f0c0020

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 665
    const v1, 0x7f0c0021

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 666
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->getPrefsShowHidenFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f080024

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 671
    :goto_1
    const v1, 0x7f0c0023

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 669
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f080023

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 675
    :cond_3
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mFileInfoManager:Lcom/mediatek/filemanager/FileInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoManager;->getPasteCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 676
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 677
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 682
    :goto_2
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_6

    .line 683
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 684
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 689
    :goto_3
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 690
    const v1, 0x7f0c0020

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 695
    :goto_4
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->getPrefsShowHidenFile()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 696
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f080024

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 700
    :goto_5
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 702
    :cond_4
    const v1, 0x7f0c0021

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 707
    :goto_6
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionModeCallBack:Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;

    invoke-virtual {v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$ActionModeCallBack;->updateActionMode()V

    goto/16 :goto_0

    .line 679
    :cond_5
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 680
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 686
    :cond_6
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 692
    :cond_7
    const v1, 0x7f0c0020

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 698
    :cond_8
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f080023

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 704
    :cond_9
    const v1, 0x7f0c0021

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mTxtFile:Lcom/mediatek/filemanager/FileInfo;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mTxtFile:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mTxtFile:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfo;->getNewModifiedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mTxtFile:Lcom/mediatek/filemanager/FileInfo;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/FileInfo;->updateFileInfo()V

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mTxtFile:Lcom/mediatek/filemanager/FileInfo;

    .line 217
    :cond_1
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->onResume()V

    .line 218
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v6, 0x0

    .line 400
    invoke-super {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 402
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v7}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedItemsCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 403
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v7}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedFileInfoItemsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/filemanager/FileInfo;

    .line 404
    .local v3, selectFileInfo:Lcom/mediatek/filemanager/FileInfo;
    if-eqz v3, :cond_1

    .line 405
    const-string v7, "saved_selected_path"

    invoke-virtual {v3}, Lcom/mediatek/filemanager/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v7, v3}, Lcom/mediatek/filemanager/FileInfoAdapter;->getPosition(Lcom/mediatek/filemanager/FileInfo;)I

    move-result v1

    .line 407
    .local v1, pos:I
    const-string v7, "FileManagerOperationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSaveInstanceSteate selected pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 409
    .local v5, view:Landroid/view/View;
    const/4 v4, -0x1

    .line 410
    .local v4, top:I
    if-eqz v5, :cond_0

    .line 411
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 413
    :cond_0
    const-string v7, "saved_selected_top_key"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    .end local v1           #pos:I
    .end local v3           #selectFileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v7}, Lcom/mediatek/filemanager/FileInfoAdapter;->getMode()I

    move-result v0

    .line 417
    .local v0, currentMode:I
    :goto_0
    const-string v7, "view_mode_key"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 419
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 420
    .restart local v5       #view:Landroid/view/View;
    iget-object v6, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 421
    .local v2, position:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 422
    .restart local v4       #top:I
    const-string v6, "current_postion_key"

    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v6, "current_top_key"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    .end local v2           #position:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_2
    return-void

    .end local v0           #currentMode:I
    :cond_3
    move v0, v6

    .line 416
    goto :goto_0
.end method

.method public onUnMounted(Ljava/lang/String;)V
    .locals 7
    .parameter "unMountPoint"

    .prologue
    .line 137
    const-string v4, "FileManagerOperationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUnMounted,unMountPoint :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v4}, Lcom/mediatek/filemanager/FileInfoAdapter;->getMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    .line 142
    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "HeavyDialogFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/ProgressDialogFragment;

    .line 147
    .local v1, pf:Lcom/mediatek/filemanager/ProgressDialogFragment;
    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 152
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "detaildialogtag"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment;

    .line 155
    .local v0, af:Lcom/mediatek/filemanager/AlertDialogFragment;
    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 160
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "delete_dialog_fragment_tag"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0           #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment;

    .line 161
    .restart local v0       #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 165
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "rename_extension_dialog_fragment_tag"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0           #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment;

    .line 167
    .restart local v0       #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    if-eqz v0, :cond_5

    .line 168
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 171
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "forbidden_dialog_fragment_tag"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0           #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment;

    .line 172
    .restart local v0       #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    if-eqz v0, :cond_6

    .line 173
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 176
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ChoiceDialogFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;

    .line 178
    .local v3, sortDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;
    if-eqz v3, :cond_7

    .line 179
    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 182
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "rename_dialog_fragment_tag"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    .line 184
    .local v2, renameDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    if-eqz v2, :cond_8

    .line 185
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 189
    .end local v0           #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    .end local v1           #pf:Lcom/mediatek/filemanager/ProgressDialogFragment;
    .end local v2           #renameDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    .end local v3           #sortDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;
    :cond_8
    invoke-super {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->onUnMounted(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected restoreDialog()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "HeavyDialogFragment"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/mediatek/filemanager/ProgressDialogFragment;

    .line 325
    .local v4, pf:Lcom/mediatek/filemanager/ProgressDialogFragment;
    if-eqz v4, :cond_0

    .line 326
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 327
    invoke-virtual {v4}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 336
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v11, "saved_selected_path"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, saveSelectedPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 338
    .local v6, saveSelectedFile:Lcom/mediatek/filemanager/FileInfo;
    if-eqz v7, :cond_1

    .line 339
    new-instance v6, Lcom/mediatek/filemanager/FileInfo;

    .end local v6           #saveSelectedFile:Lcom/mediatek/filemanager/FileInfo;
    invoke-direct {v6, v7}, Lcom/mediatek/filemanager/FileInfo;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v6       #saveSelectedFile:Lcom/mediatek/filemanager/FileInfo;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "detaildialogtag"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment;

    .line 346
    .local v0, af:Lcom/mediatek/filemanager/AlertDialogFragment;
    if-eqz v0, :cond_b

    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v10, :cond_b

    .line 347
    new-instance v1, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;

    invoke-direct {v1, p0, v6}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;)V

    .line 348
    .local v1, listener:Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;
    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/AlertDialogFragment;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 349
    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "detail_info_key"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, savedDetailInfo:Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/service/FileManagerService;->isDetailTask(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 351
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->reconnected(Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 369
    .end local v1           #listener:Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;
    .end local v8           #savedDetailInfo:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "delete_dialog_fragment_tag"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0           #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment;

    .line 370
    .restart local v0       #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    if-eqz v0, :cond_3

    .line 371
    new-instance v10, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;

    invoke-direct {v10, p0, v12}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileManagerOperationActivity$1;)V

    invoke-virtual {v0, v10}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 374
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "rename_extension_dialog_fragment_tag"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0           #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    check-cast v0, Lcom/mediatek/filemanager/AlertDialogFragment;

    .line 376
    .restart local v0       #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    if-eqz v0, :cond_4

    .line 377
    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "new_file_path_key"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, newFilePath:Ljava/lang/String;
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 379
    new-instance v10, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;

    invoke-direct {v10, p0, v6, v3}, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 383
    .end local v3           #newFilePath:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "ChoiceDialogFragment"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;

    .line 385
    .local v9, sortDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;
    if-eqz v9, :cond_5

    .line 386
    new-instance v10, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;

    invoke-direct {v10, p0, v12}, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileManagerOperationActivity$1;)V

    invoke-virtual {v9, v10}, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->setItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 389
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "rename_dialog_fragment_tag"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    .line 391
    .local v5, renameDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 392
    new-instance v10, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;

    invoke-direct {v10, p0, v6}, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;)V

    invoke-virtual {v5, v10}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->setOnEditTextDoneListener(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;)V

    .line 395
    :cond_6
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->restoreDialog()V

    .line 396
    return-void

    .line 329
    .end local v0           #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    .end local v5           #renameDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    .end local v6           #saveSelectedFile:Lcom/mediatek/filemanager/FileInfo;
    .end local v7           #saveSelectedPath:Ljava/lang/String;
    .end local v9           #sortDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;
    :cond_7
    new-instance v1, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;

    const/4 v10, -0x1

    invoke-direct {v1, p0, v10}, Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;I)V

    .line 331
    .local v1, listener:Lcom/mediatek/filemanager/FileManagerOperationActivity$HeavyOperationListener;
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->reconnected(Ljava/lang/String;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    .line 332
    invoke-virtual {v4, v1}, Lcom/mediatek/filemanager/ProgressDialogFragment;->setCancelListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 352
    .restart local v0       #af:Lcom/mediatek/filemanager/AlertDialogFragment;
    .local v1, listener:Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;
    .restart local v6       #saveSelectedFile:Lcom/mediatek/filemanager/FileInfo;
    .restart local v7       #saveSelectedPath:Ljava/lang/String;
    .restart local v8       #savedDetailInfo:Ljava/lang/String;
    :cond_8
    if-eqz v8, :cond_9

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 353
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    const v11, 0x7f0c0008

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 354
    .local v2, mDetailsText:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 355
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 357
    .end local v2           #mDetailsText:Landroid/widget/TextView;
    :cond_9
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/service/FileManagerService;->isBusy(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 358
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 359
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v6, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->getDetailInfo(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;)V

    goto/16 :goto_1

    .line 361
    :cond_a
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto/16 :goto_1

    .line 363
    .end local v1           #listener:Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;
    .end local v8           #savedDetailInfo:Ljava/lang/String;
    :cond_b
    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    .line 364
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 365
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    goto/16 :goto_1
.end method

.method protected serviceConnected()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 288
    const-string v3, "FileManagerOperationActivity"

    const-string v4, "serviceConnected..."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-super {p0}, Lcom/mediatek/filemanager/AbsBaseActivity;->serviceConnected()V

    .line 290
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v4, "view_mode_key"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, mode:I
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v4, "current_postion_key"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 294
    .local v1, position:I
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v4, "current_top_key"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 295
    .local v2, top:I
    const-string v3, "FileManagerOperationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceConnected mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->restoreViewMode(III)V

    .line 298
    .end local v0           #mode:I
    .end local v1           #position:I
    .end local v2           #top:I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 299
    return-void
.end method

.method protected setMainContentView()V
    .locals 5

    .prologue
    .line 429
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 431
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 432
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 433
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 434
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 436
    .local v1, customActionBarView:Landroid/view/View;
    const/16 v3, 0x10

    const/16 v4, 0x1a

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 440
    const/high16 v3, 0x7f0c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity;->mNavigationView:Landroid/view/View;

    .line 442
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 443
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    .end local v1           #customActionBarView:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method protected showDeleteDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 806
    const-string v3, "FileManagerOperationActivity"

    const-string v4, "show DeleteDialog..."

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-boolean v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    if-eqz v3, :cond_0

    .line 808
    const-string v3, "FileManagerOperationActivity"

    const-string v4, "Another Dialog is exist, return!~~"

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :goto_0
    return-void

    .line 811
    :cond_0
    iput-boolean v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    .line 812
    const v0, 0x7f08000e

    .line 813
    .local v0, alertMsgId:I
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v3}, Lcom/mediatek/filemanager/FileInfoAdapter;->getCheckedItemsCount()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 814
    const v0, 0x7f08000f

    .line 819
    :goto_1
    new-instance v1, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v1}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    .line 820
    .local v1, builder:Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    invoke-virtual {v1, v0}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setMessage(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v3

    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setDoneTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v3

    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v3

    const v4, 0x7f020040

    invoke-virtual {v3, v4}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setIcon(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment;

    move-result-object v2

    .line 823
    .local v2, deleteDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment;
    new-instance v3, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DeleteListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileManagerOperationActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 824
    invoke-virtual {v2, p0}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDialogDismissListener(Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;)V

    .line 825
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "delete_dialog_fragment_tag"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 816
    .end local v1           #builder:Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    .end local v2           #deleteDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment;
    :cond_1
    const v0, 0x7f08000e

    goto :goto_1
.end method

.method protected showForbiddenDialog(II)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 266
    const-string v2, "FileManagerOperationActivity"

    const-string v3, "show ForbiddenDialog..."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-boolean v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    if-eqz v2, :cond_0

    .line 268
    const-string v2, "FileManagerOperationActivity"

    const-string v3, "Another Dialog is exist, return!~~"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "forbidden_dialog_fragment_tag"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/filemanager/AlertDialogFragment;

    .line 275
    .local v1, forbiddenDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment;
    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 278
    :cond_1
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    .line 279
    .local v0, builder:Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    invoke-virtual {v0, p1}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setIcon(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setMessage(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelable(Z)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment;

    move-result-object v1

    .line 282
    invoke-virtual {v1, p0}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDialogDismissListener(Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "forbidden_dialog_fragment_tag"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showRenameDialog()V
    .locals 8

    .prologue
    .line 923
    const-string v6, "FileManagerOperationActivity"

    const-string v7, "show RenameDialog..."

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-boolean v6, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    if-eqz v6, :cond_1

    .line 925
    const-string v6, "FileManagerOperationActivity"

    const-string v7, "Another Dialog showing, return!~~"

    invoke-static {v6, v7}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    .line 929
    iget-object v6, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v6}, Lcom/mediatek/filemanager/FileInfoAdapter;->getFirstCheckedFileInfoItem()Lcom/mediatek/filemanager/FileInfo;

    move-result-object v2

    .line 930
    .local v2, fileInfo:Lcom/mediatek/filemanager/FileInfo;
    const/4 v5, 0x0

    .line 931
    .local v5, selection:I
    if-eqz v2, :cond_0

    .line 932
    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 933
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, fileExtension:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 935
    invoke-virtual {v2}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 936
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v5, v6

    add-int/lit8 v5, v6, -0x1

    .line 938
    :cond_2
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;-><init>()V

    .line 939
    .local v0, builder:Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;
    invoke-virtual {v0, v3, v5}, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;->setDefault(Ljava/lang/String;I)Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;

    move-result-object v6

    const v7, 0x7f080018

    invoke-virtual {v6, v7}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setDoneTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v6

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v6

    const v7, 0x7f080008

    invoke-virtual {v6, v7}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    .line 941
    invoke-virtual {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$EditDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    move-result-object v4

    .line 942
    .local v4, renameDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;
    new-instance v6, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameDoneListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;)V

    invoke-virtual {v4, v6}, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->setOnEditTextDoneListener(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$EditTextDoneListener;)V

    .line 943
    invoke-virtual {v4, p0}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDialogDismissListener(Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;)V

    .line 944
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "rename_dialog_fragment_tag"

    invoke-virtual {v4, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showRenameExtensionDialog(Lcom/mediatek/filemanager/FileInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "srcfileInfo"
    .parameter "newFilePath"

    .prologue
    .line 853
    const-string v2, "FileManagerOperationActivity"

    const-string v3, "show RenameExtensionDialog..."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    .line 856
    .local v0, builder:Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setIcon(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setMessage(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setDoneTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment;

    move-result-object v1

    .line 860
    .local v1, renameExtensionDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment;
    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "new_file_path_key"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v2, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/filemanager/FileManagerOperationActivity$RenameExtensionListener;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 863
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename_extension_dialog_fragment_tag"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method protected showSortDialog()V
    .locals 4

    .prologue
    .line 895
    const-string v2, "FileManagerOperationActivity"

    const-string v3, "show SortDialog..."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-boolean v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    if-eqz v2, :cond_0

    .line 897
    const-string v2, "FileManagerOperationActivity"

    const-string v3, "Another Dialog is exist, return!~~"

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :goto_0
    return-void

    .line 900
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mIsAlertDialogShowing:Z

    .line 901
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;-><init>()V

    .line 902
    .local v0, builder:Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;
    const/high16 v2, 0x7f09

    iget v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;->setDefault(II)Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    .line 904
    invoke-virtual {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;

    move-result-object v1

    .line 905
    .local v1, sortDialogFragment:Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;
    new-instance v2, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileManagerOperationActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/AlertDialogFragment$ChoiceDialogFragment;->setItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 906
    invoke-virtual {v1, p0}, Lcom/mediatek/filemanager/AlertDialogFragment;->setOnDialogDismissListener(Lcom/mediatek/filemanager/AlertDialogFragment$OnDialogDismissListener;)V

    .line 907
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ChoiceDialogFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
