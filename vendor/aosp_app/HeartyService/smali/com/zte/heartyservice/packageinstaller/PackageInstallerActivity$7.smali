.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$7;
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
    .line 2340
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$7;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2342
    const-string v0, "PackageInstaller"

    const-string v1, "Canceling installation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$7;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    .line 2344
    return-void
.end method