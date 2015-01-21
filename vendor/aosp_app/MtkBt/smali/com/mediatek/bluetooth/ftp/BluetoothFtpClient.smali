.class public Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;
.super Landroid/app/ListActivity;
.source "BluetoothFtpClient.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;
.implements Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;


# static fields
.field protected static final ACTION_ERROR:Ljava/lang/String; = "com.mediatek.bluetooth.ftp.client.ACTION_ERROR"

.field protected static final ACTION_PULL:Ljava/lang/String; = "com.mediatek.bluetooth.ftp.client.ACTION_PULL"

.field protected static final ACTION_PUSH:Ljava/lang/String; = "com.mediatek.bluetooth.ftp.client.ACTION_PUSH"

.field private static final BT_FTP_RSP_SUCCESS:I = 0x0

.field public static final CLIENT_BASE:I = 0x7d0

.field public static final CLIENT_DATA_READY:I = 0x7d1

.field private static final CLIENT_DIALOG_BASE:I = 0x80c

.field public static final CLIENT_ERROR:I = 0x7d4

.field private static final CLIENT_MENU_BASE:I = 0x802

.field private static final CLIENT_OP_BASE:I = 0x7da

.field public static final CLIENT_START_PULL:I = 0x7d2

.field public static final CLIENT_START_PUSH:I = 0x7d3

.field private static final DEFAULT_ROOT:Ljava/lang/String; = "/"

.field private static final DIALOG_ALERT:I = 0x812

.field private static final DIALOG_ALERT_EX:I = 0x813

.field private static final DIALOG_CNF_DELETE:I = 0x810

.field private static final DIALOG_CNF_EXIT:I = 0x811

.field private static final DIALOG_FILE_OP:I = 0x80d

.field private static final DIALOG_FOLDER_NEW:I = 0x80f

.field private static final DIALOG_FOLDER_OP:I = 0x80e

.field private static final KEY_CUR_ITEM:Ljava/lang/String; = "current_item"

.field private static final KEY_CUR_PATH:Ljava/lang/String; = "current_path"

.field private static final KEY_DIALOG_ARGS:Ljava/lang/String; = "dialog_arguments"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final MENU_CREATE_FOLDER:I = 0x804

.field private static final MENU_EXIT:I = 0x808

.field private static final MENU_GOTO_ROOT:I = 0x806

.field private static final MENU_MARK_SEVERAL:I = 0x807

.field private static final MENU_REFRESH:I = 0x805

.field private static final MENU_SEND_FILES:I = 0x803

.field private static final OP_ABORT:I = 0x7e7

.field private static final OP_CONNECT:I = 0x7dd

.field private static final OP_CREATE_FOLDER:I = 0x7e3

.field private static final OP_DELETE:I = 0x7e6

.field private static final OP_DISCONNECT:I = 0x7de

.field private static final OP_GOBACKWARD:I = 0x7e1

.field private static final OP_GOFORWARD:I = 0x7e0

.field private static final OP_GOTOROOT:I = 0x7e2

.field private static final OP_REFRESH:I = 0x7df

.field private static final OP_REGISTER_CB:I = 0x7db

.field private static final OP_START_PULL:I = 0x7e4

.field private static final OP_START_PUSH:I = 0x7e5

.field private static final OP_UNREGISTER_CB:I = 0x7dc

.field private static final PATH_PARENT:Ljava/lang/String; = "__ftpc_path_parent__"

.field private static final PATH_ROOT:Ljava/lang/String; = "__ftpc_path_root__"

.field private static final TAG:Ljava/lang/String; = "BluetoothFtpClient"

.field private static mThread:Lcom/mediatek/bluetooth/ftp/XMLParsingThread;


# instance fields
.field private mAbortCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mAbortClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mConfirmDeleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConfirmExitListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCurrentItem:Ljava/lang/String;

.field private mCurrentPath:Ljava/lang/String;

.field private mCurrentPathView:Landroid/widget/TextView;

.field private mDialogArgs:Landroid/os/Bundle;

.field private mFileOpListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFolderContentCursor:Landroid/database/Cursor;

.field private mFolderOpListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

.field private mFtpClientCallback:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

