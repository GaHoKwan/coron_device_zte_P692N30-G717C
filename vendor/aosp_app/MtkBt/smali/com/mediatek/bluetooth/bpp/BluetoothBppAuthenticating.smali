.class public Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothBppAuthenticating.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothBppAuthenticating"


# instance fields
.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPasscodeEdit:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mView:Landroid/view/View;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 124
    const-string v0, "BluetoothBppAuthenticating"

    const-string v1, "createView"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mView:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mView:Landroid/view/View;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPasscodeEdit:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mView:Landroid/view/View;

    return-object v0
.end method

.method private setUpDialog()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "BluetoothBppAuthenticating"

    const-string v1, "setUpDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 110
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 111
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 113
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 114
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 120
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    const-string v1, "BluetoothBppAuthenticating"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 139
    const-string v1, "BluetoothBppAuthenticating"

    const-string v2, "positive button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppmanager.action.AUTH_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "com.mediatek.bluetooth.bppmanager.extra.AUTH_PASSWD"

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->mPasscodeEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    return-void

    .line 147
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 148
    const-string v1, "BluetoothBppAuthenticating"

    const-string v2, "negative button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppmanager.action.CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    const-string v2, "BluetoothBppAuthenticating"

    const-string v3, "OnCreate"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;->setUpDialog()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "BluetoothBppAuthenticating"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "BluetoothBppAuthenticating"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "BluetoothBppAuthenticating"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 102
    return-void
.end method
