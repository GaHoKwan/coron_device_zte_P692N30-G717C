.class Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;
.super Ljava/lang/Object;
.source "CdsRadioInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1500(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1400(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1700(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1600(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1900(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsRadioInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->access$1800(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    return-void
.end method