.field private mFtpClientConn:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mListAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mMultipleTransfer:Z

.field private mNameEditText:Landroid/widget/EditText;

.field private mNameToCreate:Ljava/lang/String;

.field private mNewFolderListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPendingDialogId:I

.field private mPendingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestFocusListener:Landroid/view/View$OnClickListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTransferringCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mThread:Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 154
    const/16 v0, 0x80c

    iput v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDialogId:I

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mMultipleTransfer:Z

    .line 160
    const-string v0, "/"

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPath:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPathView:Landroid/widget/TextView;

    .line 169
    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameEditText:Landroid/widget/EditText;

    .line 172
    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    .line 190
    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderContentCursor:Landroid/database/Cursor;

    .line 193
    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    .line 196
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mHandler:Landroid/os/Handler;

    .line 348
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$2;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClientCallback:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    .line 366
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$3;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClientConn:Landroid/content/ServiceConnection;

    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFilter:Landroid/content/IntentFilter;

    .line 463
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$4;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$5;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFileOpListener:Landroid/content/DialogInterface$OnClickListener;

    .line 528
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$6;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderOpListener:Landroid/content/DialogInterface$OnClickListener;

    .line 550
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNewFolderListener:Landroid/content/DialogInterface$OnClickListener;

    .line 585
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$8;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mConfirmDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 600
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$9;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$9;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mConfirmExitListener:Landroid/content/DialogInterface$OnClickListener;

    .line 608
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$10;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$10;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCancelConnectListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 614
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$11;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$11;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mAbortClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 620
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$12;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$12;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mAbortCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 626
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$13;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$13;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mRequestFocusListener:Landroid/view/View$OnClickListener;

    .line 632
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$14;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$14;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showTextToast(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()Lcom/mediatek/bluetooth/ftp/XMLParsingThread;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mThread:Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/bluetooth/ftp/XMLParsingThread;)Lcom/mediatek/bluetooth/ftp/XMLParsingThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-object p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mThread:Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateUI()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClientCallback:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->prepareTransferringDialog(IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showConfirmDeleteDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDialogId:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showAlertExDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->parseFolderContent()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mMultipleTransfer:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateOrDismissTransferringDialog(II)V

    return-void
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :cond_0
    monitor-exit p0

    return-void

    .line 1286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private execOperation(ILjava/lang/String;)V
    .locals 4
    .parameter "op"
    .parameter "arg"

    .prologue
    .line 968
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    if-nez v1, :cond_1

    .line 969
    const-string v1, "BluetoothFtpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][FTP] mFtpClient is null, opt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1030
    :try_start_0
    const-string v1, "BluetoothFtpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][FTP] Unknown op: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "BluetoothFtpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][FTP] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 977
    .end local v0           #re:Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClientCallback:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->registerCallback(Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;)V

    goto :goto_0

    .line 980
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClientCallback:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->unregisterCallback(Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClientCallback;)V

    goto :goto_0

    .line 983
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V

    .line 984
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->connect()V

    goto :goto_0

    .line 987
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->disconnect()V

    .line 988
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 991
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V

    .line 992
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->refresh()V

    goto :goto_0

    .line 995
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V

    .line 996
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1, p2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->goForward(Ljava/lang/String;)V

    goto :goto_0

    .line 999
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V

    .line 1000
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->goBackward()V

    goto :goto_0

    .line 1003
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V

    .line 1004
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->goToRoot()V

    goto/16 :goto_0

    .line 1007
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V

    .line 1008
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1, p2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->createFolder(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1011
    :pswitch_9
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->prepareTransferringDialog(IZ)V

    .line 1012
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->startPull()V

    goto/16 :goto_0

    .line 1015
    :pswitch_a
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->prepareTransferringDialog(IZ)V

    .line 1016
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->startPush()V

    goto/16 :goto_0

    .line 1019
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V

    .line 1020
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1, p2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->delete(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1023
    :pswitch_c
    const-string v1, "BluetoothFtpClient"

    const-string v2, "[BT][FTP] OP_ABORT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->abort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V

    .line 1026
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showProgressDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getCurrentTransferringName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1371
    const/4 v1, 0x0

    .line 1372
    .local v1, ret:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1373
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1374
    .local v0, name_idx:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1377
    .end local v0           #name_idx:I
    :cond_0
    return-object v1
.end method

.method private parseFolderContent()V
    .locals 4

    .prologue
    .line 1382
    new-instance v0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    const-string v1, "/data/@btmtk/ftpc_folder_obj.xml"

    sget-object v2, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->SERVER_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentResolver;Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;)V

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mThread:Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    .line 1384
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mThread:Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1385
    return-void
.end method

.method private declared-synchronized prepareTransferringDialog(IZ)V
    .locals 23
    .parameter "op"
    .parameter "restore"

    .prologue
    .line 1088
    monitor-enter p0

    const/4 v11, 0x0

    .line 1089
    .local v11, dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    const/4 v14, 0x1

    .line 1093
    .local v14, indet:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    if-eqz v4, :cond_0

    .line 1094
    const-string v4, "BluetoothFtpClient"

    const-string v5, "[BT][FTP] prepareTransferringDialog(): mProgressDialog is not null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :goto_0
    monitor-exit p0

    return-void

    .line 1098
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    if-nez v4, :cond_2

    .line 1105
    const-string v4, "BluetoothFtpClient"

    const-string v5, "[BT][FTP] Transferring Queue is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v13

    .line 1115
    .local v13, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "BluetoothFtpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][FTP] prepareTransferringDialog(), Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/16 v4, 0x7de

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1088
    .end local v13           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit p0

    throw v4

    .line 1108
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1109
    .local v10, count:I
    if-nez v10, :cond_3

    .line 1110
    const-string v4, "BluetoothFtpClient"

    const-string v5, "[BT][FTP] Transferring Queeu is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1120
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    const-string v5, "status"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1122
    .local v20, status_idx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1124
    .local v19, status:I
    new-instance v12, Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1125
    .end local v11           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .local v12, dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    const v4, 0x7f07006d

    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1126
    const/4 v4, -0x3

    const v5, 0x7f070097

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mAbortClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v12, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mAbortCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v12, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1130
    const/4 v4, 0x1

    if-le v10, v4, :cond_7

    .line 1131
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mMultipleTransfer:Z

    .line 1132
    const/4 v4, 0x4

    invoke-virtual {v12, v4}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgressMode(I)V

    .line 1133
    invoke-virtual {v12, v10}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setMax(I)V

    .line 1135
    if-eqz p2, :cond_6

    .line 1136
    :goto_2
    const/16 v4, 0x15

    move/from16 v0, v19

    if-eq v0, v4, :cond_5

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1138
    const-string v4, "BluetoothFtpClient"

    const-string v5, "[BT][FTP] No file is transferring now. Don\'t show the dialog."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 1139
    .end local v12           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .restart local v11       #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    goto/16 :goto_0

    .line 1141
    .end local v11           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .restart local v12       #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    goto :goto_2

    .line 1143
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v12, v4, v5}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgress(J)V

    .line 1169
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->getCurrentTransferringName()Ljava/lang/String;

    move-result-object v16

    .line 1171
    .local v16, name:Ljava/lang/String;
    const/16 v4, 0x7e4

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 1172
    const v4, 0x7f07006f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1180
    .local v15, msg:Ljava/lang/String;
    :goto_4
    invoke-virtual {v12, v14}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setIndeterminate(Z)V

    .line 1181
    invoke-virtual {v12, v15}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 1183
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    .line 1184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    move-object v11, v12

    .line 1185
    .end local v12           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .restart local v11       #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    goto/16 :goto_0

    .line 1146
    .end local v11           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .end local v15           #msg:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .restart local v12       #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :cond_6
    const-wide/16 v4, 0x1

    invoke-virtual {v12, v4, v5}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgress(J)V

    goto :goto_3

    .line 1088
    :catchall_1
    move-exception v4

    move-object v11, v12

    .end local v12           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .restart local v11       #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    goto/16 :goto_1

    .line 1150
    .end local v11           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .restart local v12       #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mMultipleTransfer:Z

    .line 1151
    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgressMode(I)V

    .line 1153
    if-eqz p2, :cond_9

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    const-string v6, "progress"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1155
    .local v17, p:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    const-string v6, "total"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1157
    .local v21, t:J
    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-lez v4, :cond_8

    .line 1158
    move-wide/from16 v0, v17

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/ftp/Utils;->getPercentage(JJ)J

    move-result-wide v17

    .line 1159
    const/4 v4, 0x3

    invoke-virtual {v12, v4}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgressMode(I)V

    .line 1160
    const/4 v14, 0x0

    .line 1162
    :cond_8
    move-wide/from16 v0, v17

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgress(J)V

    goto/16 :goto_3

    .line 1165
    .end local v17           #p:J
    .end local v21           #t:J
    :cond_9
    const-wide/16 v4, 0x0

    invoke-virtual {v12, v4, v5}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgress(J)V

    goto/16 :goto_3

    .line 1173
    .restart local v16       #name:Ljava/lang/String;
    :cond_a
    const/16 v4, 0x7e5

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 1174
    const v4, 0x7f07006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #msg:Ljava/lang/String;
    goto/16 :goto_4

    .line 1176
    .end local v15           #msg:Ljava/lang/String;
    :cond_b
    const-string v4, "BluetoothFtpClient"

    const-string v5, "[BT][FTP] Invalid Operation for Transferring."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v11, v12

    .line 1177
    .end local v12           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .restart local v11       #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    goto/16 :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    const/16 v2, 0x812

    .line 1294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    .line 1295
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V

    .line 1299
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 1300
    iput v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDialogId:I

    .line 1301
    return-void
