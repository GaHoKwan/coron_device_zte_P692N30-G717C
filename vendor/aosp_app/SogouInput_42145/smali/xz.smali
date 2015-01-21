.class public Lxz;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/16 v2, 0x6f

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 163
    .line 166
    const-string v6, "0%"

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 321
    :goto_1
    return-void

    .line 173
    :pswitch_1
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;I)V

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 180
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 181
    iget-object v2, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lwo;->a(II)V

    .line 183
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->b()V

    goto :goto_0

    .line 186
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 188
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v2, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-virtual {v1, v2, v0}, Lxx;->a(Lxw;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V

    goto :goto_0

    .line 192
    :pswitch_5
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    .line 193
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const-string v1, "refresh downloading status"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const-string v1, "notify data setchanged on msg MSG_REFRESH_APP_STATUS"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lym;

    move-result-object v0

    invoke-virtual {v0}, Lym;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 198
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    .line 201
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 202
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 203
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 205
    :pswitch_8
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b0424

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :pswitch_9
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v2, v5

    .line 210
    :goto_2
    if-ge v2, v6, :cond_d

    .line 211
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 216
    :goto_3
    const-string v1, ""

    .line 217
    if-eq v0, v3, :cond_c

    .line 218
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    .line 220
    :goto_4
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    iget-object v2, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v3, 0x7f0b0425

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 227
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    iget-object v2, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v3, 0x7f0b0423

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :pswitch_b
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 234
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 236
    :cond_2
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 238
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Process;)Ljava/lang/Process;

    .line 240
    :cond_3
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b041c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b041d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 249
    :pswitch_c
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 250
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 251
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 253
    :cond_4
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 255
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Process;)Ljava/lang/Process;

    .line 257
    :cond_5
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 260
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 261
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 264
    :cond_6
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 265
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)I

    move-result v1

    .line 270
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v1, -0x1

    move v2, v0

    .line 271
    :goto_5
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 272
    iget-object v7, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v7}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    .line 274
    if-lt v1, v0, :cond_b

    if-gt v1, v7, :cond_b

    .line 275
    sub-int v0, v1, v0

    move v1, v0

    .line 278
    :goto_6
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iput v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 279
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v7

    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lxx;->b(Ljava/lang/String;)V

    .line 280
    if-le v1, v3, :cond_0

    .line 281
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyr;

    .line 284
    iget-object v1, v0, Lyr;->a:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v1, v0, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v3

    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lxx;->b(Ljava/lang/String;)Lxy;

    move-result-object v3

    .line 287
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v7

    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v8, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v7, v8, v1}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lyv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lyv;->b(Ljava/lang/String;)Z

    move-result v1

    .line 289
    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    .line 290
    iget v2, v3, Lxy;->a:I

    .line 291
    iget v1, v3, Lxy;->b:I

    .line 292
    iget-object v3, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v3

    int-to-long v4, v1

    int-to-long v6, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v3

    .line 294
    :goto_7
    iget-object v4, v0, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 295
    iget-object v1, v0, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 296
    iget-object v1, v0, Lyr;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, v0, Lyr;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b0405

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move v2, v1

    .line 270
    goto/16 :goto_5

    .line 302
    :pswitch_d
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 303
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 304
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 306
    :cond_8
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 307
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 308
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Process;)Ljava/lang/Process;

    .line 310
    :cond_9
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b041c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b041d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lxz;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_a
    move v1, v4

    move v2, v5

    move-object v3, v6

    goto/16 :goto_7

    :cond_b
    move v1, v3

    goto/16 :goto_6

    :cond_c
    move-object v0, v1

    goto/16 :goto_4

    :cond_d
    move v0, v3

    goto/16 :goto_3

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 203
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
