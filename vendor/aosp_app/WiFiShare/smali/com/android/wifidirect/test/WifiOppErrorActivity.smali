.class public Lcom/android/wifidirect/test/WifiOppErrorActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiOppErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private itemUri:Landroid/net/Uri;

.field private mErrorContent:Ljava/lang/String;

.field private uriSring:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->itemUri:Landroid/net/Uri;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppErrorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, view:Landroid/view/View;
    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    .local v0, contentView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->mErrorContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 58
    packed-switch p2, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->itemUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->itemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppErrorActivity;->finish()V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, mErrorTitle:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->mErrorContent:Ljava/lang/String;

    .line 34
    const-string v3, "itemUri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->uriSring:Ljava/lang/String;

    .line 35
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->uriSring:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 36
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->uriSring:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->itemUri:Landroid/net/Uri;

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 40
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f020006

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 41
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 42
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppErrorActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 43
    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 44
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    const v3, 0x7f080055

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 46
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppErrorActivity;->setupAlert()V

    .line 48
    return-void
.end method
