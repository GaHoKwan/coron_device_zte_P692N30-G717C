.class public abstract Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;
.super Landroid/app/ListActivity;
.source "AbstractPricacyForefatherListActivity.java"


# instance fields
.field private mExitPrivacySpaceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private needCheckKey:Z

.field private needCheckSD:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->needCheckKey:Z

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->needCheckSD:Z

    .line 56
    new-instance v0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity$1;-><init>(Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->mExitPrivacySpaceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->needCheckSD:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-boolean v1, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->needCheckKey:Z

    if-ne v1, v2, :cond_0

    .line 34
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->finish()V

    .line 39
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYSPACE_BROADCAST:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, filter:Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->needCheckSD:Z

    if-ne v1, v2, :cond_1

    .line 41
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYIMAGEVIDEOFILE_BROADCAST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->mExitPrivacySpaceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->mExitPrivacySpaceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isShowPrivacyLoginActivity()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 85
    return-void
.end method

.method public setNeedCheckKey(Z)V
    .locals 0
    .parameter "needCheckKey"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->needCheckKey:Z

    .line 24
    return-void
.end method

.method public setNeedCheckSD(Z)V
    .locals 0
    .parameter "needCheckSD"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->needCheckSD:Z

    .line 28
    return-void
.end method
