.class Lcom/mediatek/security/ui/PermissionNotify$1;
.super Ljava/lang/Object;
.source "PermissionNotify.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionNotify;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/PermissionNotify;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionNotify$1;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify$1;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    check-cast p2, Lcom/mediatek/security/service/PermControlService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/security/service/PermControlService$LocalBinder;->getService()Lcom/mediatek/security/service/PermControlService;

    move-result-object v1

    #setter for: Lcom/mediatek/security/ui/PermissionNotify;->mBoundService:Lcom/mediatek/security/service/PermControlService;
    invoke-static {v0, v1}, Lcom/mediatek/security/ui/PermissionNotify;->access$002(Lcom/mediatek/security/ui/PermissionNotify;Lcom/mediatek/security/service/PermControlService;)Lcom/mediatek/security/service/PermControlService;

    .line 53
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify$1;->this$0:Lcom/mediatek/security/ui/PermissionNotify;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/security/ui/PermissionNotify;->mBoundService:Lcom/mediatek/security/service/PermControlService;
    invoke-static {v0, v1}, Lcom/mediatek/security/ui/PermissionNotify;->access$002(Lcom/mediatek/security/ui/PermissionNotify;Lcom/mediatek/security/service/PermControlService;)Lcom/mediatek/security/service/PermControlService;

    .line 58
    return-void
.end method
