.class Lcom/mediatek/filemanager/AbsBaseActivity$1;
.super Ljava/lang/Object;
.source "AbsBaseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AbsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/AbsBaseActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$1;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 145
    const-string v0, "AbsBaseActivity"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity$1;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    check-cast p2, Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;->getServiceInstance()Lcom/mediatek/filemanager/service/FileManagerService;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    .line 147
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity$1;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->serviceConnected()V

    .line 148
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity$1;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->disconnected(Ljava/lang/String;)V

    .line 140
    const-string v0, "AbsBaseActivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method
