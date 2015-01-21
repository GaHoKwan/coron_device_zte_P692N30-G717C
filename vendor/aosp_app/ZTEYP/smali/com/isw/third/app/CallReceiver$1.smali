.class Lcom/isw/third/app/CallReceiver$1;
.super Ljava/lang/Thread;
.source "CallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/third/app/CallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isw/third/app/CallReceiver;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/isw/third/app/CallReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/third/app/CallReceiver$1;->this$0:Lcom/isw/third/app/CallReceiver;

    iput-object p2, p0, Lcom/isw/third/app/CallReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/isw/third/app/CallReceiver$1;->val$intent:Landroid/content/Intent;

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 65
    :try_start_0
    iget-object v5, p0, Lcom/isw/third/app/CallReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/isw/android/corp/util/WinksApplication;->onCreate(Landroid/content/Context;)V

    .line 90
    iget-object v5, p0, Lcom/isw/third/app/CallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$0(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/isw/third/app/CallReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v6, "state"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$1(Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Lcom/isw/third/app/CallReceiver$1;->val$intent:Landroid/content/Intent;

    .line 93
    const-string v6, "incoming_number"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$2(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/isw/third/app/CallReceiver$1;->val$intent:Landroid/content/Intent;

    .line 95
    const-string v6, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$3(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$2(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$2(Ljava/lang/String;)V

    .line 101
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, item:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_3

    .line 111
    .end local v3           #i:I
    .end local v4           #item:[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$5()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$3(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$5()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$3(Ljava/lang/String;)V

    .line 115
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4       #item:[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v5, v4

    if-lt v3, v5, :cond_5

    .line 126
    .end local v3           #i:I
    .end local v4           #item:[Ljava/lang/String;
    :cond_1
    :goto_3
    const-string v5, "MiniCallReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$7()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 127
    const-string v7, ", inPhone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$4()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", outPhone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 128
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    iget-object v6, p0, Lcom/isw/third/app/CallReceiver$1;->val$intent:Landroid/content/Intent;

    .line 136
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 136
    if-eqz v5, :cond_7

    .line 138
    const-string v5, "MiniCallReceiver"

    const-string v6, "call out ring......"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/android/corp/message/MiniPhoneLocation;->getLocInfo(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;

    .line 141
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/isw/android/corp/telephony/CallHistoryRecord;->ringDate:Ljava/util/Date;

    .line 148
    const/4 v5, 0x1

    sput v5, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    .line 149
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$5()Ljava/lang/String;

    move-result-object v5

    .line 150
    sget v6, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    iget-object v7, p0, Lcom/isw/third/app/CallReceiver$1;->val$context:Landroid/content/Context;

    .line 149
    #calls: Lcom/isw/third/app/CallReceiver;->activeCCShowService(Ljava/lang/String;ILandroid/content/Context;)V
    invoke-static {v5, v6, v7}, Lcom/isw/third/app/CallReceiver;->access$8(Ljava/lang/String;ILandroid/content/Context;)V

    .line 233
    :cond_2
    :goto_4
    return-void

    .line 104
    .restart local v3       #i:I
    .restart local v4       #item:[Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 105
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 226
    .end local v3           #i:I
    .end local v4           #item:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 227
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    const-string v5, "MiniCallReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 103
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v4       #item:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 118
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$5()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 119
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$5()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isw/third/app/CallReceiver;->access$3(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 229
    .end local v3           #i:I
    .end local v4           #item:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 230
    .local v1, err:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 231
    const-string v5, "MiniCallReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "err: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 117
    .end local v1           #err:Ljava/lang/Error;
    .restart local v3       #i:I
    .restart local v4       #item:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 152
    .end local v3           #i:I
    .end local v4           #item:[Ljava/lang/String;
    :cond_7
    :try_start_2
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$7()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 166
    const-string v5, "MiniCallReceiver"

    const-string v6, "call in ring......"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/isw/android/corp/telephony/CallHistoryRecord;->ringDate:Ljava/util/Date;

    .line 175
    const/4 v5, 0x3

    sput v5, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    .line 179
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    .line 180
    sget v6, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    iget-object v7, p0, Lcom/isw/third/app/CallReceiver$1;->val$context:Landroid/content/Context;

    .line 179
    #calls: Lcom/isw/third/app/CallReceiver;->activeCCShowService(Ljava/lang/String;ILandroid/content/Context;)V
    invoke-static {v5, v6, v7}, Lcom/isw/third/app/CallReceiver;->access$8(Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_4

    .line 182
    :cond_8
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$7()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 185
    sget-boolean v5, Lcom/isw/third/app/CallReceiver;->bCallDuration:Z

    if-eqz v5, :cond_9

    .line 186
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/isw/third/app/CallReceiver;->callEstablishDate:Ljava/util/Date;

    .line 188
    :cond_9
    sget v5, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    if-ne v5, v8, :cond_a

    .line 189
    const-string v5, "MiniCallReceiver"

    const-string v6, "call out establish......"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v5, 0x2

    sput v5, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    goto/16 :goto_4

    .line 191
    :cond_a
    sget v5, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    if-ne v5, v9, :cond_2

    .line 192
    const-string v5, "MiniCallReceiver"

    const-string v6, "call in establish......"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v5, 0x4

    sput v5, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    goto/16 :goto_4

    .line 202
    :cond_b
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {}, Lcom/isw/third/app/CallReceiver;->access$7()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    const-string v5, "MiniCallReceiver"

    const-string v6, "call hangup......"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v5, 0x0

    sput-object v5, Lcom/isw/third/app/CallReceiver;->callEstablishDate:Ljava/util/Date;

    .line 206
    sget v0, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    .line 207
    .local v0, callStatus:I
    const/4 v5, -0x1

    sput v5, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    .line 210
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 211
    sget v6, Lcom/isw/third/app/CallReceiver;->ccshowDurationTime:I

    .line 209
    invoke-static {v5, v0, v6}, Lcom/isw/android/corp/telephony/CallHistoryRecord;->setCallRecord(Ljava/lang/String;II)V

    .line 213
    const/4 v5, 0x0

    sput v5, Lcom/isw/third/app/CallReceiver;->ccshowDurationTime:I

    .line 214
    const/4 v5, 0x0

    sput-boolean v5, Lcom/isw/third/app/CallReceiver;->ccShowActive:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4
.end method
