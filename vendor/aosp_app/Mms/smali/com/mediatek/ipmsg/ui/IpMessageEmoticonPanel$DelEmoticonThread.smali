.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;
.super Ljava/lang/Thread;
.source "IpMessageEmoticonPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelEmoticonThread"
.end annotation


# instance fields
.field private mStopThread:Z

.field final synthetic this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;


# direct methods
.method private constructor <init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->mStopThread:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1121
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1800(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1123
    :try_start_0
    const-string v2, "Mms/IpMessageEmoticonPanel"

    const-string v4, "Wait for quick delete."

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1800(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1129
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1130
    .local v1, object:Ljava/lang/Object;
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNeedQuickDelete:Z
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$1900(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    const-string v2, "Mms/IpMessageEmoticonPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start quick delete. mStopThread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->mStopThread:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :goto_1
    iget-boolean v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->mStopThread:Z

    if-nez v2, :cond_0

    .line 1133
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$2000(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread$1;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread$1;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1140
    monitor-enter v1

    .line 1142
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1146
    :goto_2
    :try_start_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1125
    .end local v1           #object:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1126
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "Mms/IpMessageEmoticonPanel"

    const-string v4, "InterruptedException 1"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1128
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1143
    .restart local v1       #object:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 1144
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v2, "Mms/IpMessageEmoticonPanel"

    const-string v3, "InterruptedException 2"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1149
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->mStopThread:Z

    .line 1117
    return-void
.end method
