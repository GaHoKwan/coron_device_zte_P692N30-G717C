.class public Ltmsdkobf/lz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/mf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/lz$1;,
        Ltmsdkobf/lz$a;
    }
.end annotation


# instance fields
.field private EA:Ltmsdkobf/jg;

.field private EB:Z

.field private EC:J

.field private ED:J

.field private final Ex:Ljava/lang/String;

.field private final Ey:Ljava/lang/String;

.field private final Ez:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltmsdkobf/jg;)V
    .locals 5
    .parameter "pi"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "last_verify_succ"

    iput-object v0, p0, Ltmsdkobf/lz;->Ex:Ljava/lang/String;

    .line 26
    const-string v0, "last_verify_time"

    iput-object v0, p0, Ltmsdkobf/lz;->Ey:Ljava/lang/String;

    .line 27
    const-string v0, "next_verify_time"

    iput-object v0, p0, Ltmsdkobf/lz;->Ez:Ljava/lang/String;

    .line 31
    iput-boolean v4, p0, Ltmsdkobf/lz;->EB:Z

    .line 32
    iput-wide v2, p0, Ltmsdkobf/lz;->EC:J

    .line 33
    iput-wide v2, p0, Ltmsdkobf/lz;->ED:J

    .line 47
    iput-object p1, p0, Ltmsdkobf/lz;->EA:Ltmsdkobf/jg;

    .line 49
    iget-object v0, p0, Ltmsdkobf/lz;->EA:Ltmsdkobf/jg;

    const-string v1, "last_verify_succ"

    invoke-interface {v0, v1, v4}, Ltmsdkobf/jg;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltmsdkobf/lz;->EB:Z

    .line 51
    iget-object v0, p0, Ltmsdkobf/lz;->EA:Ltmsdkobf/jg;

    const-string v1, "last_verify_time"

    invoke-interface {v0, v1, v2, v3}, Ltmsdkobf/jg;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/lz;->EC:J

    .line 52
    iget-object v0, p0, Ltmsdkobf/lz;->EA:Ltmsdkobf/jg;

    const-string v1, "next_verify_time"

    invoke-interface {v0, v1, v2, v3}, Ltmsdkobf/jg;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/lz;->ED:J

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Ltmsdkobf/jg;Ltmsdkobf/lz$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ltmsdkobf/lz;-><init>(Ltmsdkobf/jg;)V

    return-void
.end method

.method public static hm()Ltmsdkobf/lz;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ltmsdkobf/lz$a;->EE:Ltmsdkobf/lz;

    return-object v0
.end method


# virtual methods
.method public A(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 70
    const-string v0, "Chord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastVerifyTime() time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iput-wide p1, p0, Ltmsdkobf/lz;->EC:J

    .line 72
    iget-object v0, p0, Ltmsdkobf/lz;->EA:Ltmsdkobf/jg;

    const-string v1, "last_verify_time"

    invoke-interface {v0, v1, p1, p2}, Ltmsdkobf/jg;->a(Ljava/lang/String;J)Z

    .line 73
    return-void
.end method

.method public B(J)V
    .locals 8
    .parameter "nextTime"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    const-string v3, "Chord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNextVerifyTime() nextTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iput-wide p1, p0, Ltmsdkobf/lz;->ED:J

    .line 84
    iget-object v3, p0, Ltmsdkobf/lz;->EA:Ltmsdkobf/jg;

    const-string v4, "next_verify_time"

    invoke-interface {v3, v4, p1, p2}, Ltmsdkobf/jg;->a(Ljava/lang/String;J)Z

    .line 87
    const-string v3, "Chord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNextVerifyTime() ALARM_SERVICE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 92
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "action_verify"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v3, "from_id"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 97
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 98
    invoke-virtual {v0, v7, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 99
    return-void
.end method

.method public H(Z)V
    .locals 3
    .parameter "isSucceed"

    .prologue
    .line 57
    const-string v0, "Chord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastVerifySucceed() isSucceed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iput-boolean p1, p0, Ltmsdkobf/lz;->EB:Z

    .line 60
    iget-object v0, p0, Ltmsdkobf/lz;->EA:Ltmsdkobf/jg;

    const-string v1, "last_verify_succ"

    invoke-interface {v0, v1, p1}, Ltmsdkobf/jg;->c(Ljava/lang/String;Z)Z

    .line 61
    return-void
.end method

.method public hn()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Ltmsdkobf/lz;->EB:Z

    return v0
.end method

.method public ho()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Ltmsdkobf/lz;->EC:J

    return-wide v0
.end method

.method public hp()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Ltmsdkobf/lz;->ED:J

    return-wide v0
.end method
