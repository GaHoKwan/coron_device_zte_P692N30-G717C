.class public Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;
.super Lcom/android/internal/app/AlertActivity;
.source "BipInitPushConfirmation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_TIMEOUT:Ljava/lang/String; = "com.mediatek.bluetooth.bipinitpushconfirmation.action.TIMEOUT"

.field private static final TAG:Ljava/lang/String; = "BipInitiatorPushConfirmation"

.field private static mClick:Z


# instance fields
.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mClick:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mView:Landroid/view/View;

    .line 75
    new-instance v0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation$1;-><init>(Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    sput-boolean p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mClick:Z

    return p0
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 188
    const-string v0, "BipInitiatorPushConfirmation"

    const-string v1, "createView"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mView:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mView:Landroid/view/View;

    return-object v0
.end method

.method private setUpDialog()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "BipInitiatorPushConfirmation"

    const-string v1, "setUpDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 174
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 175
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 177
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 178
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 179
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 180
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 182
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 184
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 198
    const-string v1, "BipInitiatorPushConfirmation"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mClick:Z

    .line 201
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 202
    const-string v1, "BipInitiatorPushConfirmation"

    const-string v2, "positive button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.SEND"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 217
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 218
    return-void

    .line 209
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 210
    const-string v1, "BipInitiatorPushConfirmation"

    const-string v2, "negative button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIPI_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const-string v3, "BipInitiatorPushConfirmation"

    const-string v4, "OnCreate"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 107
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, action:Ljava/lang/String;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v2, mFilter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    const/4 v3, 0x0

    sput-boolean v3, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mClick:Z

    .line 116
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->setUpDialog()V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "BipInitiatorPushConfirmation"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 137
    const-string v1, "BipInitiatorPushConfirmation"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-boolean v1, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->mClick:Z

    if-nez v1, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIPI_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "BipInitiatorPushConfirmation"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 124
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "BipInitiatorPushConfirmation"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 154
    return-void
.end method
