.class Lcom/mediatek/lbs/em/LbsEpo$StressTest;
.super Ljava/lang/Thread;
.source "LbsEpo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsEpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StressTest"
.end annotation


# instance fields
.field private delay1:I

.field private delay2:I

.field private enable:Z

.field private numOfLoop:I

.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsEpo;


# direct methods
.method public constructor <init>(Lcom/mediatek/lbs/em/LbsEpo;)V
    .locals 3
    .parameter

    .prologue
    .line 139
    const/16 v0, 0xa

    const/4 v1, 0x3

    const/16 v2, 0xf

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;-><init>(Lcom/mediatek/lbs/em/LbsEpo;III)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/lbs/em/LbsEpo;III)V
    .locals 1
    .parameter
    .parameter "numOfLoop"
    .parameter "delay1"
    .parameter "delay2"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->enable:Z

    .line 143
    iput p2, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->numOfLoop:I

    .line 144
    iput p3, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->delay1:I

    .line 145
    iput p4, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->delay2:I

    .line 146
    return-void
.end method

.method private oneSession()V
    .locals 3

    .prologue
    .line 179
    :try_start_0
    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->delay1:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    const-string v2, "startDownload"

    #calls: Lcom/mediatek/lbs/em/LbsEpo;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsEpo;->access$300(Lcom/mediatek/lbs/em/LbsEpo;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    #calls: Lcom/mediatek/lbs/em/LbsEpo;->epoManual()V
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsEpo;->access$000(Lcom/mediatek/lbs/em/LbsEpo;)V

    .line 187
    :try_start_1
    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->delay2:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 189
    .restart local v0       #e:Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 167
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOfLoop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->numOfLoop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->delay1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->delay2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/lbs/em/LbsEpo;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsEpo;->access$300(Lcom/mediatek/lbs/em/LbsEpo;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->numOfLoop:I

    if-ge v0, v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== stress test loop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/lbs/em/LbsEpo;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsEpo;->access$300(Lcom/mediatek/lbs/em/LbsEpo;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->oneSession()V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/lbs/em/LbsEpo;->sendMessage(IILjava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->this$0:Lcom/mediatek/lbs/em/LbsEpo;

    const-string v2, "end of stress test"

    #calls: Lcom/mediatek/lbs/em/LbsEpo;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsEpo;->access$300(Lcom/mediatek/lbs/em/LbsEpo;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public sessionDone()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->interrupt()V

    .line 159
    return-void
.end method

.method public startStress()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->start()V

    .line 150
    return-void
.end method

.method public stopStress()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->enable:Z

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->interrupt()V

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StressTest  numOfLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->numOfLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->delay1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->delay2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
