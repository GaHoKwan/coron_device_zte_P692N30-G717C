.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$12;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->init()V
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
    .line 2509
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$12;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 2513
    const-string v1, "PackageInstaller"

    const-string v2, "send intent=========xxx=yy============="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2515
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$12;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const-class v2, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2516
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$12;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2517
    const-string v1, "PackageInstaller"

    const-string v2, "go to detail xx window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    return-void
.end method
