.class Lcom/hf/utils/AlarmUtil$1;
.super Ljava/lang/Object;
.source "AlarmUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/utils/AlarmUtil;->setTrafficAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/utils/AlarmUtil;


# direct methods
.method constructor <init>(Lcom/hf/utils/AlarmUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/utils/AlarmUtil$1;->this$0:Lcom/hf/utils/AlarmUtil;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x3b

    .line 49
    iget-object v4, p0, Lcom/hf/utils/AlarmUtil$1;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 50
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.hf.RESET_TRAFFIC"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v4, p0, Lcom/hf/utils/AlarmUtil$1;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x2713

    const/high16 v6, 0x4000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 53
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 54
    .local v1, calendar:Ljava/util/Calendar;
    const/16 v4, 0xb

    const/16 v5, 0x17

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 55
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 56
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 57
    const/16 v4, 0xe

    const/16 v5, 0x3e7

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 58
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 60
    return-void
.end method
