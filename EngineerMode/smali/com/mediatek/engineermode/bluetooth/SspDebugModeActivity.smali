.class public Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;
.super Landroid/app/Activity;
.source "SspDebugModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;
    }
.end annotation


# static fields
.field private static final CLOSE_BT:I = 0xc

.field private static final CLOSE_BT_FINISHED:I = 0x4

.field private static final EXIT_EM_BT:I = 0xd

.field private static final KEY_PROP_SSP:Ljava/lang/String; = "mediatek.btem.ssp"

.field private static final OPEN_BT:I = 0xb

.field private static final OPEN_BT_FINISHED:I = 0x3

.field private static final OP_CLOSE_BT:I = 0x2

.field private static final OP_OPEN_BT:I = 0x1

.field private static final SET_SSP:I = 0x5

.field private static final SET_SSP_FINISHED:I = 0x6

.field private static final SLEEP_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SSPDebugMode"

.field private static final VALUE_FALSE:Ljava/lang/String; = "false"

.field private static final VALUE_TRUE:Ljava/lang/String; = "true"


# instance fields
.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mChecked:Landroid/widget/CheckBox;

.field private mSspModeOn:Z

.field private mUiHandler:Landroid/os/Handler;

.field private mWorkHandler:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z

    .line 106
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;

    .line 107
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 147
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;-><init>(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mUiHandler:Landroid/os/Handler;

    .line 248
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 213
    const-string v0, "SSPDebugMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->onBackPressed mSspModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08029d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/EngineerMode;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 224
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 225
    return-void

    .line 221
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z

    .line 231
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    const-string v0, "SSPDebugMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSPDebug isChecked--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "SSPDebugMode"

    const-string v1, " back EngineerMode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v3, 0x7f030086

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 116
    const v3, 0x7f0b042a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f0802d4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v3, 0x7f0b042b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;

    .line 122
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mChecked:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    new-instance v3, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v3}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v3, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 139
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SSPDebugMode"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, workThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 142
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 143
    .local v0, looper:Landroid/os/Looper;
    new-instance v3, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;)V

    iput-object v3, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;

    .line 145
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    const-string v1, "SSPDebugMode"

    const-string v2, "-->onCreateDialog"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 177
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f08029b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 180
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 182
    const-string v1, "SSPDebugMode"

    const-string v2, "OPEN_BT ProgressDialog succeed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 185
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080296

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08029d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080294

    new-instance v3, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$2;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$2;-><init>(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 199
    .local v0, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 200
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 201
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f08029c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 204
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 208
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method
