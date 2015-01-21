.class Lcom/mediatek/security/service/PermControlService$PermissionListener;
.super Lcom/mediatek/common/mom/IPermissionListener$Stub;
.source "PermControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/service/PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/service/PermControlService;


# direct methods
.method constructor <init>(Lcom/mediatek/security/service/PermControlService;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mediatek/security/service/PermControlService$PermissionListener;->this$0:Lcom/mediatek/security/service/PermControlService;

    invoke-direct {p0}, Lcom/mediatek/common/mom/IPermissionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionChange(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 2
    .parameter "record"

    .prologue
    .line 341
    const-string v0, "PermControlService"

    const-string v1, "onPermissionChange"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public onPermissionCheck(Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Z
    .locals 5
    .parameter "record"
    .parameter "flag"
    .parameter "uid"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 324
    const-string v2, "PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPermissionCheck pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 328
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService$PermissionListener;->this$0:Lcom/mediatek/security/service/PermControlService;

    #calls: Lcom/mediatek/security/service/PermControlService;->handleCheckCase(Lcom/mediatek/common/mom/PermissionRecord;I)Z
    invoke-static {v0, p1, p2}, Lcom/mediatek/security/service/PermControlService;->access$800(Lcom/mediatek/security/service/PermControlService;Lcom/mediatek/common/mom/PermissionRecord;I)Z

    move-result v0

    .line 336
    :goto_0
    return v0

    .line 329
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/mediatek/security/service/PermControlService$PermissionListener;->this$0:Lcom/mediatek/security/service/PermControlService;

    #calls: Lcom/mediatek/security/service/PermControlService;->showDenyToast(Lcom/mediatek/common/mom/PermissionRecord;)V
    invoke-static {v1, p1}, Lcom/mediatek/security/service/PermControlService;->access$900(Lcom/mediatek/security/service/PermControlService;Lcom/mediatek/common/mom/PermissionRecord;)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 333
    goto :goto_0

    .line 335
    :cond_2
    const-string v1, "PermControlService"

    const-string v2, "Not correct status"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
