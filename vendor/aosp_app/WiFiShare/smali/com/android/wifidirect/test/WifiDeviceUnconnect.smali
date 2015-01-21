.class public Lcom/android/wifidirect/test/WifiDeviceUnconnect;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiDeviceUnconnect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 6

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, titleView:Landroid/widget/TextView;
    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, contentView:Landroid/widget/TextView;
    const v3, 0x7f080046

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->mErrorContent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "deviceName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->mErrorContent:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 34
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f020006

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 35
    const v2, 0x7f080045

    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 36
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 37
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 38
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiDeviceUnconnect;->setupAlert()V

    .line 40
    return-void
.end method
