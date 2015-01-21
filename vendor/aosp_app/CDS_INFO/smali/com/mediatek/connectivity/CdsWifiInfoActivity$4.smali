.class Lcom/mediatek/connectivity/CdsWifiInfoActivity$4;
.super Ljava/lang/Object;
.source "CdsWifiInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsWifiInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$4;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$4;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$700(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
