.class Lcom/mediatek/FMRadio/FMRadioService$1;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1907
    const-string v6, "FmRx/Service"

    const-string v7, ">>> RDS Thread run()"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :goto_0
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1970
    const-string v6, "FmRx/Service"

    const-string v7, "<<< RDS Thread run()"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return-void

    .line 1913
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readrds()S

    move-result v5

    .line 1914
    .local v5, iRDSEvents:I
    if-eqz v5, :cond_1

    .line 1915
    const-string v6, "FmRx/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FMRadioNative.readrds events: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_1
    const/16 v6, 0x8

    and-int/lit8 v7, v5, 0x8

    if-ne v6, v7, :cond_2

    .line 1919
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_PROGRAMNAME"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getPS()[B

    move-result-object v1

    .line 1921
    .local v1, bytePS:[B
    if-eqz v1, :cond_2

    .line 1922
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1926
    .end local v1           #bytePS:[B
    :cond_2
    const/16 v6, 0x40

    and-int/lit8 v7, v5, 0x40

    if-ne v6, v7, :cond_3

    .line 1927
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_LAST_RADIOTEXT"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getLRText()[B

    move-result-object v0

    .line 1929
    .local v0, byteLRText:[B
    if-eqz v0, :cond_3

    .line 1930
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1934
    .end local v0           #byteLRText:[B
    :cond_3
    const/16 v6, 0x80

    and-int/lit16 v7, v5, 0x80

    if-ne v6, v7, :cond_5

    .line 1935
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_AF"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1941
    :cond_4
    const-string v6, "FmRx/Service"

    const-string v7, "RDSThread. seek or scan going, no need to tune here"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_5
    :goto_1
    const/16 v3, 0x1f4

    .line 1965
    .local v3, hundredMillisecond:I
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1966
    :catch_0
    move-exception v2

    .line 1967
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1942
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #hundredMillisecond:I
    :cond_6
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1943
    const-string v6, "FmRx/Service"

    const-string v7, "RDSThread. fm is power down, do nothing."

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1945
    :cond_7
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v4

    .line 1946
    .local v4, iFreq:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1948
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$600(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 1949
    const-string v6, "FmRx/Service"

    const-string v7, "RDSThread. the new frequency is the same as current."

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1951
    :cond_8
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v7, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1952
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v7, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1953
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1954
    const-string v6, "FmRx/Service"

    const-string v7, "RDSThread. seek or scan not going, need to tune here"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    goto :goto_1
.end method
