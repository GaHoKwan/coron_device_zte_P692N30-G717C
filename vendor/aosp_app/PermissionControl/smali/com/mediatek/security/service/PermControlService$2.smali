.class Lcom/mediatek/security/service/PermControlService$2;
.super Lcom/mediatek/common/mom/IMobileConnectionCallback$Stub;
.source "PermControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/security/service/PermControlService;->attachMoMS(Lcom/mediatek/common/mom/IMobileManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/service/PermControlService;


# direct methods
.method constructor <init>(Lcom/mediatek/security/service/PermControlService;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mediatek/security/service/PermControlService$2;->this$0:Lcom/mediatek/security/service/PermControlService;

    invoke-direct {p0}, Lcom/mediatek/common/mom/IMobileConnectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionEnded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService$2;->this$0:Lcom/mediatek/security/service/PermControlService;

    #setter for: Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z
    invoke-static {v2, v1}, Lcom/mediatek/security/service/PermControlService;->access$502(Lcom/mediatek/security/service/PermControlService;Z)Z

    .line 135
    const-string v2, "PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnectionEnded() with mIsAttached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$2;->this$0:Lcom/mediatek/security/service/PermControlService;

    #getter for: Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z
    invoke-static {v4}, Lcom/mediatek/security/service/PermControlService;->access$500(Lcom/mediatek/security/service/PermControlService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/mediatek/security/service/PermControlService$2;->this$0:Lcom/mediatek/security/service/PermControlService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "permission_control_attached"

    iget-object v4, p0, Lcom/mediatek/security/service/PermControlService$2;->this$0:Lcom/mediatek/security/service/PermControlService;

    #getter for: Lcom/mediatek/security/service/PermControlService;->mIsAttached:Z
    invoke-static {v4}, Lcom/mediatek/security/service/PermControlService;->access$500(Lcom/mediatek/security/service/PermControlService;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v1, p0, Lcom/mediatek/security/service/PermControlService$2;->this$0:Lcom/mediatek/security/service/PermControlService;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 140
    .local v0, notifyManager:Landroid/app/NotificationManager;
    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 141
    return-void
.end method

.method public onConnectionResume()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "PermControlService"

    const-string v1, "onConnectionResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService$2;->this$0:Lcom/mediatek/security/service/PermControlService;

    #calls: Lcom/mediatek/security/service/PermControlService;->initService()V
    invoke-static {v0}, Lcom/mediatek/security/service/PermControlService;->access$600(Lcom/mediatek/security/service/PermControlService;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService$2;->this$0:Lcom/mediatek/security/service/PermControlService;

    #calls: Lcom/mediatek/security/service/PermControlService;->registerMoMS()V
    invoke-static {v0}, Lcom/mediatek/security/service/PermControlService;->access$700(Lcom/mediatek/security/service/PermControlService;)V

    .line 147
    return-void
.end method
