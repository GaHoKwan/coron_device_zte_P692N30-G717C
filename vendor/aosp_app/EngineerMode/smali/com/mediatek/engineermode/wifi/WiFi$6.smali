.class Lcom/mediatek/engineermode/wifi/WiFi$6;
.super Ljava/lang/Thread;
.source "WiFi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wifi/WiFi;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFi;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFi;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFi$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFi;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;
    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFi;->access$900(Lcom/mediatek/engineermode/wifi/WiFi;)Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    new-instance v1, Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    invoke-direct {v1, v2}, Lcom/mediatek/engineermode/wifi/WiFiStateManager;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/mediatek/engineermode/wifi/WiFi;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/WiFi;->access$902(Lcom/mediatek/engineermode/wifi/WiFi;Lcom/mediatek/engineermode/wifi/WiFiStateManager;)Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFi;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFi;->access$900(Lcom/mediatek/engineermode/wifi/WiFi;)Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->checkState(Landroid/content/Context;)I

    move-result v1

    #setter for: Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/WiFi;->access$102(Lcom/mediatek/engineermode/wifi/WiFi;I)I

    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFi;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFi;->access$1000(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    return-void
.end method
