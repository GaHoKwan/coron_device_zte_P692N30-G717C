.class Lcom/zte/privacy/T;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic cB:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/privacy/T;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Lcom/zte/privacy/ZTEPrivacyManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.zte.heartyservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "ZTEPrivacyManagerService"

    const-string v1, "heartyservice been removed, so clear the related settings!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/privacy/T;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-static {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->b(Lcom/zte/privacy/ZTEPrivacyManagerService;)V

    iget-object v0, p0, Lcom/zte/privacy/T;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->clearAllLockedPackages()V

    iget-object v0, p0, Lcom/zte/privacy/T;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-static {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->c(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/aC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/privacy/aC;->cA()V

    goto :goto_0

    :cond_2
    const-string v1, "ZTEPrivacyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " been removed, so clear related settings!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zte/privacy/T;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v1, v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->clearPackagePermissionSetting(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/privacy/T;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v1, v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->removeLockedPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
