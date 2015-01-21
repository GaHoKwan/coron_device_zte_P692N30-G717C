.class final Lzte/com/cn/driverMode/ui/dr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field final synthetic b:Lzte/com/cn/driverMode/ui/DMSettingsActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSettingsActivity;)V
    .locals 1

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/dr;->b:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/dr;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-wide/16 v7, 0x400

    const-string v0, "DMSettingsActivity"

    const-string v1, "run ........."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c()Lzte/com/cn/driverMode/ui/dq;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dq;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/dr;->b:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->b:Lzte/com/cn/driverMode/service/cm;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/cm;->b()Lzte/com/cn/driverMode/service/co;

    move-result-object v2

    const-string v3, "UpdateState"

    iget v4, v2, Lzte/com/cn/driverMode/service/co;->a:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v3, v2, Lzte/com/cn/driverMode/service/co;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "URL"

    iget-object v4, v2, Lzte/com/cn/driverMode/service/co;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VersionCode"

    iget-object v4, v2, Lzte/com/cn/driverMode/service/co;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VersionName"

    iget-object v4, v2, Lzte/com/cn/driverMode/service/co;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Feature"

    iget-object v4, v2, Lzte/com/cn/driverMode/service/co;->f:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Size"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lzte/com/cn/driverMode/service/co;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v7

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-boolean v1, p0, Lzte/com/cn/driverMode/ui/dr;->a:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c()Lzte/com/cn/driverMode/ui/dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/dq;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
