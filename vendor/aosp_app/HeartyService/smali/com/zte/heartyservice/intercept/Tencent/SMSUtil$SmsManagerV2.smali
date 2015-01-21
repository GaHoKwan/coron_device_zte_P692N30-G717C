.class final Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;
.super Ljava/lang/Object;
.source "SMSUtil.java"

# interfaces
.implements Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$ISmsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmsManagerV2"
.end annotation


# instance fields
.field private smsManager:Landroid/telephony/SmsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;->smsManager:Landroid/telephony/SmsManager;

    .line 162
    return-void
.end method


# virtual methods
.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "phoneNum"
    .parameter "body"

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;->smsManager:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 168
    .local v10, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    .local v3, msg:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;->smsManager:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 174
    .end local v3           #msg:Ljava/lang/String;
    .end local v10           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;->smsManager:Landroid/telephony/SmsManager;

    move-object v5, p1

    move-object v6, v2

    move-object v7, p2

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 176
    :cond_1
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "phoneNum"
    .parameter "body"
    .parameter "pintent"

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil$SmsManagerV2;->smsManager:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 181
    return-void
.end method
