.class Lcom/android/emailcommon/service/ServiceProxy$1;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/ServiceProxy;->test()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/ServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/ServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$1;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$1;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    #getter for: Lcom/android/emailcommon/service/ServiceProxy;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection test succeeded in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/emailcommon/service/ServiceProxy$1;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    #getter for: Lcom/android/emailcommon/service/ServiceProxy;->mStartTime:J
    invoke-static {v4}, Lcom/android/emailcommon/service/ServiceProxy;->access$500(Lcom/android/emailcommon/service/ServiceProxy;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->serviceProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method
