.class Lcom/zte/engineer/BatteryLog$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/BatteryLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BatteryLog;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BatteryLog;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 142
    .local v3, plugType:I
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mLevel:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/engineer/BatteryLog;->access$100(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

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

    .line 143
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mScale:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/engineer/BatteryLog;->access$200(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

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

    .line 144
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mVoltage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/engineer/BatteryLog;->access$300(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

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

    iget-object v8, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v9, 0x7f06002a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mTemperature:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/engineer/BatteryLog;->access$500(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const-string v9, "temperature"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #calls: Lcom/zte/engineer/BatteryLog;->tenthsToFixedString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/zte/engineer/BatteryLog;->access$400(Lcom/zte/engineer/BatteryLog;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v9, 0x7f06002c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mTechnology:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/engineer/BatteryLog;->access$600(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

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

    .line 150
    const-string v6, "status"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 152
    .local v4, status:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 154
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f06002f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, statusString:Ljava/lang/String;
    if-lez v3, :cond_0

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    const v6, 0x7f060030

    :goto_0
    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mStatus:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/engineer/BatteryLog;->access$700(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const-string v6, "health"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, health:I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_7

    .line 185
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f060036

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, healthString:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    #getter for: Lcom/zte/engineer/BatteryLog;->mHealth:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/zte/engineer/BatteryLog;->access$800(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v1           #health:I
    .end local v2           #healthString:Ljava/lang/String;
    .end local v3           #plugType:I
    .end local v4           #status:I
    .end local v5           #statusString:Ljava/lang/String;
    :cond_1
    return-void

    .line 157
    .restart local v3       #plugType:I
    .restart local v4       #status:I
    .restart local v5       #statusString:Ljava/lang/String;
    :cond_2
    const v6, 0x7f060031

    goto :goto_0

    .line 163
    .end local v5           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 165
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f060032

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 167
    .end local v5           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    .line 169
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f060033

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 171
    .end local v5           #statusString:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 173
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f060034

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 177
    .end local v5           #statusString:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f06002e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 187
    .restart local v1       #health:I
    :cond_7
    const/4 v6, 0x3

    if-ne v1, v6, :cond_8

    .line 189
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f060037

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2

    .line 191
    .end local v2           #healthString:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x4

    if-ne v1, v6, :cond_9

    .line 193
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f060038

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2

    .line 195
    .end local v2           #healthString:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x5

    if-ne v1, v6, :cond_a

    .line 197
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f060039

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2

    .line 199
    .end local v2           #healthString:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x6

    if-ne v1, v6, :cond_b

    .line 201
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f06003a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2

    .line 205
    .end local v2           #healthString:Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/zte/engineer/BatteryLog$2;->this$0:Lcom/zte/engineer/BatteryLog;

    const v7, 0x7f060035

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_2
.end method
