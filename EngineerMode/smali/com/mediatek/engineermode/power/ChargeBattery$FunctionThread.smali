.class Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;
.super Ljava/lang/Thread;
.source "ChargeBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/power/ChargeBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FunctionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/power/ChargeBattery;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/power/ChargeBattery;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 145
    :goto_0
    iget-object v8, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mRun:Z
    invoke-static {v8}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$100(Lcom/mediatek/engineermode/power/ChargeBattery;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v7, text:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 148
    .local v1, cmd:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget-object v8, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v5, v8, :cond_2

    .line 149
    iget-object v8, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    aget-object v8, v8, v11

    const-string v9, "SEP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    const-string v8, "- - - - - - - - -\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 153
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mCmdString:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$300(Lcom/mediatek/engineermode/power/ChargeBattery;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v5

    aget-object v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v8, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    aget-object v8, v8, v12

    const-string v9, "mA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 155
    const-wide/16 v3, 0x0

    .line 157
    .local v3, f:D
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #calls: Lcom/mediatek/engineermode/power/ChargeBattery;->getInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$400(Lcom/mediatek/engineermode/power/ChargeBattery;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const/high16 v9, 0x4120

    div-float/2addr v8, v9

    float-to-double v3, v8

    .line 161
    :goto_3
    const-string v8, "%1$-28s:[ %2$-6s ]%3$s\n"

    new-array v9, v14, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    aget-object v10, v10, v11

    aput-object v10, v9, v11

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v12

    iget-object v10, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    aget-object v10, v10, v12

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v8, "EM-PMU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read file error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 163
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #f:D
    :cond_1
    const-string v8, "%1$-28s: [ %2$-6s ]%3$s\n"

    new-array v9, v14, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    aget-object v10, v10, v11

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #calls: Lcom/mediatek/engineermode/power/ChargeBattery;->getInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v1}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$400(Lcom/mediatek/engineermode/power/ChargeBattery;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    iget-object v10, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    #getter for: Lcom/mediatek/engineermode/power/ChargeBattery;->mFiles:[[Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    aget-object v10, v10, v12

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 167
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, b:Landroid/os/Bundle;
    const-string v8, "INFO"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 171
    .local v6, msg:Landroid/os/Message;
    iput v12, v6, Landroid/os/Message;->what:I

    .line 172
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v8, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    iget-object v8, v8, Lcom/mediatek/engineermode/power/ChargeBattery;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    const-wide/16 v8, 0x5dc

    :try_start_1
    invoke-static {v8, v9}, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 177
    :catch_1
    move-exception v2

    .line 178
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v8, "EM_BATTERY_CHARGE"

    const-string v9, "Catch InterruptedException"

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v5           #i:I
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #text:Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method
