.class Lcom/mediatek/engineermode/wifi/WiFi$5;
.super Ljava/lang/Object;
.source "WiFi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 156
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFi$5;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi$5;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFi;->mCbWps:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFi;->access$700(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 159
    .local v0, newState:Z
    const-string v2, "persist.radio.hotspot.probe.rq"

    if-eqz v0, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi$5;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFi;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFi;->access$800(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setApProbeRequestEnabled(Z)Z

    .line 162
    return-void

    .line 159
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method
