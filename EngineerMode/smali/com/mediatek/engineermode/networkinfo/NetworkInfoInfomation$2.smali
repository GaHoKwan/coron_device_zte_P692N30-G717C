.class Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$2;
.super Ljava/util/TimerTask;
.source "NetworkInfoInfomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$2;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$2;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    #getter for: Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$000(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method
