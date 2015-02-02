.class public Lcom/mediatek/engineermode/UartUsbSwitch;
.super Landroid/app/Activity;
.source "UartUsbSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;
    }
.end annotation


# static fields
.field private static final FAIL:Ljava/lang/String; = " fail"

.field private static final FILE_PORT_MODE:Ljava/lang/String; = "/sys/devices/platform/mt_usb/portmode"

.field private static final KEY_USB_PORT:Ljava/lang/String; = "mediatek.usb.port.mode"

.field private static final MODE_UART:Ljava/lang/String; = "1"

.field private static final MODE_USB:Ljava/lang/String; = "0"

.field private static final MSG_CHECK_RESULT:I = 0xb

.field private static final SUCCESS:Ljava/lang/String; = " success"

.field private static final TAG:Ljava/lang/String; = "EM/UartUsbSwitch"

.field private static final VAL_UART:Ljava/lang/String; = "uart"

.field private static final VAL_USB:Ljava/lang/String; = "usb"


# instance fields
.field private final mCheckListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mModeVal:Ljava/lang/String;

.field private mRbUart:Landroid/widget/RadioButton;

.field private mRbUsb:Landroid/widget/RadioButton;

.field private mRgMode:Landroid/widget/RadioGroup;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTvCurrent:Landroid/widget/TextView;

.field private mWorkerHandler:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerHandler:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    .line 46
    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerThread:Landroid/os/HandlerThread;

    .line 50
    new-instance v0, Lcom/mediatek/engineermode/UartUsbSwitch$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/UartUsbSwitch$1;-><init>(Lcom/mediatek/engineermode/UartUsbSwitch;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Lcom/mediatek/engineermode/UartUsbSwitch$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/UartUsbSwitch$2;-><init>(Lcom/mediatek/engineermode/UartUsbSwitch;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mCheckListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/UartUsbSwitch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/UartUsbSwitch;->enableUsbUartSwitch(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/UartUsbSwitch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mModeVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/UartUsbSwitch;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/UartUsbSwitch;->waitForState(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/UartUsbSwitch;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/UartUsbSwitch;->updateStatus(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/UartUsbSwitch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/UartUsbSwitch;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/UartUsbSwitch;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/UartUsbSwitch;->doSwitch(Ljava/lang/Boolean;)V

    return-void
.end method

.method private doSwitch(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "bModeUsb"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "usb"

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mModeVal:Ljava/lang/String;

    .line 204
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/UartUsbSwitch;->enableUsbUartSwitch(Z)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mModeVal:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/UartUsbSwitch;->setUsbMode(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerHandler:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    :cond_0
    return-void

    .line 202
    :cond_1
    const-string v0, "uart"

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mModeVal:Ljava/lang/String;

    goto :goto_0
.end method

.method private enableUsbUartSwitch(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRbUsb:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRbUart:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    return-void
.end method

.method private getUsbMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, result:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const-string v3, "cat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v3, "/sys/devices/platform/mt_usb/portmode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v3, "EM/UartUsbSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get current dramc cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 232
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    :cond_0
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    const-string v3, "EM/UartUsbSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get current dramc IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUsbMode(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 241
    const-string v0, "EM/UartUsbSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbMode(), value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "mediatek.usb.port.mode"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 72
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 73
    return-void
.end method

.method private updateStatus(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "bModeUsb"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mTvCurrent:Landroid/widget/TextView;

    const v1, 0x7f0805bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRgMode:Landroid/widget/RadioGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 221
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mTvCurrent:Landroid/widget/TextView;

    const v1, 0x7f0805bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRgMode:Landroid/widget/RadioGroup;

    const v1, 0x7f0b044e

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mTvCurrent:Landroid/widget/TextView;

    const v1, 0x7f0805be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRgMode:Landroid/widget/RadioGroup;

    const v1, 0x7f0b044f

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method private waitForState(Ljava/lang/String;I)Z
    .locals 6
    .parameter "modeVal"
    .parameter "milliSec"

    .prologue
    .line 246
    div-int/lit8 v0, p2, 0x32

    .line 247
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 248
    const-string v3, "mediatek.usb.port.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, relValue:Ljava/lang/String;
    const-string v3, "EM/UartUsbSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check value of usb port mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    const/4 v3, 0x1

    .line 255
    .end local v2           #relValue:Ljava/lang/String;
    :goto_1
    return v3

    .line 253
    .restart local v2       #relValue:Ljava/lang/String;
    :cond_0
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v2           #relValue:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/mt_usb/portmode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const v0, 0x7f0805c0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    const-string v0, "EM/UartUsbSwitch"

    const-string v1, "Port mode file not exist"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    const v0, 0x7f03008e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 144
    const v0, 0x7f0b044c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mTvCurrent:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0b044d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRgMode:Landroid/widget/RadioGroup;

    .line 146
    const v0, 0x7f0b044e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRbUsb:Landroid/widget/RadioButton;

    .line 147
    const v0, 0x7f0b044f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRbUart:Landroid/widget/RadioButton;

    .line 148
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EM/UartUsbSwitch"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerThread:Landroid/os/HandlerThread;

    .line 149
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    new-instance v0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    iget-object v1, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;-><init>(Lcom/mediatek/engineermode/UartUsbSwitch;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerHandler:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerHandler:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerHandler:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 194
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 195
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    invoke-direct {p0}, Lcom/mediatek/engineermode/UartUsbSwitch;->getUsbMode()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, current:Ljava/lang/String;
    const-string v3, "EM/UartUsbSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-nez v0, :cond_0

    .line 159
    const v3, 0x7f0805c1

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 178
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v2, 0x0

    .line 165
    .local v2, mode:Ljava/lang/Boolean;
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 170
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/UartUsbSwitch;->updateStatus(Ljava/lang/Boolean;)V

    .line 171
    iget-object v3, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mRgMode:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mCheckListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 173
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/mediatek/engineermode/UartUsbSwitch;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 167
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method
