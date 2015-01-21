.class Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;
.super Ljava/lang/Thread;
.source "CdsRadioInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    iput-object p2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #calls: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->pingIpAddr()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$2000(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    .line 886
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 887
    return-void
.end method
