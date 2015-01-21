.class Lcom/android/providers/downloads/ui/DownloadList$1;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->getOmaDownloadPositiveClickHandler(Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;IILandroid/view/View;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic val$downloadID:I

.field final synthetic val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

.field final synthetic val$showReason:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;ILcom/android/providers/downloads/ui/DownloadList$DownloadInfo;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput p2, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$showReason:I

    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iput p4, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadID:I

    iput-object p5, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 20
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 489
    const-string v2, "DownloadManager/OMA"

    const-string v3, "DownloadList: getOmaDownloadPositiveClickHandler"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$showReason:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_6

    .line 493
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .local v18, values:Landroid/content/ContentValues;
    const-string v2, "uri"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mObjectUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v2, "DownloadManager/OMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadList:getOmaDownloadClickHandler(): onClick(): object url is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mObjectUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mime Type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v2, "notificationpackage"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v2, "notificationclass"

    const-class v3, Lcom/android/providers/downloads/ui/OMADLOpenDownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v2, "mimetype"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mType:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v2, "OMA_Download"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v2, "destination"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mNextUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 507
    const-string v2, "OMA_Download_Next_Url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mNextUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v2, "DownloadManager/OMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadList:getOmaDownloadClickHandler(): onClick(): next url is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mNextUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mInstallNotifyUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 513
    const-string v2, "OMA_Download_Install_Notify_Url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mInstallNotifyUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v2, "DownloadManager/OMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadList:getOmaDownloadClickHandler(): onClick(): install Notify url is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mInstallNotifyUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    const/4 v8, 0x0

    .line 522
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadID:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "download_path_selected_from_filemanager"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "useragent"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 527
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    const-string v2, "useragent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 529
    .local v17, userAgentString:Ljava/lang/String;
    const-string v2, "useragent"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v2, "DownloadManager/OMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadList:getOmaDownloadClickHandler(): onClick(): userAgent is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v2}, Lcom/mediatek/downloadmanager/ext/Extensions;->getDefault(Landroid/content/Context;)Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$202(Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;)Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    .line 535
    invoke-static {}, Lcom/android/providers/downloads/ui/DownloadList;->access$200()Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/downloadmanager/ext/IDownloadProviderFeatureEx;->shouldSetDownloadPathSelectFileMager()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    const-string v2, "download_path_selected_from_filemanager"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 539
    .local v15, selectedPath:Ljava/lang/String;
    const-string v2, "download_path_selected_from_filemanager"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v2, "DownloadManager/OMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadList:getOmaDownloadClickHandler(): onClick():OP01 implement, selectedPath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v15           #selectedPath:Ljava/lang/String;
    .end local v17           #userAgentString:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 549
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_3
    :goto_0
    :try_start_1
    new-instance v19, Landroid/net/WebAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mObjectUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 556
    .local v19, webAddress:Landroid/net/WebAddress;
    const-string v2, "description"

    invoke-virtual/range {v19 .. v19}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    .end local v19           #webAddress:Landroid/net/WebAddress;
    :goto_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .local v9, ddFilevalues:Landroid/content/ContentValues;
    const-string v2, "OMA_Download_Status"

    const/16 v3, 0x1eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadID:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 573
    .local v14, row:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadID:I

    int-to-long v3, v3

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteOMADownloadDDFile(J)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$500(Lcom/android/providers/downloads/ui/DownloadList;J)V

    .line 608
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #ddFilevalues:Landroid/content/ContentValues;
    .end local v14           #row:I
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v3, 0x0

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mCurrentDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$302(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->showNextDialog()V
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 610
    return-void

    .line 545
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v18       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 546
    .local v10, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "DownloadManager/OMA"

    const-string v3, "Query selected download path failed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    if-eqz v8, :cond_3

    .line 549
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 548
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    .line 549
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 558
    :catch_1
    move-exception v10

    .line 559
    .local v10, e:Landroid/net/ParseException;
    const-string v2, "DownloadManager/OMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to parse url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mObjectUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v3, 0x0

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mCurrentDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$302(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->showNextDialog()V
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)V

    goto/16 :goto_1

    .line 581
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #e:Landroid/net/ParseException;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$showReason:I

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_7

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mNextUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadInfo:Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mNextUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 584
    .local v16, uri:Landroid/net/Uri;
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v11, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 585
    .local v11, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v2, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 588
    .end local v11           #intent:Landroid/content/Intent;
    .end local v16           #uri:Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$showReason:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$v:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$v:Landroid/view/View;

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 592
    .local v12, nm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$v:Landroid/view/View;

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 595
    .local v13, pw:Ljava/lang/String;
    const-string v2, "DownloadManager/Enhance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadList:getOmaDownloadClickHandler:onClick():Autenticate UserName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Password is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 599
    .restart local v18       #values:Landroid/content/ContentValues;
    const-string v2, "username"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v2, "password"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v2, "status"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/downloads/ui/DownloadList$1;->val$downloadID:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2
.end method
