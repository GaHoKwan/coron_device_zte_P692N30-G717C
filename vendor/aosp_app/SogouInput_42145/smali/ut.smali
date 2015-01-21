.class public Lut;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lsk;


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/app/NotificationManager;

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lut;->a:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lut;->a:J

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lut;->b:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lut;->a:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lut;->a:Landroid/app/NotificationManager;

    .line 117
    iput-object p2, p0, Lut;->a:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lut;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    .line 119
    iput-object p4, p0, Lut;->a:Ljava/util/List;

    .line 120
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    .line 97
    iget-object v0, p0, Lut;->a:Landroid/app/NotificationManager;

    iget-object v1, p0, Lut;->a:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 106
    new-instance v0, Lvj;

    iget-object v1, p0, Lut;->a:Landroid/content/Context;

    iget-object v2, p0, Lut;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lut;->a:Ljava/lang/String;

    iget-object v4, p0, Lut;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    iget-object v5, p0, Lut;->a:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    iget-wide v6, p0, Lut;->a:J

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lvj;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/util/List;JLandroid/os/Handler;)V

    invoke-virtual {v0}, Lvj;->start()V

    .line 111
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string v1, "MMS_PART_SIZE"

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lut;->a:J

    .line 52
    iget-wide v0, p0, Lut;->a:J

    cmp-long v0, v0, v7

    if-gtz v0, :cond_0

    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->c()Z

    move-result v1

    .line 58
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->d()Z

    move-result v2

    .line 59
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()J

    move-result-wide v3

    .line 61
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 65
    invoke-direct {p0}, Lut;->a()V

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 68
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    cmp-long v0, v3, v7

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lut;->a:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    .line 69
    :cond_2
    invoke-direct {p0}, Lut;->a()V

    .line 70
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    iget-object v1, p0, Lut;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lut;->b:Ljava/lang/String;

    .line 76
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v0, "com.sohu.inputmethod.sms.new"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v0, "multimedia_serial_no"

    iget-object v2, p0, Lut;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v0, "media_list_size"

    iget-wide v2, p0, Lut;->a:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 80
    const-string v0, "multimedia_type"

    iget v2, p0, Lut;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    iget-object v2, p0, Lut;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "multimedia_sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v0, "sogoumessage_item"

    iget-object v2, p0, Lut;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    const-string v2, "sogoumedia_list"

    iget-object v0, p0, Lut;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lut;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "com.sohu.inputmethod.sms.soundvibrate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lut;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 123
    new-instance v0, Lamb;

    iget-object v1, p0, Lut;->a:Landroid/content/Context;

    iget-object v2, p0, Lut;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->b()Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lamb;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V

    .line 125
    const/16 v1, 0xb0

    const/4 v8, 0x0

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v7

    move-object v7, p0

    invoke-static/range {v1 .. v8}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)Lsg;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lut;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1}, Lqy;->b()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 128
    iget-object v1, p0, Lut;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(Lsg;)I

    .line 131
    :cond_0
    return-void
.end method

.method static synthetic a(Lut;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lut;->a(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public a(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 135
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 136
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 137
    new-instance v0, Luu;

    invoke-direct {v0, p0}, Luu;-><init>(Lut;)V

    iput-object v0, p0, Lut;->a:Landroid/os/Handler;

    .line 144
    iget-object v0, p0, Lut;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lut;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lut;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lut;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 170
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 171
    return-void

    .line 147
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v0, p0, Lut;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 149
    iget v3, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    packed-switch v3, :pswitch_data_0

    .line 162
    :goto_2
    iget-object v0, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :pswitch_1
    iget v3, p0, Lut;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lut;->a:I

    goto :goto_2

    .line 156
    :pswitch_2
    iget v3, p0, Lut;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lut;->a:I

    goto :goto_2

    .line 159
    :pswitch_3
    iget v3, p0, Lut;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lut;->a:I

    goto :goto_2

    .line 164
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 165
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lut;->a:Ljava/lang/String;

    iget-object v2, p0, Lut;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lut;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Message;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
