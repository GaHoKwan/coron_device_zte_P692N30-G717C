.class Lvk;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lvj;


# direct methods
.method constructor <init>(Lvj;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lvk;->a:Lvj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter

    .prologue
    const v11, 0x7f0b0341

    const/4 v5, 0x4

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    iget-object v0, p0, Lvk;->a:Lvj;

    iget-boolean v0, v0, Lvj;->a:Z

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v3, -0x1

    and-int/2addr v3, v0

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const v4, 0xffff

    and-int/2addr v0, v4

    .line 110
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 114
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 115
    iget-object v1, p0, Lvk;->a:Lvj;

    iget-object v1, v1, Lvj;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string v3, "multimedia_serial_no"

    iget-object v4, p0, Lvk;->a:Lvj;

    iget-object v4, v4, Lvj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "multimedia_sender"

    iget-object v4, p0, Lvk;->a:Lvj;

    invoke-static {v4}, Lvj;->a(Lvj;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "media_list_size"

    iget-object v4, p0, Lvk;->a:Lvj;

    invoke-static {v4}, Lvj;->a(Lvj;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    const-string v3, "multimedia_type"

    iget-object v4, p0, Lvk;->a:Lvj;

    invoke-static {v4}, Lvj;->a(Lvj;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v3, "sogouMedia"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    const-string v3, "sogoumessage_item"

    iget-object v4, p0, Lvk;->a:Lvj;

    invoke-static {v4}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    const-string v3, "sogoumedia_list"

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lvk;->a:Lvj;

    invoke-static {v5}, Lvj;->b(Lvj;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 126
    iget-object v2, p0, Lvk;->a:Lvj;

    invoke-static {v2, v0, v1}, Lvj;->a(Lvj;Lcom/sohu/inputmethod/multimedia/SogouMedia;Landroid/os/Message;)V

    .line 128
    iget-object v1, p0, Lvk;->a:Lvj;

    invoke-static {v1}, Lvj;->a(Lvj;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lvk;->a:Lvj;

    invoke-static {v1}, Lvj;->a(Lvj;)Landroid/os/Handler;

    move-result-object v1

    iget v0, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    invoke-virtual {v1, v10, v0, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lvk;->a:Lvj;

    iget-object v0, v0, Lvj;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 138
    :pswitch_2
    const-string v0, "sogouMedia"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 139
    packed-switch v3, :pswitch_data_1

    .line 145
    :pswitch_3
    iget-object v1, p0, Lvk;->a:Lvj;

    invoke-static {v1}, Lvj;->a(Lvj;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v2, p0, Lvk;->a:Lvj;

    invoke-static {v2}, Lvj;->c(Lvj;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lvk;->a:Lvj;

    iget-object v0, v0, Lvj;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    :cond_3
    :try_start_1
    iget-object v0, p0, Lvk;->a:Lvj;

    iget-object v0, v0, Lvj;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 157
    :pswitch_4
    const-string v0, "sogouMedia"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 158
    iget-object v1, p0, Lvk;->a:Lvj;

    iget-object v1, v1, Lvj;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 160
    iget-object v2, p0, Lvk;->a:Lvj;

    invoke-static {v2, v0, v1}, Lvj;->a(Lvj;Lcom/sohu/inputmethod/multimedia/SogouMedia;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 165
    :pswitch_5
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    iget-object v2, p0, Lvk;->a:Lvj;

    iget-object v3, p0, Lvk;->a:Lvj;

    invoke-static {v3}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lvj;->a(Lvj;Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 168
    iget-object v3, p0, Lvk;->a:Lvj;

    iget-object v4, p0, Lvk;->a:Lvj;

    invoke-static {v4}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v4

    invoke-static {v3, v4, v2, v0}, Lvj;->a(Lvj;Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 169
    iget-object v3, p0, Lvk;->a:Lvj;

    iget-object v4, p0, Lvk;->a:Lvj;

    invoke-static {v4}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v4

    iget-object v5, p0, Lvk;->a:Lvj;

    invoke-static {v5}, Lvj;->c(Lvj;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v4, v2, v5, v0}, Lvj;->a(Lvj;Lcom/sohu/inputmethod/sms/SogouMessageItem;Landroid/net/Uri;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 172
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lvk;->a:Lvj;

    invoke-static {v2}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 174
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 180
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lany;->a:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lanq;->a(Landroid/content/ContentResolver;)I

    move-result v0

    .line 185
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lvk;->a:Lvj;

    invoke-static {v3}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b00e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    :cond_5
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bo:I

    .line 193
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lvk;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 194
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 195
    const-string v3, "transfer_res"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 205
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_9

    .line 208
    const-string v2, "transfer_res"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 210
    :goto_3
    iget-object v2, p0, Lvk;->a:Lvj;

    iput-boolean v1, v2, Lvj;->a:Z

    .line 211
    if-eqz v0, :cond_8

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsto:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvk;->a:Lvj;

    invoke-static {v2}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sohu.inputmethod.sms.READDOWNLOADDIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lvk;->a:Lvj;

    invoke-static {v3}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    const-string v3, "dataUri"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 221
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 222
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 223
    const-string v4, "uri"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smsto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lvk;->a:Lvj;

    invoke-static {v6}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "msg"

    iget-object v5, p0, Lvk;->a:Lvj;

    invoke-static {v5}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lvk;->a:Lvj;

    invoke-static {v7}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lvk;->a:Lvj;

    invoke-static {v8}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lvk;->a:Lvj;

    invoke-static {v7}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lvk;->a:Lvj;

    invoke-static {v8}, Lvj;->a(Lvj;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v4, "serialno"

    iget-object v5, p0, Lvk;->a:Lvj;

    iget-object v5, v5, Lvj;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 237
    :cond_6
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x800

    invoke-static {v0, v9, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 238
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009c

    iget-object v4, p0, Lvk;->a:Lvj;

    invoke-static {v4}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lvk;->a:Lvj;

    invoke-static {v6}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lvk;->a:Lvj;

    invoke-static {v7}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lvk;->a:Lvj;

    invoke-static {v6}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lvk;->a:Lvj;

    invoke-static {v7}, Lvj;->a(Lvj;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 247
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 248
    iget-object v3, p0, Lvk;->a:Lvj;

    invoke-static {v3}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lvk;->a:Lvj;

    invoke-static {v4}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b033f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lvk;->a:Lvj;

    invoke-static {v5}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lvk;->a:Lvj;

    invoke-static {v7}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lvk;->a:Lvj;

    invoke-static {v8}, Lvj;->a(Lvj;)Lcom/sohu/inputmethod/sms/SogouMessageItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lvk;->a:Lvj;

    invoke-static {v7}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lvk;->a:Lvj;

    invoke-static {v8}, Lvj;->a(Lvj;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 251
    const/4 v0, 0x3

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 252
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 253
    iget-object v1, p0, Lvk;->a:Lvj;

    iget-object v1, v1, Lvj;->a:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, v2}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 259
    :cond_7
    :goto_4
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 255
    :cond_8
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 256
    iget-object v0, p0, Lvk;->a:Lvj;

    invoke-static {v0}, Lvj;->a(Lvj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_3

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch

    .line 139
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
