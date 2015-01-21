.class Lcom/mediatek/connectivity/CdsWifiInfoActivity$3;
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
    .line 281
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$3;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$3;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->updatePingState()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$600(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V

    .line 284
    return-void
.end method
