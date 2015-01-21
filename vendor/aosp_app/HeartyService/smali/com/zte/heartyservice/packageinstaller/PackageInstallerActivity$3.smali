.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$3;
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
    .line 2271
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$3;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$3;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isReplace:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 2274
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$3;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    .line 2275
    return-void
.end method
