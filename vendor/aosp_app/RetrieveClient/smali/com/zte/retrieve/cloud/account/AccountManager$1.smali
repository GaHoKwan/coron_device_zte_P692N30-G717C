.class Lcom/zte/retrieve/cloud/account/AccountManager$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/cloud/account/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 48
    const-string v0, "onServiceConnected"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Lorg/zx/AuthComp/IMyService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/zx/AuthComp/IMyService;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->access$1(Lorg/zx/AuthComp/IMyService;)V

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->access$0(Z)V

    .line 52
    #calls: Lcom/zte/retrieve/cloud/account/AccountManager;->setAuthUrl()V
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->access$2()V

    .line 53
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-string v0, "onServiceDisconnected"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->access$0(Z)V

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->access$1(Lorg/zx/AuthComp/IMyService;)V

    .line 44
    return-void
.end method
