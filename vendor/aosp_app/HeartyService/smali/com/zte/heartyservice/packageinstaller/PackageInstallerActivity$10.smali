.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$10;
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
    .line 2375
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$10;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2377
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$10;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const-string v2, "allowed_sources"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2379
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$10;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2380
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$10;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    .line 2381
    return-void
.end method
