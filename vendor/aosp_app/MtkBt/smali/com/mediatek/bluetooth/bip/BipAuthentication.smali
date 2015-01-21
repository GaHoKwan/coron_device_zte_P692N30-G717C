.class public Lcom/mediatek/bluetooth/bip/BipAuthentication;
.super Lcom/android/internal/app/AlertActivity;
.source "BipAuthentication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final EXTRA_FROM:Ljava/lang/String; = "com.mediatek.bluetooth.bipauthentication.extra.FROM"

.field public static final EXTRA_NEED_USERID:Ljava/lang/String; = "com.mediatek.bluetooth.bipauthentication.extra.NEED_USERID"

.field private static final TAG:Ljava/lang/String; = "BipAuthentication"

.field private static mFrom:Ljava/lang/String;

.field private static mNeedUserId:Z

.field private static mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private static mPasswordEdit:Landroid/widget/EditText;

.field private static mUserIdEdit:Landroid/widget/EditText;

.field private static mUserIdText:Landroid/widget/TextView;

.field private static mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 138
    const-string v0, "BipAuthentication"

    const-string v1, "createView"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mView:Landroid/view/View;

    .line 142
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mView:Landroid/view/View;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPasswordEdit:Landroid/widget/EditText;

    .line 144
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mView:Landroid/view/View;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mUserIdText:Landroid/widget/TextView;

    .line 145
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mView:Landroid/view/View;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mUserIdEdit:Landroid/widget/EditText;

    .line 147
    sget-boolean v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mNeedUserId:Z

    if-nez v0, :cond_1

    .line 148
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mUserIdText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mUserIdEdit:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 149
    :cond_0
    const-string v0, "BipAuthentication"

    const-string v1, "UserId text is null or UserId edit is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mView:Landroid/view/View;

    return-object v0

    .line 152
    :cond_2
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mUserIdText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mUserIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "BipAuthentication"

    const-string v1, "setUpDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sput-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 124
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 125
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 127
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 128
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 130
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 132
    sget-object v0, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipAuthentication;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 134
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 163
    const-string v1, "BipAuthentication"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 166
    const-string v1, "BipAuthentication"

    const-string v2, "positive button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mFrom:Ljava/lang/String;

    const-string v2, "BIPI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppmanager.action.BIPI_AUTH_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :goto_0
    sget-boolean v1, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mNeedUserId:Z

    if-eqz v1, :cond_2

    .line 177
    const-string v1, "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_USERID"

    sget-object v2, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mUserIdEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    :goto_1
    const-string v1, "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_PASSWD"

    sget-object v2, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 199
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 200
    return-void

    .line 173
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppmanager.action.BIPR_AUTH_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 180
    :cond_2
    const-string v1, "com.mediatek.bluetooth.bipiservice.extra.EXTRA_AUTH_USERID"

    const-string v2, "UserId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 186
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 187
    const-string v1, "BipAuthentication"

    const-string v2, "negative button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mFrom:Ljava/lang/String;

    const-string v2, "BIPI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIPI_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 194
    :cond_4
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIPR_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const-string v2, "BipAuthentication"

    const-string v3, "OnCreate"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.bluetooth.bipauthentication.extra.FROM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mFrom:Ljava/lang/String;

    .line 90
    const-string v2, "com.mediatek.bluetooth.bipauthentication.extra.NEED_USERID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/bluetooth/bip/BipAuthentication;->mNeedUserId:Z

    .line 93
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipAuthentication;->setUpDialog()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "BipAuthentication"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "BipAuthentication"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 101
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "BipAuthentication"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 116
    return-void
.end method
