.class public Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;
.super Landroid/app/ListActivity;
.source "BluetoothFtpSeveralMarker.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;
.implements Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;


# static fields
.field protected static final DATA_READY:I = 0x961

.field protected static final ERROR:I = 0x962

.field private static final KEY_CHECKED_STATES:Ljava/lang/String; = "key_checked_states"

.field private static final KEY_CUR_LOCAL_PATH:Ljava/lang/String; = "key_current_local_path"

.field private static final KEY_DIRECTION:Ljava/lang/String; = "key_direction"

.field static final LOCAL_PATH:Ljava/lang/String; = "local_path"

.field private static final MENU_BASE:I = 0x96a

.field private static final MENU_MARK_ALL:I = 0x96c

.field private static final MENU_TRANSFER:I = 0x96b

.field private static final MENU_UNMARK_ALL:I = 0x96d

.field private static final SEVERAL_MARKER_BASE:I = 0x960

.field private static final TAG:Ljava/lang/String; = "BluetoothFtpSeveralMarker"

.field private static mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

.field static final sColumns:[Ljava/lang/String;

.field private static final sFrom:[Ljava/lang/String;

.field private static final sTo:[I


# instance fields
.field private mCurrentLocalPath:Ljava/lang/String;

.field private mDirection:I

.field private mHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

.field private mMarkableCursor:Landroid/database/Cursor;

.field private mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 90
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sFrom:[Ljava/lang/String;

    .line 95
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sTo:[I

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "size"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sColumns:[Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    return-void

    .line 95
    :array_0
    .array-data 0x4
        0x13t 0x0t 0x9t 0x7ft
        0x14t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 119
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mCurrentLocalPath:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    .line 125
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    .line 128
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker$1;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;)Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput-object p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sendResult(Z)V

    return-void
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_0
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendResult(Z)V
    .locals 4
    .parameter "result"

    .prologue
    .line 361
    if-eqz p1, :cond_0

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 364
    iget v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mDirection:I

    packed-switch v1, :pswitch_data_0

    .line 374
    const-string v1, "BluetoothFtpSeveralMarker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][FTP] Bad direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 381
    return-void

    .line 366
    .restart local v0       #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v1, "com.mediatek.bluetooth.ftp.client.ACTION_PULL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    :pswitch_1
    const-string v1, "com.mediatek.bluetooth.ftp.client.ACTION_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized showProgressDialog()V
    .locals 2

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 396
    :goto_0
    monitor-exit p0

    return-void

    .line 388
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setIndeterminate(Z)V

    .line 392
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 394
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    .line 395
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    .end local v0           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f070080

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 160
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 162
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    if-eqz v0, :cond_1

    .line 164
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    invoke-virtual {v0, p0}, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;->isDone(Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sendResult(Z)V

    .line 229
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->showProgressDialog()V

    goto :goto_0

    .line 172
    :cond_1
    if-nez p1, :cond_2

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 174
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "direction"

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mDirection:I

    .line 175
    const-string v0, "local_path"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mCurrentLocalPath:Ljava/lang/String;

    .line 183
    .end local v9           #intent:Landroid/content/Intent;
    :goto_1
    const/4 v1, 0x0

    .line 185
    .local v1, uri:Landroid/net/Uri;
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mDirection:I

    packed-switch v0, :pswitch_data_0

    .line 200
    const-string v0, "BluetoothFtpSeveralMarker"

    const-string v2, "Bad intent"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sendResult(Z)V

    goto :goto_0

    .line 178
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    const-string v0, "BluetoothFtpSeveralMarker"

    const-string v2, "savedInstanceState is not null in onCreate()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, "key_direction"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mDirection:I

    .line 180
    const-string v0, "key_current_local_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mCurrentLocalPath:Ljava/lang/String;

    goto :goto_1

    .line 187
    .restart local v1       #uri:Landroid/net/Uri;
    :pswitch_0
    sget-object v1, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->SERVER_MARKS_URI:Landroid/net/Uri;

    .line 205
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sColumns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    .line 206
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 207
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 209
    .local v10, toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sendResult(Z)V

    goto :goto_0

    .line 191
    .end local v10           #toast:Landroid/widget/Toast;
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mCurrentLocalPath:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 192
    const-string v0, "BluetoothFtpSeveralMarker"

    const-string v2, "Bad intent: No local path for pusing."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sendResult(Z)V

    goto :goto_0

    .line 196
    :cond_3
    sget-object v1, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->LOCAL_MARKS_URI:Landroid/net/Uri;

    .line 197
    goto :goto_2

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 216
    .local v8, count:I
    if-lez v8, :cond_5

    .line 217
    new-instance v2, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    const v4, 0x7f03000e

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    sget-object v6, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sFrom:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sTo:[I

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    .line 219
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 223
    :cond_5
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 225
    .restart local v10       #toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 226
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->sendResult(Z)V

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 284
    iget v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mDirection:I

    packed-switch v3, :pswitch_data_0

    .line 304
    :goto_0
    return v2

    .line 286
    :pswitch_0
    const v0, 0x7f02001f

    .line 287
    .local v0, icon_id:I
    const v1, 0x7f07008a

    .line 297
    .local v1, string_id:I
    :goto_1
    const/16 v3, 0x96b

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 299
    const/16 v3, 0x96c

    const v4, 0x7f07008b

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020020

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 301
    const/16 v3, 0x96d

    const v4, 0x7f07008c

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020026

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 304
    const/4 v2, 0x1

    goto :goto_0

    .line 290
    .end local v0           #icon_id:I
    .end local v1           #string_id:I
    :pswitch_1
    const v0, 0x7f020025

    .line 291
    .restart local v0       #icon_id:I
    const v1, 0x7f070089

    .line 292
    .restart local v1       #string_id:I
    goto :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 272
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->dismissProgressDialog()V

    .line 274
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mMarkableCursor:Landroid/database/Cursor;

    .line 278
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 336
    instance-of v2, p2, Landroid/widget/RelativeLayout;

    .line 337
    .local v2, rlv:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClicked(), pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A RelativeLayout? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, debug:Ljava/lang/String;
    const-string v3, "BluetoothFtpSeveralMarker"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const v3, 0x7f090016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 342
    .local v0, cb:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v3, "BluetoothFtpSeveralMarker"

    const-string v4, "CheckBox not found."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 331
    :goto_0
    return v0

    .line 312
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;->anyChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->setupTransferList()V

    :goto_1
    move v0, v1

    .line 331
    goto :goto_0

    .line 315
    :cond_0
    const v2, 0x7f070081

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;->setAllStatesAs(Z)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 324
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v2, v0}, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;->setAllStatesAs(Z)V

    .line 325
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 310
    :pswitch_data_0
    .packed-switch 0x96b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->dismissProgressDialog()V

    .line 254
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 235
    sget-object v1, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    if-nez v1, :cond_0

    .line 236
    const-string v1, "key_checked_states"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 238
    .local v0, states:[Z
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;->applyStates([Z)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    .end local v0           #states:[Z
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    if-nez v0, :cond_0

    .line 261
    const-string v0, "key_checked_states"

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;->retrieveStates()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 262
    const-string v0, "key_current_local_path"

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mCurrentLocalPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "key_direction"

    iget v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mDirection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    :cond_0
    return-void
.end method

.method public onThreadResult(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    return-void
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 6
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 411
    .local v2, id:I
    const-string v4, "modified"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 413
    .local v1, dateIndex:I
    const/4 v3, -0x1

    .line 414
    .local v3, sizeIndex:I
    const/4 v0, 0x0

    .line 416
    .local v0, date:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 432
    .end local p1
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 418
    .restart local p1
    :pswitch_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 422
    .restart local p1
    :pswitch_1
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    move v3, p3

    .line 424
    check-cast p1, Lcom/mediatek/bluetooth/ftp/EntryInfoView;

    .end local p1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v0}, Lcom/mediatek/bluetooth/ftp/EntryInfoView;->setEntryInfo(JLjava/lang/String;)V

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x7f090013
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setupTransferList()V
    .locals 6

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->showProgressDialog()V

    .line 355
    new-instance v0, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mListAdapter:Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/ftp/MultiCheckAdapter;->retrieveStates()[Z

    move-result-object v2

    iget v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mDirection:I

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mCurrentLocalPath:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;-><init>(Landroid/content/ContentResolver;[ZILjava/lang/String;Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine$ResultListener;)V

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    .line 357
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;->mThread:Lcom/mediatek/bluetooth/ftp/SetupTransferRoutine;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 358
    return-void
.end method
