.class public Lcom/zte/zdm/application/b/ga;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "zdm.action.user.delay.alarm.set"

.field public static final b:Ljava/lang/String; = "delay_type"

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field private static final g:Ljava/lang/String; = "userDelayTimes"

.field private static final h:Lcom/zte/zdm/application/b/ga;

.field private static i:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/b/ga;

    invoke-direct {v0}, Lcom/zte/zdm/application/b/ga;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/b/ga;->h:Lcom/zte/zdm/application/b/ga;

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/b/ga;->i:Landroid/app/PendingIntent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/b/ga;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/ga;->h:Lcom/zte/zdm/application/b/ga;

    return-object v0
.end method

.method private a(Landroid/content/Context;IJ)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const-string v1, "unkown DelayType"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/b/ga;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/zte/zdm/application/b/ga;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zdm.action.user.delay.alarm.set"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "delay_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zdm.action.user.delay.alarm.set"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "delay_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/zte/zdm/application/a/a;)V
    .locals 5

    const/4 v1, 0x1

    const-wide/32 v3, 0x36ee80

    const-string v0, "userDelayTimes"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    const-string v2, "userDelayTimes"

    invoke-virtual {p2, v2, v0}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/zte/zdm/application/b/ga;->a(Landroid/content/Context;IJ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Lcom/zte/zdm/application/a/a;)V
    .locals 4

    const-string v0, "userDelayTimes"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    const-wide/32 v1, 0x6ddd00

    add-int/lit8 v0, v0, 0x1

    const-string v3, "userDelayTimes"

    invoke-virtual {p2, v3, v0}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zte/zdm/application/b/ga;->a(Landroid/content/Context;IJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/application/a/a;)I
    .locals 2

    const-string v0, "userDelayTimes"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pIntent is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/application/b/ga;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/b/ga;->i:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lcom/zte/zdm/application/b/ga;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/b/ga;->i:Landroid/app/PendingIntent;

    :goto_0
    return-void

    :cond_0
    const-string v0, "cancelAlarm"

    const-string v1, "pIntent is null"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "intent is null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v1, v0, p3

    const/high16 v0, 0x1000

    invoke-static {p1, v4, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/b/ga;->i:Landroid/app/PendingIntent;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v3, Lcom/zte/zdm/application/b/ga;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/application/a/a;I)V
    .locals 1

    const-string v0, "userDelayTimes"

    invoke-virtual {p1, v0, p2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;I)V

    return-void
.end method
