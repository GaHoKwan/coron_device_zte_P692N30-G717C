.class public Lcom/sohu/inputmethod/multimedia/TransferService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private a:Ljava/util/List;

.field public a:Lvj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 155
    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_0

    .line 197
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0335

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 200
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0333

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 203
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0337

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_3
    const v1, 0x7f0b0339

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/sohu/inputmethod/multimedia/TransferService;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    const-string v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sohu/inputmethod/multimedia/TransferService;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 172
    :goto_1
    return-object p1

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sohu/inputmethod/multimedia/TransferService;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 176
    .line 178
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 186
    :goto_0
    if-eqz v1, :cond_0

    .line 187
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :cond_0
    :goto_1
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 189
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 188
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lvj;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    const/4 v0, -0x1

    .line 78
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    iget-boolean v0, v0, Lvj;->a:Z

    if-eqz v0, :cond_4

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj;

    iget-boolean v0, v0, Lvj;->a:Z

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 70
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    .line 72
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    invoke-virtual {v0}, Lvj;->start()V

    .line 77
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    iget-object v0, v0, Lvj;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    iget-boolean v0, v0, Lvj;->a:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    iget-object v0, v0, Lvj;->a:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 86
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v3, "transfer_res"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj;

    iget-boolean v0, v0, Lvj;->a:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 100
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    .line 102
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    invoke-virtual {v0}, Lvj;->start()V

    .line 109
    :cond_2
    :goto_1
    monitor-exit v1

    .line 110
    return-void

    .line 104
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/TransferService;->stopService(Landroid/content/Intent;)Z

    .line 106
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/TransferService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Landroid/telephony/TelephonyManager;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Lvj;

    .line 53
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 128
    :cond_0
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    const-string v1, "com.sohu.inputmethod.multimedia.transferservice.add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const-string v0, "multimedia_serial_no"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    const-string v0, "sogoumessage_item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    .line 132
    const-string v0, "sogoumedia_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 133
    const-string v0, "media_list_size"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 134
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 135
    new-instance v0, Lvj;

    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/TransferService;->a:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lvj;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/util/List;JLandroid/os/Handler;)V

    .line 137
    invoke-virtual {p0, v3, v0}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Ljava/lang/String;Lvj;)I

    .line 147
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 139
    :cond_2
    if-eqz v0, :cond_1

    const-string v1, "com.sohu.inputmethod.multimedia.transferservice.cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "multimedia_serial_no"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "transfer_res"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Ljava/lang/String;Z)V

    goto :goto_1
.end method
