.class Lcom/mediatek/engineermode/dfo/DfoResolution$2;
.super Ljava/lang/Object;
.source "DfoResolution.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/dfo/DfoResolution;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$2;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 170
    new-instance v2, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCount;

    invoke-direct {v2}, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCount;-><init>()V

    .line 171
    .local v2, readCount:Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCount;
    new-instance v3, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadReq;

    invoke-direct {v3}, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadReq;-><init>()V

    .line 172
    .local v3, req:Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadReq;
    new-instance v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;

    invoke-direct {v0}, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;-><init>()V

    .line 174
    .local v0, cnf:Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$2;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #setter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentHeight:I
    invoke-static {v4, v5}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$202(Lcom/mediatek/engineermode/dfo/DfoResolution;I)I

    .line 175
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$2;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #setter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentWidth:I
    invoke-static {v4, v5}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$402(Lcom/mediatek/engineermode/dfo/DfoResolution;I)I

    .line 176
    invoke-static {}, Lcom/mediatek/engineermode/dfo/DfoNative;->init()I

    move-result v4

    sget v5, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    if-ne v4, v5, :cond_6

    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoNative;->readCount(Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCount;)I

    move-result v4

    sget v5, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    if-ne v4, v5, :cond_6

    .line 178
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, v2, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCount;->count:I

    if-ge v1, v4, :cond_5

    .line 179
    iput v1, v3, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadReq;->index:I

    .line 180
    invoke-static {v3, v0}, Lcom/mediatek/engineermode/dfo/DfoNative;->read(Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadReq;Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;)I

    move-result v4

    sget v5, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    if-eq v4, v5, :cond_1

    .line 178
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->name:Ljava/lang/String;

    const-string v5, "LCM_FAKE_HEIGHT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    iget-object v5, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$2;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    iget v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->value:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$2;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultHeight:I
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1000(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v4

    :goto_2
    #setter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentHeight:I
    invoke-static {v5, v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$202(Lcom/mediatek/engineermode/dfo/DfoResolution;I)I

    goto :goto_1

    :cond_2
    iget v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->value:I

    goto :goto_2

    .line 185
    :cond_3
    iget-object v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->name:Ljava/lang/String;

    const-string v5, "LCM_FAKE_WIDTH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    iget-object v5, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$2;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    iget v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->value:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$2;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultWidth:I
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1100(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v4

    :goto_3
    #setter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentWidth:I
    invoke-static {v5, v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$402(Lcom/mediatek/engineermode/dfo/DfoResolution;I)I

    goto :goto_1

    :cond_4
    iget v4, v0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->value:I

    goto :goto_3

    .line 189
    :cond_5
    invoke-static {}, Lcom/mediatek/engineermode/dfo/DfoNative;->deinit()I

    .line 191
    .end local v1           #i:I
    :cond_6
    iget-object v4, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$2;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    #getter for: Lcom/mediatek/engineermode/dfo/DfoResolution;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1200(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    return-void
.end method
