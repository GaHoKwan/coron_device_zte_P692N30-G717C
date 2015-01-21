.class Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;
.super Ljava/lang/Object;
.source "ManualNetworkSelection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/ManualNetworkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const-string v1, "connection created, binding local service."

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-static {p2}, Lcom/android/phone/INetworkQueryService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1602(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 761
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->loadGsmNetworksList()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1800(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    .line 762
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const-string v1, "connection disconnected, cleaning local binding."

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1602(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 770
    return-void
.end method
