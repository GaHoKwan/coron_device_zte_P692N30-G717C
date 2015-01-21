.class public Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;
.super Landroid/app/ListActivity;
.source "BluetoothFtpLocalBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;
.implements Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;


# static fields
.field private static final DATA_READY:I = 0x0

.field private static final DEFAULT_ROOT:Ljava/lang/String; = "/mnt"

.field private static final ERROR:I = 0x1

.field private static final KEY_CUR_PATH:Ljava/lang/String; = "current_path"

.field private static final LOCAL_BROWSER_BASE:I = 0x898

.field private static final MENU_BASE:I = 0x8a2

.field private static final MENU_EXIT:I = 0x8a5

.field private static final MENU_GOTO_ROOT:I = 0x8a3

.field private static final MENU_MARK_SEVERAL:I = 0x8a4

.field private static final TAG:Ljava/lang/String; = "BluetoothFtpLocalBrowser"

.field private static mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;


# instance fields
.field private mCurrentPath:Ljava/lang/String;

.field private mCurrentPathView:Landroid/widget/TextView;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFolderContentCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mListAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestFocusListener:Landroid/view/View$OnClickListener;

.field private mRoot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPathView:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    .line 103
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFolderContentCursor:Landroid/database/Cursor;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFilter:Landroid/content/IntentFilter;

    .line 107
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$1;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$2;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser$3;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRequestFocusListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;)Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->updateUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->sendErrorAndFinish()V

    return-void
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_0
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getDateString(J)Ljava/lang/String;
    .locals 7
    .parameter "millis"

    .prologue
    const/4 v6, 0x2

    .line 482
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 484
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, year:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, month:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, day:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_0

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private sendErrorAndFinish()V
    .locals 2

    .prologue
    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.ftp.client.ACTION_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 526
    return-void
.end method