.end method

.method private showAlertExDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    const/16 v2, 0x813

    .line 1305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    .line 1306
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V

    .line 1310
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 1311
    iput v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDialogId:I

    .line 1312
    return-void
.end method

.method private showConfirmDeleteDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 1351
    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    .line 1355
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const/16 v1, 0x810

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1358
    return-void
.end method

.method private showOpDialog(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 1316
    const v4, 0x7f090013

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1317
    .local v1, nameView:Landroid/widget/TextView;
    const v4, 0x7f090012

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1319
    .local v3, typeView:Landroid/view/View;
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 1320
    :cond_0
    const-string v4, "BluetoothFtpClient"

    const-string v5, "[BT][FTP] showOpDialog(), nameView or typeView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_0
    return-void

    .line 1324
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1327
    .local v2, type:I
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;

    .line 1328
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    .line 1329
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    const-string v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    packed-switch v2, :pswitch_data_0

    .line 1344
    const-string v4, "BluetoothFtpClient"

    const-string v5, "[BT][FTP] Unknown Type"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1333
    :pswitch_0
    const/16 v4, 0x80e

    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1340
    :pswitch_1
    const/16 v4, 0x80d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized showProgressDialog(I)V
    .locals 7
    .parameter "op"

    .prologue
    .line 1235
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 1282
    :goto_0
    monitor-exit p0

    return-void

    .line 1239
    :cond_0
    :try_start_1
    const-string v5, ""

    .local v5, title:Ljava/lang/String;
    const-string v3, ""

    .line 1240
    .local v3, msg:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, bIndet:Z
    const/4 v0, 0x0

    .line 1241
    .local v0, bCancelable:Z
    const/4 v4, 0x0

    .line 1243
    .local v4, ocl:Landroid/content/DialogInterface$OnCancelListener;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1245
    :pswitch_1
    const v6, 0x7f070064

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1246
    const/4 v1, 0x1

    .line 1247
    const/4 v0, 0x1

    .line 1248
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCancelConnectListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 1272
    :goto_1
    new-instance v2, Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1273
    .local v2, dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1274
    invoke-virtual {v2, v3}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v2, v1}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setIndeterminate(Z)V

    .line 1276
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1277
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1278
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1280
    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    .line 1281
    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1235
    .end local v0           #bCancelable:Z
    .end local v1           #bIndet:Z
    .end local v2           #dialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #ocl:Landroid/content/DialogInterface$OnCancelListener;
    .end local v5           #title:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1257
    .restart local v0       #bCancelable:Z
    .restart local v1       #bIndet:Z
    .restart local v3       #msg:Ljava/lang/String;
    .restart local v4       #ocl:Landroid/content/DialogInterface$OnCancelListener;
    .restart local v5       #title:Ljava/lang/String;
    :pswitch_2
    const v6, 0x7f070066

    :try_start_2
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1258
    const/4 v1, 0x1

    .line 1259
    const/4 v0, 0x0

    .line 1260
    goto :goto_1

    .line 1263
    :pswitch_3
    const v6, 0x7f070067

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1264
    const/4 v1, 0x1

    .line 1265
    const/4 v0, 0x0

    .line 1266
    goto :goto_1

    .line 1243
    :pswitch_data_0
    .packed-switch 0x7dd
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showTextToast(I)V
    .locals 2
    .parameter "text_id"

    .prologue
    .line 1362
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1363
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1364
    return-void
