.class Lcom/zte/heartyservice/main/staService$2;
.super Ljava/lang/Thread;
.source "staService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/staService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/staService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/staService;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/zte/heartyservice/main/staService$2;->this$0:Lcom/zte/heartyservice/main/staService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 155
    const-wide/32 v5, 0x927c0

    :try_start_0
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 156
    const/16 v4, 0x64

    .line 157
    .local v4, time:I
    :goto_0
    if-lez v4, :cond_0

    .line 159
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 162
    .local v0, alarmManager:Landroid/os/IBinder;
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 163
    .local v3, telephonyManager:Landroid/os/IBinder;
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 164
    .local v1, connManager:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 165
    iget-object v5, p0, Lcom/zte/heartyservice/main/staService$2;->this$0:Lcom/zte/heartyservice/main/staService;

    #calls: Lcom/zte/heartyservice/main/staService;->start()V
    invoke-static {v5}, Lcom/zte/heartyservice/main/staService;->access$300(Lcom/zte/heartyservice/main/staService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    .end local v0           #alarmManager:Landroid/os/IBinder;
    .end local v1           #connManager:Landroid/os/IBinder;
    .end local v3           #telephonyManager:Landroid/os/IBinder;
    .end local v4           #time:I
    :cond_0
    :goto_1
    return-void

    .line 168
    .restart local v4       #time:I
    :catch_0
    move-exception v5

    .line 171
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 173
    .end local v4           #time:I
    :catch_1
    move-exception v2

    .line 174
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
