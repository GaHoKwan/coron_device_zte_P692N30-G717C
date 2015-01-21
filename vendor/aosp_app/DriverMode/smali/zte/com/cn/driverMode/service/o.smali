.class final Lzte/com/cn/driverMode/service/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/m;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/m;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/16 v4, 0x1004

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "LocalEngine"

    const-string v1, "ResultListener--onError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->a(Lzte/com/cn/driverMode/service/m;)V

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->c(Lzte/com/cn/driverMode/service/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    :cond_0
    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resultLister ->onError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;->getReasonCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resultLister ->onErrorReason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResultListener--onError()---bNeedSendErrorMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/m;->g(Lzte/com/cn/driverMode/service/m;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isWakeupMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iget-boolean v2, v2, Lzte/com/cn/driverMode/service/m;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->g(Lzte/com/cn/driverMode/service/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/m;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v6}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/m;->f:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/m;->g:Z

    return-void

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;->getReasonCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v6}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final onResult(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResultListener--onResult()--isSpeechEndDetected :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iget-boolean v2, v2, Lzte/com/cn/driverMode/service/m;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->a(Lzte/com/cn/driverMode/service/m;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/m;->f:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/m;->g:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/m;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/m;->k()V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string v0, "LocalEngine"

    const-string v1, "ERRORS!!  application resultList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/m;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#######result.getResultType() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getResultType()Lcom/nuance/dragon/toolkit/vocon/VoconResult$ResultType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->c(Lzte/com/cn/driverMode/service/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->d(Lzte/com/cn/driverMode/service/m;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->e(Lzte/com/cn/driverMode/service/m;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getRecognizedWakeupPhrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    const/16 v2, 0x1016

    invoke-virtual {v1, v2}, Lzte/com/cn/driverMode/service/bv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "WAKEUP_RESULT"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lzte/com/cn/driverMode/service/m;->n:Lzte/com/cn/driverMode/service/by;

    const-string v1, "main_tips_state"

    const-string v2, "tips_normal"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.MainChangeTips"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->f(Lzte/com/cn/driverMode/service/m;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMultiRecognition = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/m;->d(Lzte/com/cn/driverMode/service/m;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/o;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0, p1}, Lzte/com/cn/driverMode/service/m;->a(Lzte/com/cn/driverMode/service/m;Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    goto :goto_0
.end method
