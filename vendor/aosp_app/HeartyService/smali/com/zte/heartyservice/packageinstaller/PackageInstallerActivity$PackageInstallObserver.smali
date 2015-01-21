.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2909
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 2911
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2912
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2913
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2914
    return-void
.end method
