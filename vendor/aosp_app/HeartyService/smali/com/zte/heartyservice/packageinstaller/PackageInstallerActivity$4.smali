.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$4;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2296
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$4;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2298
    const-string v1, "PackageInstaller"

    const-string v2, "Launching settings"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$4;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2303
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$4;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->initiateInstall()V
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2308
    :goto_0
    return-void

    .line 2304
    :catch_0
    move-exception v0

    .line 2306
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$4;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->launchSettingsAppAndFinish()V
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    goto :goto_0
.end method
