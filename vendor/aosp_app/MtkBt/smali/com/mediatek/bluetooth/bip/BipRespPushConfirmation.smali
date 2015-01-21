.class public Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;
.super Lcom/android/internal/app/AlertActivity;
.source "BipRespPushConfirmation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_CANCEL_BY_PEER:Ljava/lang/String; = "com.mediatek.bluetooth.biprpushconfirmation.action.CANCEL_BY_PEER"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "com.mediatek.bluetooth.biprpushconfirmation.extra.DEVICE_NAME"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "com.mediatek.bluetooth.biprpushconfirmation.extra.FILE_NAME"

.field public static final EXTRA_FILE_SIZE:Ljava/lang/String; = "com.mediatek.bluetooth.biprpushconfirmation.extra.FILE_SIZE"

.field private static final TAG:Ljava/lang/String; = "BipResponderPushConfirmation"

.field private static mClick:Z

.field private static mFileName:Ljava/lang/String;

.field private static mFileSize:Ljava/lang/String;

.field private static mFromBack:Z

.field private static mRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAlwaysAccept:Landroid/widget/CheckBox;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    sput-boolean v1, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mClick:Z

    .line 81
    sput-boolean v1, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFromBack:Z

    .line 83
    sput-object v0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mRemoteDeviceName:Ljava/lang/String;

    .line 84
    sput-object v0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileName:Ljava/lang/String;

    .line 85
    sput-object v0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileSize:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mView:Landroid/view/View;

    .line 88
    new-instance v0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation$1;-><init>(Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-boolean p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mClick:Z

    return p0
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 221
    const-string v0, "BipResponderPushConfirmation"

    const-string v1, "createView"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mView:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mView:Landroid/view/View;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mDescriptionView:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mView:Landroid/view/View;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mAlwaysAccept:Landroid/widget/CheckBox;

    .line 227
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mDescriptionView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 228
    const-string v0, "BipResponderPushConfirmation"

    const-string v1, "mDescriptionView is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mView:Landroid/view/View;

    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f070012

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileSize:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mRemoteDeviceName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "BipResponderPushConfirmation"

    const-string v1, "setUpDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 207
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 208
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 210
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 211
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 212
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 215
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 217
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "BipResponderPushConfirmation"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 199
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFromBack:Z

    .line 200
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 239
    const-string v1, "BipResponderPushConfirmation"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sput-boolean v4, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mClick:Z

    .line 242
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 243
    const-string v1, "BipResponderPushConfirmation"

    const-string v2, "positive button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.RECEIVE_ACCEPT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "BipResponderPushConfirmation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Always Accept: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mAlwaysAccept:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mAlwaysAccept:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "alwaysAccept"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 266
    return-void

    .line 252
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "alwaysAccept"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 257
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 258
    const-string v1, "BipResponderPushConfirmation"

    const-string v2, "negative button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.RECEIVE_REJECT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 117
    const-string v2, "BipResponderPushConfirmation"

    const-string v3, "OnCreate"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 121
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.bluetooth.biprpushconfirmation.extra.DEVICE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mRemoteDeviceName:Ljava/lang/String;

    .line 124
    sget-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mRemoteDeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 125
    const-string v2, "DeviceName"

    sput-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mRemoteDeviceName:Ljava/lang/String;

    .line 126
    :cond_0
    const-string v2, "com.mediatek.bluetooth.biprpushconfirmation.extra.FILE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileName:Ljava/lang/String;

    .line 127
    sget-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 128
    const-string v2, "FileName"

    sput-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileName:Ljava/lang/String;

    .line 129
    :cond_1
    const-string v2, "com.mediatek.bluetooth.biprpushconfirmation.extra.FILE_SIZE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileSize:Ljava/lang/String;

    .line 130
    sget-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileSize:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 131
    const-string v2, "unknown size"

    sput-object v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFileSize:Ljava/lang/String;

    .line 134
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mClick:Z

    .line 136
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->setUpDialog()V

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "BipResponderPushConfirmation"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 169
    const-string v1, "BipResponderPushConfirmation"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 171
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    sget-boolean v1, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mClick:Z

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFromBack:Z

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.RECEIVE_REJECT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 179
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.RECEIVE_RESTORE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 149
    const-string v1, "BipResponderPushConfirmation"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mFromBack:Z

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "com.mediatek.bluetooth.biprpushconfirmation.action.CANCEL_BY_PEER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipRespPushConfirmation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "BipResponderPushConfirmation"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 144
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "BipResponderPushConfirmation"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 191
    return-void
.end method
