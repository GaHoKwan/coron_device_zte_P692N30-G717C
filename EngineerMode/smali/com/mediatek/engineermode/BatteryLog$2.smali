.class Lcom/mediatek/engineermode/BatteryLog$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/BatteryLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/BatteryLog;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/BatteryLog;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 153
    .local v3, plugType:I
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mLevel:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/mediatek/engineermode/BatteryLog;->access$100(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mScale:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/mediatek/engineermode/BatteryLog;->access$200(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "scale"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mVoltage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/mediatek/engineermode/BatteryLog;->access$300(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "voltage"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v9, 0x7f08004c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mTemperature:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/mediatek/engineermode/BatteryLog;->access$500(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const-string v9, "temperature"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #calls: Lcom/mediatek/engineermode/BatteryLog;->tenthsToFixedString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/mediatek/engineermode/BatteryLog;->access$400(Lcom/mediatek/engineermode/BatteryLog;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v9, 0x7f08004e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mTechnology:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/mediatek/engineermode/BatteryLog;->access$600(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "technology"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const-string v6, "status"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 161
    .local v4, status:I
    const/4 v5, 0x0

    .line 162
    .local v5, statusString:Ljava/lang/String;
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 163
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f080054

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 164
    if-lez v3, :cond_0

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    const v6, 0x7f080055

    :goto_0
    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mStatus:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/mediatek/engineermode/BatteryLog;->access$700(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const-string v6, "health"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 184
    .local v1, health:I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_7

    .line 185
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f08005b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, healthString:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    #getter for: Lcom/mediatek/engineermode/BatteryLog;->mHealth:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/mediatek/engineermode/BatteryLog;->access$800(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .end local v1           #health:I
    .end local v2           #healthString:Ljava/lang/String;
    .end local v3           #plugType:I
    .end local v4           #status:I
    .end local v5           #statusString:Ljava/lang/String;
    :cond_1
    return-void

    .line 165
    .restart local v3       #plugType:I
    .restart local v4       #status:I
    .restart local v5       #statusString:Ljava/lang/String;
    :cond_2
    const v6, 0x7f080056

    goto :goto_0

    .line 171
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 172
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f080057

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 173
    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    .line 174
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f080058

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 175
    :cond_5
    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 176
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f080059

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 178
    :cond_6
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f080053

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 186
    .restart local v1       #health:I
    :cond_7
    const/4 v6, 0x3

    if-ne v1, v6, :cond_8

    .line 187
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f08005c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2

    .line 188
    .end local v2           #healthString:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x4

    if-ne v1, v6, :cond_9

    .line 189
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f08005d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2

    .line 190
    .end local v2           #healthString:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x5

    if-ne v1, v6, :cond_a

    .line 191
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f08005e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2

    .line 192
    .end local v2           #healthString:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x6

    if-ne v1, v6, :cond_b

    .line 193
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f08005f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2

    .line 195
    .end local v2           #healthString:Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/mediatek/engineermode/BatteryLog$2;->this$0:Lcom/mediatek/engineermode/BatteryLog;

    const v7, 0x7f08005a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2
.end method
