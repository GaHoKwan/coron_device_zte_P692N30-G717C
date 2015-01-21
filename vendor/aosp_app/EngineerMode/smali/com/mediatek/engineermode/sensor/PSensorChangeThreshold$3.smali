.class Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;
.super Landroid/os/Handler;
.source "PSensorChangeThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0xffff

    .line 135
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_1

    .line 136
    const-string v3, "PSensorChangeThreshold"

    const-string v4, "MSG_CHANGE_THRESHOLD"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    .local v1, high:I
    const/4 v2, 0x0

    .line 139
    .local v2, low:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mEtHigh:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$200(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 140
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mEtLow:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$300(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    if-ltz v1, :cond_0

    if-gt v1, v6, :cond_0

    if-ltz v2, :cond_0

    if-le v2, v6, :cond_2

    .line 142
    :cond_0
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$400(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 155
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #high:I
    .end local v2           #low:I
    :cond_1
    :goto_0
    return-void

    .line 149
    .restart local v1       #high:I
    .restart local v2       #low:I
    :cond_2
    sget v3, Lcom/mediatek/engineermode/sensor/EmSensor;->RET_SUCCESS:I

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/sensor/EmSensor;->setPsensorThreshold(II)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 150
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$400(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 152
    :cond_3
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold$3;->this$0:Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;->access$400(Lcom/mediatek/engineermode/sensor/PSensorChangeThreshold;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
