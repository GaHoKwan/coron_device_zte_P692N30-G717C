.class public abstract Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "AbstractPrivacyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mExitPrivacySpaceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private needCheckKey:Z

.field private needCheckSD:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->needCheckKey:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->needCheckSD:Z

    .line 66
    new-instance v0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity$1;-><init>(Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->mExitPrivacySpaceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->needCheckSD:Z

    return v0
.end method


# virtual methods
.method public abstract handleClickEvent(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->handleClickEvent(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-boolean v1, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->needCheckKey:Z

    if-ne v1, v2, :cond_0

    .line 48
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->finish()V

    .line 53
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYSPACE_BROADCAST:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, filter:Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->needCheckSD:Z

    if-ne v1, v2, :cond_1

    .line 55
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYIMAGEVIDEOFILE_BROADCAST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->mExitPrivacySpaceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->mExitPrivacySpaceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onDestroy()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isShowPrivacyLoginActivity()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 95
    return-void
.end method

.method public setNeedCheckKey(Z)V
    .locals 0
    .parameter "needCheckKey"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->needCheckKey:Z

    .line 38
    return-void
.end method

.method public setNeedCheckSD(Z)V
    .locals 0
    .parameter "needCheckSD"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->needCheckSD:Z

    .line 42
    return-void
.end method

.method protected superOnResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 99
    return-void
.end method
