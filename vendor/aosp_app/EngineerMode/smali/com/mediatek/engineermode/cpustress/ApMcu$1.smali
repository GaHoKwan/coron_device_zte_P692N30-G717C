.class Lcom/mediatek/engineermode/cpustress/ApMcu$1;
.super Landroid/os/Handler;
.source "ApMcu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cpustress/ApMcu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/ApMcu;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cpustress/ApMcu;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/ApMcu$1;->this$0:Lcom/mediatek/engineermode/cpustress/ApMcu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 141
    const-string v0, "EM/CpuStress_ApMcu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler receive message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ApMcu$1;->this$0:Lcom/mediatek/engineermode/cpustress/ApMcu;

    #calls: Lcom/mediatek/engineermode/cpustress/ApMcu;->updateTestResult()V
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/ApMcu;->access$000(Lcom/mediatek/engineermode/cpustress/ApMcu;)V

    .line 145
    :cond_1
    return-void
.end method
