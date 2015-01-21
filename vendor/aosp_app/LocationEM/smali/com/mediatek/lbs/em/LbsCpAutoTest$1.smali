.class Lcom/mediatek/lbs/em/LbsCpAutoTest$1;
.super Landroid/content/BroadcastReceiver;
.source "LbsCpAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsCpAutoTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.mediatek.agps.AGPS_MESSAGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 123
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v4, "msg"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, str:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->timeInMillis2Date(J)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$000(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v4, "type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 102
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    .line 116
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERR: Unknown AGPS_MESSAGE type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    .line 119
    :goto_1
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$400(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0xc8

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$300(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/lbs/em/UtilityStringList;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'red\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/lbs/em/UtilityStringList;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'lime\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/lbs/em/UtilityStringList;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'yellow\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/lbs/em/UtilityStringList;->add(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #type:I
    :cond_2
    const-string v4, "com.mediatek.lbs.em.ALARM_TIMEOUT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestMessage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$500(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/lbs/em/UtilityStringList;->get()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
