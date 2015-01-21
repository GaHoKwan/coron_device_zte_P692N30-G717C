.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$2;
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
    .line 2276
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2278
    const-string v1, "PackageInstaller"

    const-string v2, "Canceling installation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.install_by_heartyservice_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2280
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2281
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->setResult(I)V

    .line 2282
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    .line 2283
    return-void
.end method
