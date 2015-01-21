.class public Lzte/com/cn/cloudnotepad/ui/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;
    }
.end annotation


# static fields
.field private static final NEW_NOTEBOOK_RESULT:I = 0x1

.field private static final NEW_NOTE_RESULT:I = 0x2

.field public static mNotebook:Ljava/lang/String;

.field public static mSortOrder:I


# instance fields
.field private apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

.field private conn:Ljava/net/HttpURLConnection;

.field private downloadApkCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private fos:Ljava/io/FileOutputStream;

.field private is:Ljava/io/InputStream;

.field private isNeedReSend:Z

.field private isNeedUpdate:Z

.field private mActionBar:Landroid/app/ActionBar;

.field public mAppName:Landroid/widget/TextView;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field public mDrawer:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

.field public mEmptyHint:Landroid/widget/TextView;

.field public mFooterDelete:Landroid/view/View;

.field public mFooterExport:Landroid/view/View;

.field public mFooterMutiSelect:Landroid/view/View;

.field public mFooterNewNote:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field public mHeaderContentbar:Landroid/view/View;

.field public mHeaderSelect:Landroid/view/View;

.field public mHeaderSelectbar:Landroid/view/View;

.field public mHeaderSelectedAll:Landroid/widget/ImageView;

.field public mHeaderSelectedNumber:Landroid/widget/TextView;

.field public mHeaderSelectedText:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field public mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

.field public mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

.field private mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

.field private mNotebooksGridView:Landroid/widget/GridView;

.field private mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

.field public mNotesExpandListView:Landroid/widget/ExpandableListView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mSearchButton:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field public mSortButton:Landroid/view/View;

