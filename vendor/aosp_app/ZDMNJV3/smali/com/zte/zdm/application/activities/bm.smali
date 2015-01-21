.class Lcom/zte/zdm/application/activities/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bm;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bm;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bm;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v3, "check_status"

    invoke-virtual {v0, v3, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bm;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v3, "next_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bm;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v4, Landroid/content/Intent;

    const-string v3, "com.zte.zdm.AUTO_UPDATE_RECEIVER"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/zdm/application/activities/bm;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-virtual {v3}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/zte/zdm/application/activities/bm;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v2, v2, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v3, "next_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v3, v7, v8}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v5, "msg"

    const-string v7, "auto update"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