.end method

.method private declared-synchronized updateOrDismissTransferringDialog(II)V
    .locals 6
    .parameter "msg_id"
    .parameter "rsp_code"

    .prologue
    const/16 v5, 0x2a

    const/16 v4, 0x26

    .line 1189
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, dialog_msg:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, dialog_title:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1191
    .local v2, name:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 1231
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1195
    :cond_1
    if-eqz p2, :cond_2

    .line 1196
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V

    .line 1197
    const v3, 0x7f070071

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1200
    move-object v0, v1

    .line 1201
    invoke-direct {p0, v1, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v3, "BluetoothFtpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BT][FTP] Transfer unfinished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->getRspString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1189
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1207
    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mMultipleTransfer:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1208
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->getCurrentTransferringName()Ljava/lang/String;

    move-result-object v2

    .line 1210
    if-ne p1, v5, :cond_3

    .line 1211
    const v3, 0x7f07006f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    :goto_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 1219
    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgress(J)V

    goto :goto_0

    .line 1212
    :cond_3
    if-ne p1, v4, :cond_4

    .line 1213
    const v3, 0x7f07006e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1215
    :cond_4
    const-string v3, "BluetoothFtpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BT][FTP] Invalid Message ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1222
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V

    .line 1223
    const v3, 0x7f070070

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showTextToast(I)V

    .line 1225
    if-eq p1, v5, :cond_0

    .line 1227
    if-ne p1, v4, :cond_0

    .line 1228
    const/16 v3, 0x7df

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private updateUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1048
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    if-nez v0, :cond_0

    .line 1049
    const-string v0, "BluetoothFtpClient"

    const-string v1, "[BT][FTP] updateUI(), mFtpClient is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1084
    :goto_0
    return-void

    .line 1055
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClient:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-interface {v0}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPath:Ljava/lang/String;

    .line 1056
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPathView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :goto_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderContentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderContentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->SERVER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderContentCursor:Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1075
    :goto_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderContentCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1078
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1080
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPathView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1083
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v7

    .line 1058
    .local v7, re:Landroid/os/RemoteException;
    const-string v0, "BluetoothFtpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1070
    .end local v7           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 1071
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "BluetoothFtpClient"

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

    .line 1072
    const/16 v0, 0x7de

    invoke-direct {p0, v0, v8}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getRspString(I)Ljava/lang/String;
    .locals 2
    .parameter "code"

    .prologue
    .line 1388
    add-int/lit8 v0, p1, -0x80

    .line 1389
    .local v0, tmp:I
    if-lez v0, :cond_0

    .line 1405
    :goto_0
    const-string v1, "Unknown"

    return-object v1

    :cond_0
    move v0, p1

    .line 1389
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 759
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    const/16 v0, 0x811

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 770
    :goto_0
    return-void

    .line 767
    :cond_0
    const-string v0, "__ftpc_path_parent__"

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;

    .line 768
    const/16 v0, 0x7e1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 644
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 645
    const-string v0, "BluetoothFtpClient"

    const-string v1, "[BT][FTP] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 648
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mResolver:Landroid/content/ContentResolver;

    .line 650
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 652
    if-eqz p1, :cond_0

    .line 653
    const-string v0, "current_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;

    .line 654
    const-string v0, "dialog_arguments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    .line 657
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClientConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    const-string v0, "BluetoothFtpClient"

    const-string v1, "[BT][FTP] Failed to bind service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPathView:Landroid/widget/TextView;

    .line 662
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPathView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPathView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mRequestFocusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    :goto_0
    new-array v4, v3, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v4, v2

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "size"

    aput-object v1, v4, v0

    .line 671
    .local v4, from:[Ljava/lang/String;
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 674
    .local v5, to:[I
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f03000c

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 675
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 676
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 677
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.bluetooth.ftp.client.ACTION_PULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.bluetooth.ftp.client.ACTION_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 682
    return-void

    .line 665
    .end local v4           #from:[Ljava/lang/String;
    .end local v5           #to:[I
    :cond_2
    const-string v0, "BluetoothFtpClient"

    const-string v1, "[BT][FTP] onCreate(): mCurrentPathView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 671
    nop

    :array_0
    .array-data 0x4
        0x13t 0x0t 0x9t 0x7ft
        0x12t 0x0t 0x9t 0x7ft
        0x14t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v4, 0x1080027

    const v7, 0x7f070097

    const v6, 0x7f070096

    .line 844
    const/4 v1, 0x0

    .line 845
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 847
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 915
    const-string v4, "BluetoothFtpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][FTP] Invalid dialog id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_0
    return-object v1

    .line 849
    :pswitch_0
    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Null"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060006

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFileOpListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 852
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 853
    goto :goto_0

    .line 856
    :pswitch_1
    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060007

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderOpListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 859
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 860
    goto :goto_0

    .line 863
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 864
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030010

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 867
    .local v3, inputView:Landroid/view/View;
    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameEditText:Landroid/widget/EditText;

    .line 869
    const v4, 0x7f07008d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNewFolderListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNewFolderListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 873
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 874
    goto :goto_0

    .line 878
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #inputView:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070077

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mConfirmDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mConfirmDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 883
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 884
    goto :goto_0

    .line 887
    :pswitch_4
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07007d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07007e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mConfirmExitListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mConfirmExitListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 892
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 893
    goto/16 :goto_0

    .line 896
    :pswitch_5
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 900
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 901
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 905
    :pswitch_6
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCancelConnectListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mConfirmExitListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 910
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 911
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 847
    nop

    :pswitch_data_0
    .packed-switch 0x80d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 774
    const/16 v0, 0x803

    const v1, 0x7f070083

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 776
    const/16 v0, 0x804

    const v1, 0x7f070084

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 778
    const/16 v0, 0x805

    const v1, 0x7f070085

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 780
    const/16 v0, 0x806

    const v1, 0x7f070086

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 782
    const/16 v0, 0x807

    const v1, 0x7f070087

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 784
    const/16 v0, 0x808

    const v1, 0x7f070088

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 786
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 729
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 730
    const-string v0, "BluetoothFtpClient"

    const-string v1, "[BT][FTP] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 733
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V

    .line 735
    const/16 v0, 0x807

    invoke-virtual {p0, v0}, Landroid/app/Activity;->finishActivity(I)V

    .line 736
    const/16 v0, 0x803

    invoke-virtual {p0, v0}, Landroid/app/Activity;->finishActivity(I)V

    .line 738
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderContentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderContentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 740
    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFolderContentCursor:Landroid/database/Cursor;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 745
    iput-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mTransferringCursor:Landroid/database/Cursor;

    .line 748
    :cond_1
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mThread:Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    if-eqz v0, :cond_2

    .line 749
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mThread:Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->removeListener()V

    .line 752
    :cond_2
    const/16 v0, 0x7dc

    invoke-direct {p0, v0, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mFtpClientConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 755
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 1484
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showOpDialog(Landroid/view/View;)V

    .line 1485
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1489
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showOpDialog(Landroid/view/View;)V

    .line 1491
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 799
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 839
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 801
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 802
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/ftp/BluetoothFtpLocalBrowser;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const/16 v1, 0x803

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 809
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    const/16 v1, 0x80f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 812
    :pswitch_2
    const/16 v1, 0x7df

    invoke-direct {p0, v1, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V

    goto :goto_0

    .line 815
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    const v1, 0x7f07007f

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showTextToast(I)V

    goto :goto_0

    .line 818
    :cond_0
    const-string v1, "__ftpc_path_root__"

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;

    .line 819
    const/16 v1, 0x7e2

    invoke-direct {p0, v1, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V

    goto :goto_0

    .line 824
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 825
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/ftp/BluetoothFtpSeveralMarker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v1, "direction"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    const/16 v1, 0x807

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 833
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_5
    const/16 v1, 0x7de

    invoke-direct {p0, v1, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V

    goto :goto_0

    .line 799
    :pswitch_data_0
    .packed-switch 0x803
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onParsingDone(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1413
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1415
    .local v0, msg:Landroid/os/Message;
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 1416
    const/16 v1, 0x7d1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1417
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1423
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1424
    return-void

    .line 1420
    :cond_0
    const/16 v1, 0x7d4

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 712
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 714
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 924
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    .line 925
    .local v1, args:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 959
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 928
    :pswitch_1
    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 933
    :pswitch_2
    instance-of v4, p2, Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    move-object v0, p2

    .line 934
    check-cast v0, Landroid/app/AlertDialog;

    .line 935
    .local v0, alert:Landroid/app/AlertDialog;
    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 936
    const-string v4, "message"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 942
    .end local v0           #alert:Landroid/app/AlertDialog;
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 943
    .local v3, editable:Landroid/text/Editable;
    if-eqz v3, :cond_0

    .line 944
    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 950
    .end local v3           #editable:Landroid/text/Editable;
    :pswitch_4
    instance-of v4, p2, Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    move-object v2, p2

    .line 951
    check-cast v2, Landroid/app/AlertDialog;

    .line 952
    .local v2, cnf_dialog:Landroid/app/AlertDialog;
    const-string v4, "message"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 925
    nop

    :pswitch_data_0
    .packed-switch 0x80d
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 793
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 692
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 698
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDialogId:I

    .line 699
    .local v0, pending:I
    const/16 v1, 0x80c

    if-eq v0, v1, :cond_1

    .line 700
    invoke-virtual {p0, v0}, Landroid/app/Activity;->dismissDialog(I)V

    .line 701
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 705
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 720
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 721
    const-string v0, "current_item"

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_0
    const-string v0, "dialog_arguments"

    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mDialogArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 725
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 686
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 688
    return-void
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 8
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 1428
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1429
    .local v2, id:I
    const-string v6, "type"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1430
    .local v5, typeIndex:I
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1431
    .local v4, type:I
    const-string v6, "modified"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1433
    .local v1, dateIndex:I
    const/4 v3, -0x1

    .line 1434
    .local v3, sizeIndex:I
    const/4 v0, 0x0

    .line 1436
    .local v0, date:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 1479
    .end local p1
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 1438
    .restart local p1
    :pswitch_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1443
    .restart local p1
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1444
    packed-switch v4, :pswitch_data_1

    .line 1458
    :pswitch_2
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f020028

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1446
    .restart local p1
    :pswitch_3
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f02001b

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1449
    .restart local p1
    :pswitch_4
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f020019

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1452
    .restart local p1
    :pswitch_5
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f02001c

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1455
    .restart local p1
    :pswitch_6
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v6, 0x7f020029

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1464
    .restart local p1
    :pswitch_7
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1465
    move v3, p3

    .line 1467
    const/16 v6, 0xa

    if-ne v4, v6, :cond_0

    .line 1468
    check-cast p1, Lcom/mediatek/bluetooth/ftp/EntryInfoView;

    .end local p1
    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7, v0}, Lcom/mediatek/bluetooth/ftp/EntryInfoView;->setEntryInfo(JLjava/lang/String;)V

    goto :goto_0

    .line 1470
    .restart local p1
    :cond_0
    check-cast p1, Lcom/mediatek/bluetooth/ftp/EntryInfoView;

    .end local p1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7, v0}, Lcom/mediatek/bluetooth/ftp/EntryInfoView;->setEntryInfo(JLjava/lang/String;)V

    goto :goto_0

    .line 1436
    nop

    :pswitch_data_0
    .packed-switch 0x7f090012
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 1444
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
