.class Lcom/mediatek/engineermode/lcm/LCM$2;
.super Ljava/lang/Thread;
.source "LCM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/lcm/LCM;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/lcm/LCM;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/lcm/LCM;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 152
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    invoke-static {}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCMGetInterfaceType()I

    move-result v6

    #setter for: Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/lcm/LCM;->access$002(Lcom/mediatek/engineermode/lcm/LCM;I)I

    .line 153
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/lcm/LCM;->access$900(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->onResume--LCMGetInterfaceType()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mInterfaceType:I
    invoke-static {v7}, Lcom/mediatek/engineermode/lcm/LCM;->access$000(Lcom/mediatek/engineermode/lcm/LCM;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCMGetTm()I

    move-result v4

    .line 157
    .local v4, tmValue:I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    const-string v6, "ON"

    #setter for: Lcom/mediatek/engineermode/lcm/LCM;->mTmStatus:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/lcm/LCM;->access$502(Lcom/mediatek/engineermode/lcm/LCM;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/lcm/LCM;->access$900(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->onResume--tmValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCDWriteCycleGetCurrentVal()I

    move-result v0

    .line 163
    .local v0, cycleValue:I
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/engineermode/lcm/LCM;->mCycleString:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/lcm/LCM;->access$102(Lcom/mediatek/engineermode/lcm/LCM;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/lcm/LCM;->access$900(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->onResume--cycleValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mCycleString:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/lcm/LCM;->access$100(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCMGetMipi()I

    move-result v2

    .line 168
    .local v2, mipiValue:I
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/lcm/LCM;->access$402(Lcom/mediatek/engineermode/lcm/LCM;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/lcm/LCM;->access$900(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->onResume--LCMGetMipi()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mMipiString:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/lcm/LCM;->access$400(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/lcm/LCM;->access$900(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->onResume--LCDWriteCycleGetMinVal()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->LCDWriteCycleGetMinVal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0           #cycleValue:I
    .end local v2           #mipiValue:I
    .end local v4           #tmValue:I
    :goto_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 181
    .local v3, msg:Landroid/os/Message;
    const/16 v5, 0x10

    iput v5, v3, Landroid/os/Message;->what:I

    .line 182
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/engineermode/lcm/LCM;->access$1000(Lcom/mediatek/engineermode/lcm/LCM;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    return-void

    .line 175
    .end local v3           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/mediatek/engineermode/lcm/LCM$2;->this$0:Lcom/mediatek/engineermode/lcm/LCM;

    #getter for: Lcom/mediatek/engineermode/lcm/LCM;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/lcm/LCM;->access$900(Lcom/mediatek/engineermode/lcm/LCM;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->onResume--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
