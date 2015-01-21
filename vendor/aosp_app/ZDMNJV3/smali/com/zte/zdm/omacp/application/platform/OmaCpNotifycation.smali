.class public Lcom/zte/zdm/omacp/application/platform/OmaCpNotifycation;
.super Landroid/app/Notification;


# static fields
.field private static final a:I = 0x10e1

.field private static b:Landroid/app/NotificationManager; = null

.field private static final c:Ljava/lang/String; = "OmaCpNotifycation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 7

    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {v4, p0, v0, v1, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v0, 0x10

    iput v0, v4, Landroid/app/Notification;->flags:I

    iget v0, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v4, Landroid/app/Notification;->defaults:I

    return-object v4
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/zte/zdm/omacp/application/platform/OmaCpNotifycation;->b:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/omacp/application/platform/OmaCpNotifycation;->b:Landroid/app/NotificationManager;

    const/16 v1, 0x10e1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;[B)V
    .locals 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/zte/zdm/omacp/application/platform/OmaCpNotifycation;->b:Landroid/app/NotificationManager;

    invoke-static {p0, p1}, Lcom/zte/zdm/omacp/application/platform/OmaCpNotifycation;->b(Landroid/content/Context;[B)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/omacp/application/platform/OmaCpNotifycation;->a(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/omacp/application/platform/OmaCpNotifycation;->b:Landroid/app/NotificationManager;

    const/16 v2, 0x10e1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static b(Landroid/content/Context;[B)Landroid/app/PendingIntent;
    .locals 5

    const/high16 v4, 0x1000

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/zdm/omacp/application/platform/OmaCpActitvity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "OmaCpNotifycation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
