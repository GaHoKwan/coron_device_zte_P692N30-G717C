.class Lcom/mediatek/calendarimporter/BindServiceHelper$1;
.super Ljava/lang/Object;
.source "BindServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calendarimporter/BindServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/BindServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 61
    const-string v0, "BindServiceHelper"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    check-cast p2, Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;->getService()Lcom/mediatek/calendarimporter/service/VCalService;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 63
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    #getter for: Lcom/mediatek/calendarimporter/BindServiceHelper;->mConnectedOperation:Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->access$100(Lcom/mediatek/calendarimporter/BindServiceHelper;)Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    #getter for: Lcom/mediatek/calendarimporter/BindServiceHelper;->mConnectedOperation:Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->access$100(Lcom/mediatek/calendarimporter/BindServiceHelper;)Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    iget-object v1, v1, Lcom/mediatek/calendarimporter/BindServiceHelper;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    invoke-interface {v0, v1}, Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;->serviceConnected(Lcom/mediatek/calendarimporter/service/VCalService;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    iget-object v0, v0, Lcom/mediatek/calendarimporter/BindServiceHelper;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v1, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    #getter for: Lcom/mediatek/calendarimporter/BindServiceHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/calendarimporter/BindServiceHelper;->access$000(Lcom/mediatek/calendarimporter/BindServiceHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/VCalService;->disconnected(Ljava/lang/String;)V

    .line 53
    const-string v0, "BindServiceHelper"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    #getter for: Lcom/mediatek/calendarimporter/BindServiceHelper;->mConnectedOperation:Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->access$100(Lcom/mediatek/calendarimporter/BindServiceHelper;)Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mediatek/calendarimporter/BindServiceHelper$1;->this$0:Lcom/mediatek/calendarimporter/BindServiceHelper;

    #getter for: Lcom/mediatek/calendarimporter/BindServiceHelper;->mConnectedOperation:Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->access$100(Lcom/mediatek/calendarimporter/BindServiceHelper;)Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;->serviceUnConnected()V

    .line 57
    :cond_0
    return-void
.end method
