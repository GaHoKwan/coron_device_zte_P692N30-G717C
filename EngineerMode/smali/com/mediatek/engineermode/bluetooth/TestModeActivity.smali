.class public Lcom/mediatek/engineermode/bluetooth/TestModeActivity;
.super Landroid/app/Activity;
.source "TestModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_INIT:I = 0x2

.field private static final BT_TEST_1:I = 0x1

.field private static final BT_TEST_2:I = 0x2

.field private static final BT_TEST_FAIL:I = 0x6

.field private static final BT_TEST_STOP_SUCCESS:I = 0x7

.field private static final BT_TEST_SUCCESS:I = 0x5

.field private static final CHECK_BT_STATE:I = 0x1

.field private static final DEFAULT_INT:I = 0x7

.field private static final DEFAULT_STR:Ljava/lang/String; = "7"

.field private static final DIALOG_BT_STOP:I = 0x3

.field private static final OP_BT_TEST_1:I = 0xb

.field private static final OP_DO_TEST_2:I = 0xc

.field private static final OP_DO_TEST_STOP:I = 0xd

.field private static final RETURN_FAIL:I = -0x1

.field private static final RUN_SU:Ljava/lang/String; = "su"

.field private static final TAG:Ljava/lang/String; = "TestMode"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mChecked:Landroid/widget/CheckBox;

.field private final mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mTestModeEdit:Landroid/widget/EditText;

.field private final mUiHandler:Landroid/os/Handler;

.field private mWorkHandler:Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

    .line 103
    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkThread:Landroid/os/HandlerThread;

    .line 136
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;-><init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 170
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$2;-><init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mUiHandler:Landroid/os/Handler;

    .line 261
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mChecked:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mTestModeEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "TestMode"

    const-string v1, "-->onBackPressed "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 197
    const-string v0, "TestMode"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 199
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v2, 0x7f030089

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 112
    const v2, 0x7f0b043a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, tv:Landroid/widget/TextView;
    const v2, 0x7f0b043d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mTestModeEdit:Landroid/widget/EditText;

    .line 116
    const v2, 0x7f0802d3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v2, 0x7f0b043b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mChecked:Landroid/widget/CheckBox;

    .line 119
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mChecked:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 122
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 125
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "TestMode"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkThread:Landroid/os/HandlerThread;

    .line 126
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 128
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 129
    .local v0, looper:Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/TestModeActivity$1;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/TestModeActivity$WorkHandler;

    .line 134
    .end local v0           #looper:Landroid/os/Looper;
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, returnDialog:Landroid/app/Dialog;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 230
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f080299

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 233
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 234
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 235
    move-object v1, v0

    .line 258
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    :goto_0
    return-object v1

    .line 237
    :cond_1
    if-ne p1, v4, :cond_2

    .line 238
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080295

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080297

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080294

    new-instance v4, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$3;

    invoke-direct {v4, p0}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$3;-><init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 249
    .local v0, dialog:Landroid/app/AlertDialog;
    move-object v1, v0

    .line 250
    goto :goto_0

    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 251
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f08029e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 254
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 255
    move-object v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "TestMode"

    const-string v1, "-->onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 221
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 222
    return-void
.end method
