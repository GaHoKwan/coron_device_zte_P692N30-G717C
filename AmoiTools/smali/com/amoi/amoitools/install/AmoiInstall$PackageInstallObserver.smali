.class Lcom/amoi/amoitools/install/AmoiInstall$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "AmoiInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/amoitools/install/AmoiInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/amoitools/install/AmoiInstall;


# direct methods
.method constructor <init>(Lcom/amoi/amoitools/install/AmoiInstall;)V
    .locals 0
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/amoi/amoitools/install/AmoiInstall$PackageInstallObserver;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall$PackageInstallObserver;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #getter for: Lcom/amoi/amoitools/install/AmoiInstall;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/amoi/amoitools/install/AmoiInstall;->access$800(Lcom/amoi/amoitools/install/AmoiInstall;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 701
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 702
    iget-object v1, p0, Lcom/amoi/amoitools/install/AmoiInstall$PackageInstallObserver;->this$0:Lcom/amoi/amoitools/install/AmoiInstall;

    #getter for: Lcom/amoi/amoitools/install/AmoiInstall;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/amoi/amoitools/install/AmoiInstall;->access$800(Lcom/amoi/amoitools/install/AmoiInstall;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    return-void
.end method