.method private declared-synchronized showProgressDialog()V
    .locals 2

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 514
    :goto_0
    monitor-exit p0

    return-void

    .line 506
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 507
    .local v0, dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 509
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setIndeterminate(Z)V

    .line 510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 512
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    .line 513
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 502
    .end local v0           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updateData(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->showProgressDialog()V

    .line 321
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    new-instance v0, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;)V

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    .line 324
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateUI()V
    .locals 7

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPathView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFolderContentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFolderContentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->LOCAL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFolderContentCursor:Landroid/database/Cursor;

    .line 338
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFolderContentCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 341
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPathView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 344
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->dismissProgressDialog()V

    .line 345
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v6

    .line 348
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "BluetoothFtpLocalBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] updateUI(), Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->sendErrorAndFinish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 244
    const-string v0, "BluetoothFtpLocalBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] Local browser onActivityResult(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 246
    packed-switch p1, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x8a4
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 269
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, lastSlash:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->updateData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 155
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 157
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPathView:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPathView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 159
    const-string v0, "BluetoothFtpLocalBrowser"

    const-string v1, "onCreate(): mCurrentPathView is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {}, Lcom/mediatek/bluetooth/util/SystemUtils;->getMountPointPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRoot:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRoot:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 166
    const-string v0, "/mnt"

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRoot:Ljava/lang/String;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRoot:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPathView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRequestFocusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "size"

    aput-object v1, v4, v0

    .line 179
    .local v4, from:[Ljava/lang/String;
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 182
    .local v5, to:[I
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f03000c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 183
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 184
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    if-eqz p1, :cond_4

    .line 187
    const-string v0, "current_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    .line 188
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    if-eqz v0, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->showProgressDialog()V

    .line 190
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    invoke-virtual {v0, p0}, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->isDone(Lcom/mediatek/bluetooth/ftp/GetLocalContentThread$ResultListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sput-object v3, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    .line 192
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->updateUI()V

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->updateUI()V

    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->updateData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :array_0
    .array-data 0x4
        0x13t 0x0t 0x9t 0x7ft
        0x12t 0x0t 0x9t 0x7ft
        0x14t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 273
    const/16 v0, 0x8a3

    const v1, 0x7f070086

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 275
    const/16 v0, 0x8a4

    const v1, 0x7f070087

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    const/16 v0, 0x8a5

    const v1, 0x7f070088

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 222
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->dismissProgressDialog()V

    .line 224
    const/16 v0, 0x8a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->finishActivity(I)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFolderContentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFolderContentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mFolderContentCursor:Landroid/database/Cursor;

    .line 231
    :cond_0
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    if-eqz v0, :cond_1

    .line 232
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mThread:Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/ftp/GetLocalContentThread;->removeListener()V

    .line 236
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
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
    .line 415
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 416
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 418
    .local v11, values:Landroid/content/ContentValues;
    const v13, 0x7f090013

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 419
    .local v5, nameView:Landroid/widget/TextView;
    const v13, 0x7f090014

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 420
    .local v3, infoView:Landroid/widget/TextView;
    const v13, 0x7f090012

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 422
    .local v10, typeView:Landroid/view/View;
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-nez v10, :cond_1

    .line 423
    :cond_0
    const-string v13, "BluetoothFtpLocalBrowser"

    const-string v14, "[BT][FTP] Can\'t find entry_name, entry_info, or entry_type in the list item."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, info:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 430
    .local v9, type:I
    const-wide/16 v7, -0x1

    .line 432
    .local v7, size:J
    packed-switch v9, :pswitch_data_0

    .line 462
    const-string v13, "BluetoothFtpLocalBrowser"

    const-string v14, "Unknown Type"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->updateData(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :pswitch_1
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v11           #values:Landroid/content/ContentValues;
    .local v12, values:Landroid/content/ContentValues;
    :try_start_1
    sget-object v13, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    const-string v13, "name"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v13, "status"

    const/16 v14, 0x14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    const-string v13, "direction"

    const/16 v14, 0x1f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    sget-object v13, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 451
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.mediatek.bluetooth.ftp.client.ACTION_PUSH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    .line 457
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, ex:Ljava/lang/Exception;
    :goto_1
    const-string v13, "BluetoothFtpLocalBrowser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BT][FTP] onItemClick(), Execption: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->sendErrorAndFinish()V

    goto/16 :goto_0

    .line 454
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v12       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    move-object v11, v12

    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    goto :goto_1

    .line 432
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 312
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 287
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const v1, 0x7f07007f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mRoot:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->updateData(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "direction"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v1, "local_path"

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const/16 v1, 0x8a4

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 305
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x8a3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->dismissProgressDialog()V

    .line 209
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    const-string v0, "current_path"

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onThreadResult(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 8
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 360
    .local v2, id:I
    const-string v6, "type"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 361
    .local v5, typeIndex:I
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 362
    .local v4, type:I
    const-string v6, "modified"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 364
    .local v1, dateIndex:I
    const/4 v3, -0x1

    .line 365
    .local v3, sizeIndex:I
    const/4 v0, 0x0

    .line 367
    .local v0, date:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 410
    .end local p1
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 369
    .restart local p1
    :pswitch_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 374
    .restart local p1
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 375
    packed-switch v4, :pswitch_data_1

    .line 389
    :pswitch_2
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f020028

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 377
    .restart local p1
    :pswitch_3
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f02001b

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 380
    .restart local p1
    :pswitch_4
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f020019

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 383
    .restart local p1
    :pswitch_5
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f02001c

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 386
    .restart local p1
    :pswitch_6
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f020029

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 395
    .restart local p1
    :pswitch_7
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    move v3, p3

    .line 398
    const/16 v6, 0xa

    if-ne v4, v6, :cond_0

    .line 399
    check-cast p1, Lcom/mediatek/bluetooth/ftp/EntryInfoView;

    .end local p1
    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7, v0}, Lcom/mediatek/bluetooth/ftp/EntryInfoView;->setEntryInfo(JLjava/lang/String;)V

    goto :goto_0

    .line 401
    .restart local p1
    :cond_0
    check-cast p1, Lcom/mediatek/bluetooth/ftp/EntryInfoView;

    .end local p1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7, v0}, Lcom/mediatek/bluetooth/ftp/EntryInfoView;->setEntryInfo(JLjava/lang/String;)V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x7f090012
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