.field private mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 110
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    .line 111
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->fos:Ljava/io/FileOutputStream;

    .line 112
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->is:Ljava/io/InputStream;

    .line 115
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z

    .line 118
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedReSend:Z

    .line 244
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHandler:Landroid/os/Handler;

    .line 751
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$2;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->downloadApkCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$10(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    return-object v0
.end method

.method static synthetic access$11(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->onConnectService()V

    return-void
.end method

.method static synthetic access$12(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initViewOnConnect(Z)V

    return-void
.end method

.method static synthetic access$13(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/data/NotesData;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    return-object v0
.end method

.method static synthetic access$14(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/data/NotebookData;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    return-object v0
.end method

.method static synthetic access$15(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->downloadApk()V

    return-void
.end method

.method static synthetic access$16(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 685
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initDownloadUI()V

    return-void
.end method

.method static synthetic access$17(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->downLoadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->openApkFile(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$19(Lzte/com/cn/cloudnotepad/ui/HomeActivity;J)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 977
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->longSubResult2Int(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->cancelDownload()V

    return-void
.end method

.method static synthetic access$20(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1076
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->createContinueUseOldVersionDialog()V

    return-void
.end method

.method static synthetic access$21(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->clearDbAndFiles()V

    return-void
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z

    return v0
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedReSend:Z

    return v0
.end method

.method static synthetic access$5(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-boolean p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedReSend:Z

    return-void
.end method

.method static synthetic access$6(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->setProgressDialog(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$7(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    return-void
.end method

.method static synthetic access$8(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    return-object v0
.end method

.method static synthetic access$9(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->showAboutDialog()V

    return-void
.end method

.method private bindService()V
    .locals 2

    .prologue
    .line 423
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$4;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 440
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 441
    return-void
.end method

.method private cancelDownload()V
    .locals 2

    .prologue
    .line 768
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 773
    :cond_0
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 776
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 777
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :cond_2
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearDbAndFiles()V
    .locals 2

    .prologue
    .line 1106
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/zte.com.cn.cloudnotepad"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 1108
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 1109
    return-void
.end method

.method private createContinueUseOldVersionDialog()V
    .locals 3

    .prologue
    .line 1077
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1078
    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1079
    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1080
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1081
    const v1, 0x7f090045

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity$15;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$15;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1088
    const v1, 0x7f090044

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1102
    return-void
.end method

.method private createUpdateAppDialog()V
    .locals 3

    .prologue
    .line 1054
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1055
    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1056
    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1057
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1058
    const v1, 0x7f0900f9

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity$13;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$13;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1066
    const v1, 0x7f090097

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity$14;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$14;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1073
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1074
    return-void
.end method

.method private downLoadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .parameter "context"
    .parameter "httpUrl"

    .prologue
    const/4 v10, 0x0

    .line 626
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v11

    invoke-virtual {v11}, Lzte/com/cn/cloudnotepad/NoteApp;->getSavePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "download"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, dir:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v7, tmpFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 629
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 631
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/ZteNote_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    iget-object v11, v11, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".apk"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v5, file:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    .local v8, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    .line 636
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    const/16 v11, 0x4e20

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 637
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    const/16 v11, 0x2710

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 638
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    iput-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->is:Ljava/io/InputStream;

    .line 639
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->is:Ljava/io/InputStream;

    if-nez v9, :cond_1

    move-object v9, v10

    .line 673
    .end local v8           #url:Ljava/net/URL;
    :goto_0
    return-object v9

    .line 642
    .restart local v8       #url:Ljava/net/URL;
    :cond_1
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 643
    .local v0, apkSize:I
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->fos:Ljava/io/FileOutputStream;

    .line 644
    const/16 v9, 0x100

    new-array v1, v9, [B

    .line 645
    .local v1, buf:[B
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 646
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v11, 0x190

    if-lt v9, v11, :cond_3

    .line 648
    const/4 v5, 0x0

    .line 660
    :cond_2
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 661
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 662
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->is:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    move-object v9, v5

    .line 673
    goto :goto_0

    .line 650
    :cond_3
    const/4 v6, 0x0

    .line 651
    .local v6, numRead:I
    const/4 v2, 0x0

    .line 652
    .local v2, count:I
    :goto_1
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->is:Ljava/io/InputStream;

    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 653
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->fos:Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    invoke-virtual {v9, v1, v11, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 654
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v9, :cond_4

    .line 655
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    mul-int/lit16 v11, v2, 0x6400

    div-int/2addr v11, v0

    invoke-virtual {v9, v11}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 657
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 663
    .end local v0           #apkSize:I
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v6           #numRead:I
    :catch_0
    move-exception v4

    .line 665
    .local v4, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v10

    .line 666
    goto :goto_0

    .line 668
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #url:Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 670
    .local v4, e:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v9, v10

    .line 671
    goto :goto_0
.end method

.method private downloadApk()V
    .locals 3

    .prologue
    .line 721
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    .line 748
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 749
    return-void
.end method

.method private initDownloadUI()V
    .locals 4

    .prologue
    .line 686
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 688
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 690
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 691
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 692
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->downloadApkCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 693
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 694
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 697
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->onBackPressed()V

    .line 698
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity$9;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$9;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 717
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 718
    return-void
.end method

.method private initNoteListsView()V
    .locals 2

    .prologue
    .line 136
    const v0, 0x7f0600ab

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesExpandListView:Landroid/widget/ExpandableListView;

    .line 137
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderContentbar:Landroid/view/View;

    .line 138
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectbar:Landroid/view/View;

    .line 139
    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterNewNote:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterNewNote:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterMutiSelect:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterMutiSelect:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterDelete:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterExport:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterExport:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedNumber:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedAll:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelect:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelect:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedText:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortButton:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    .line 166
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    :goto_0
    const v0, 0x7f0600ac

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mEmptyHint:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mEmptyHint:Landroid/widget/TextView;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity$3;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$3;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/data/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    .line 180
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    .line 181
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchButton:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    .line 184
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initViewOnConnect(Z)V
    .locals 2
    .parameter "accountChange"

    .prologue
    .line 474
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$6;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 488
    return-void
.end method

.method private initalNotebooksActivity()V
    .locals 2

    .prologue
    .line 512
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/data/NotebookData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    .line 513
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 514
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    .line 515
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebooksGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 516
    return-void
.end method

.method private initalNotesListActivity()V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 521
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesExpandListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 522
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->updateEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    :cond_0
    return-void
.end method

.method private initalSearchView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 375
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->exitSearchMode()V

    .line 390
    :goto_0
    return-void

    .line 379
    :cond_0
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 382
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 383
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 384
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 385
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 386
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 387
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusableInTouchMode(Z)V

    .line 388
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 389
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f090037

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isFirstEnter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1112
    const-string v3, "count"

    invoke-virtual {p0, v3, v4}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1113
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "first"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1115
    .local v0, first:Z
    if-eqz v0, :cond_0

    .line 1120
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1121
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1122
    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1123
    const-string v3, "zhangxue"

    const-string v4, "first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    .line 1126
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private launchSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "zte.com.cn.cloudnotepad"

    const-string v3, "zte.com.cn.cloudnotepad.ui.SearchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1041
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1042
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initalSearchView()V

    .line 1043
    return-void
.end method

.method private longSubResult2Int(J)I
    .locals 4
    .parameter "value"

    .prologue
    const-wide/16 v2, 0x0

    .line 978
    const/4 v0, 0x0

    .line 979
    .local v0, result:I
    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 980
    const/4 v0, 0x1

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 981
    :cond_1
    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 982
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private onConnectService()V
    .locals 6

    .prologue
    .line 444
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->getUidFromSharedPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, oldUid:Ljava/lang/String;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, newUid:Ljava/lang/String;
    invoke-static {p0, v2, v1}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->checkLoginStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 447
    .local v0, isChange:Z
    if-eqz v0, :cond_0

    .line 448
    new-instance v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;

    invoke-direct {v3, p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 470
    :cond_0
    return-void
.end method

.method private openApkFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .parameter "context"
    .parameter "file"

    .prologue
    .line 678
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 679
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 680
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 683
    return-void
.end method

.method private setProgressDialog(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 362
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 363
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 364
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 367
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showAboutDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 596
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x1

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->apkInfo:Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/update/UpdaterNew$UpdateApkInfo;->feature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 598
    .local v0, items:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 599
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 600
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 601
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 602
    const v2, 0x7f090039

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity$7;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$7;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 613
    const v2, 0x7f0900a4

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity$8;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$8;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 620
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 622
    return-void
.end method

.method private sortByReverseTimeOrder()V
    .locals 3

    .prologue
    .line 898
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 899
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 903
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 904
    return-void

    .line 900
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 901
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0
.end method

.method private sortNotes(I)V
    .locals 8
    .parameter "order"

    .prologue
    .line 909
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v5, v5, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 910
    .local v4, notesDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v5, v5, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 911
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 916
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/data/NotesData;->resetNotesData()V

    .line 917
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 918
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 922
    const/4 v5, 0x1

    if-le p1, v5, :cond_2

    .line 923
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/data/NotesData;->sortGroupTitleList()V

    .line 927
    :goto_2
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortSubListInNoteDataMap(I)V

    .line 928
    return-void

    .line 912
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 913
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 919
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;>;"
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_1
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    sget-object v7, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-virtual {v6, v7, v5, p1}, Lzte/com/cn/cloudnotepad/data/NotesData;->addNoteData2Group(Ljava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;I)V

    .line 918
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 925
    :cond_2
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortDateGroupTitleList(I)V

    goto :goto_2
.end method

.method private sortSubListInNoteDataMap(I)V
    .locals 3
    .parameter "order"

    .prologue
    .line 951
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 952
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 960
    return-void

    .line 953
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 954
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;>;"
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 955
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortSubNoteListByTitle(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 957
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortSubNoteListByTime(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method private sortSubNoteListByTime(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 964
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;

    invoke-direct {v0, p0, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$11;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 975
    return-void
.end method

.method private sortSubNoteListByTitle(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 990
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$12;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$12;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 997
    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 316
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;

    invoke-direct {v0, p0, p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;Landroid/content/Context;)V

    .line 317
    .local v0, task:Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$checkUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    return-void
.end method

.method public doNotebookClick(Ljava/lang/String;)V
    .locals 2
    .parameter "curNotebook"

    .prologue
    .line 529
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mDrawer:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateOpen()V

    .line 530
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 541
    :goto_0
    return-void

    .line 533
    :cond_0
    sput-object p1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    .line 534
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :goto_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    .line 540
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initalNotesListActivity()V

    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected doOnCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 217
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->setContentView(I)V

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "FLAG_NEEDS_MENU_KEY"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;-><init>(Landroid/content/Context;)V

    .line 224
    .local v1, mStaticsPolicy:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;
    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->setZteStatsInfo()V

    .line 226
    const v2, 0x7f060058

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mDrawer:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    .line 227
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mDrawer:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->open()V

    .line 229
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mActionBar:Landroid/app/ActionBar;

    .line 230
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 232
    const v2, 0x7f06005b

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebooksGridView:Landroid/widget/GridView;

    .line 233
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initalNotebooksActivity()V

    .line 235
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initNoteListsView()V

    .line 236
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initalNotesListActivity()V

    .line 238
    new-instance v2, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    .line 240
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 241
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    return-void

    .line 220
    .end local v1           #mStaticsPolicy:Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "zhangxue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addFlags Exception e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exitSearchMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 867
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 869
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 870
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 872
    :cond_0
    return-void
.end method

.method public getNoteBookData()Lzte/com/cn/cloudnotepad/data/NotebookData;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    return-object v0
.end method

.method public getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1002
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1003
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    .line 1004
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1005
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1019
    return-void

    .line 1007
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    sget-object v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    .line 563
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->exitSearchMode()V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-boolean v0, v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->exitSelectMode()V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mDrawer:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    .line 557
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mDrawer:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateOpen()V

    goto :goto_0

    .line 561
    :cond_3
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 801
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 864
    :goto_0
    :pswitch_0
    return-void

    .line 804
    :pswitch_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mDrawer:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateOpen()V

    goto :goto_0

    .line 807
    :pswitch_2
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 808
    .local v1, sortItems:[Ljava/lang/CharSequence;
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 811
    .local v0, mPm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.zte.lbs"

    const/16 v3, 0x2000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 812
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 818
    :cond_0
    :goto_1
    sget v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-static {p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->sortDialog(Lzte/com/cn/cloudnotepad/ui/HomeActivity;[Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 821
    .end local v0           #mPm:Landroid/content/pm/PackageManager;
    .end local v1           #sortItems:[Ljava/lang/CharSequence;
    :pswitch_3
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->initalSearchView()V

    goto :goto_0

    .line 824
    :pswitch_4
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->exitSearchMode()V

    .line 825
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughInternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 826
    const v2, 0x7f0900ad

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 831
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 834
    :pswitch_5
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->exitSearchMode()V

    .line 836
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    .line 839
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->updateView()V

    goto :goto_0

    .line 843
    :pswitch_6
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->exitSelectMode()V

    goto :goto_0

    .line 846
    :pswitch_7
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->markall()V

    .line 847
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->updateView()V

    goto :goto_0

    .line 850
    :pswitch_8
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mutiDelete()V

    goto/16 :goto_0

    .line 853
    :pswitch_9
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughExtStorage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 854
    const v2, 0x7f0900ac

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 857
    :cond_2
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mutiExport()V

    goto/16 :goto_0

    .line 814
    .restart local v0       #mPm:Landroid/content/pm/PackageManager;
    .restart local v1       #sortItems:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x7f06005c
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onClose()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1048
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/NoteApp;->getMaxExistDbVersionCantHandle(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z

    .line 201
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z

    if-eqz v1, :cond_1

    .line 203
    :try_start_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->createUpdateAppDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_1
    return-void

    .line 200
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->doOnCreate(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 279
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 280
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 504
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z

    if-eqz v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 310
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 288
    :pswitch_0
    const-string v2, "zhangxue"

    const-string v3, "menu_home_update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->conn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->checkUpdate()V

    goto :goto_0

    .line 296
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 301
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v1, intentBR:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 305
    .end local v1           #intentBR:Landroid/content/Intent;
    :pswitch_3
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->showAboutDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600d9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 494
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->unbindService()V

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 1030
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1032
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->launchSearch(Ljava/lang/String;)V

    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 396
    iget-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedUpdate:Z

    if-eqz v2, :cond_0

    .line 420
    :goto_0
    return-void

    .line 400
    :cond_0
    sput-boolean v4, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 401
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 402
    .local v0, lAvailableFlash:J
    const-wide/32 v2, 0x300000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 403
    const/4 v2, 0x1

    sput-boolean v2, Lzte/com/cn/cloudnotepad/NoteApp;->isLowSpace:Z

    .line 404
    const v2, 0x7f09009e

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 405
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    goto :goto_0

    .line 409
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->bindService()V

    .line 411
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 412
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteBooksAdapter:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    .line 414
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesExpandListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 418
    :cond_2
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    sget-object v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v2, v3, v4}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 419
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setIsNeedReSend(Z)V
    .locals 0
    .parameter "needReSend"

    .prologue
    .line 132
    iput-boolean p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->isNeedReSend:Z

    .line 133
    return-void
.end method

.method public setSortOrder(I)V
    .locals 3
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x2

    .line 877
    sget v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    if-eq v1, p1, :cond_0

    .line 878
    sget v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    .line 879
    .local v0, oldOrder:I
    sput p1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    .line 882
    if-ge v0, v2, :cond_1

    if-ge p1, v2, :cond_1

    .line 883
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortByReverseTimeOrder()V

    .line 891
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->notifyDataSetChanged()V

    .line 893
    .end local v0           #oldOrder:I
    :cond_0
    return-void

    .line 885
    .restart local v0       #oldOrder:I
    :cond_1
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->sortNotes(I)V

    goto :goto_0
.end method

.method public sortDateGroupTitleList(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 946
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity$1AlphaComparator;-><init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 947
    return-void
.end method
