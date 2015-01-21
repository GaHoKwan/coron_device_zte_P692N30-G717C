.class public Lama;
.super Lalg;
.source "SourceFile"

# interfaces
.implements Lrl;


# instance fields
.field private a:Landroid/app/Notification;

.field private a:Landroid/os/Handler;

.field private a:Landroid/os/Message;

.field private a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sohu/inputmethod/multimedia/SogouMedia;Landroid/os/Message;Landroid/os/Handler;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lama;->d:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lama;->a:Landroid/os/Handler;

    .line 54
    new-instance v0, Lrr;

    iget-object v1, p0, Lama;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lama;->a:Lrr;

    .line 55
    iput-object p4, p0, Lama;->a:Landroid/os/Handler;

    .line 56
    iput-object p2, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 57
    iput-object p3, p0, Lama;->a:Landroid/os/Message;

    .line 59
    iget-object v0, p0, Lama;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020099

    iget-object v3, p0, Lama;->a:Landroid/content/Context;

    const v4, 0x7f0b0343

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lama;->a:Landroid/content/Context;

    iget v7, p2, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    invoke-static {v6, v7}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lama;->a:Landroid/app/Notification;

    .line 64
    iget-object v1, p0, Lama;->a:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 65
    iget-object v0, p0, Lama;->a:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lama;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030043

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 66
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 188
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lama;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 190
    const-string v0, "media_url"

    iget-object v3, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v3, v3, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "downloadResult"

    iget v0, p0, Lama;->d:I

    const/16 v4, 0x18

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v0, "action"

    const/16 v3, 0x11

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lama;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 198
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 201
    iget v0, p0, Lama;->d:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lama;->a:Landroid/os/Message;

    const v1, 0x10003

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object v0, p0, Lama;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lama;->a:Landroid/os/Message;

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 206
    iget-object v0, p0, Lama;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "transfer_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lama;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sohu.inputmethod.sms.DOWNLOADFAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lama;->a:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lama;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    iget-object v0, p0, Lama;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lama;->b:I

    .line 127
    div-int/lit8 v0, p1, 0x64

    iput v0, p0, Lama;->c:I

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lama;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string v2, "media_url"

    iget-object v3, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v3, v3, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "transferredSize"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 132
    const-string v2, "allSize"

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 133
    const-string v2, "notification"

    iget-object v3, p0, Lama;->a:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    const-string v2, "action"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v2, "sogouMediaType"

    iget-object v3, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget v3, v3, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lama;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    return-void
.end method

.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lama;->b:I

    sub-int v0, p1, v0

    iget v1, p0, Lama;->c:I

    if-ge v0, v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iput p1, p0, Lama;->b:I

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lama;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string v2, "media_url"

    iget-object v3, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v3, v3, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "transferredSize"

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    const-string v2, "allSize"

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 151
    const-string v2, "notification"

    iget-object v3, p0, Lama;->a:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    const-string v2, "sogouMediaType"

    iget-object v3, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget v3, v3, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v2, "action"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lama;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    iget-object v0, p0, Lama;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lama;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lama;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lama;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lama;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string v2, "media_url"

    iget-object v3, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v3, v3, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "transferredSize"

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 171
    const-string v2, "allSize"

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 172
    const-string v2, "notification"

    iget-object v3, p0, Lama;->a:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    const-string v2, "sogouMediaType"

    iget-object v3, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget v3, v3, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v2, "action"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lama;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 69
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, v1, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[downloadAPK]] download from url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, v1, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lama;->a(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lama;->a:Lrr;

    iget-object v1, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, v1, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lrr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v0, p0, Lama;->a:Lrr;

    invoke-virtual {v0, p0}, Lrr;->a(Lrl;)V

    .line 83
    invoke-virtual {p0, v4}, Lama;->a(I)V

    .line 84
    iget-object v0, p0, Lama;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sogoumessage_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    .line 85
    const/4 v1, 0x0

    .line 86
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->b()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_1
    iget-object v1, p0, Lama;->a:Lrr;

    iget-object v2, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v2, v2, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    iget-object v3, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v3, v3, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lrr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lama;->d:I

    .line 88
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lama;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    const-wide/high16 v2, 0x4014

    iput-wide v2, v1, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:D

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lama;->a()V

    .line 92
    invoke-direct {p0}, Lama;->b()V

    .line 93
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lama;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 97
    iget-object v0, p0, Lama;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lama;->b:Z

    .line 99
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lama;->a()V

    .line 103
    invoke-direct {p0}, Lama;->b()V

    .line 104
    return-void
.end method
