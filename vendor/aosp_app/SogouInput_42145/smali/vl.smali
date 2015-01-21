.class public Lvl;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/16 v4, 0x6f

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 152
    .line 155
    const-string v0, "0%"

    .line 160
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 293
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 162
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 165
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v1

    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-virtual {v1, v2, v0}, Lxx;->a(Lxw;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;I)V

    goto :goto_0

    .line 175
    :pswitch_4
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 176
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b040f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->a(Ljava/lang/String;)Lxy;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    iget v1, v0, Lxy;->b:I

    .line 183
    iget v0, v0, Lxy;->a:I

    .line 184
    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v3

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 186
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 188
    :cond_1
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 189
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_0

    .line 193
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 194
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 195
    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 198
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 199
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 202
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 204
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 206
    :pswitch_8
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const v2, 0x7f0b0424

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :pswitch_9
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const v2, 0x7f0b0425

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v4}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    const v3, 0x7f0b0423

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :pswitch_b
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 222
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 224
    :cond_2
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 226
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Process;)Ljava/lang/Process;

    .line 228
    :cond_3
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b041c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b041d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 237
    :pswitch_c
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 238
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 239
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 241
    :cond_4
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Process;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 242
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 243
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Process;)Ljava/lang/Process;

    .line 245
    :cond_5
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    invoke-static {}, Laox;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 248
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 249
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v0

    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_6
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 254
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 255
    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    iput v8, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 259
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;

    move-result-object v1

    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxx;->b(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0410

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 265
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 267
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 268
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 269
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 271
    :cond_7
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 275
    :pswitch_d
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 276
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 277
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 279
    :cond_8
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 281
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Process;)Ljava/lang/Process;

    .line 283
    :cond_9
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b041c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b041d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lvl;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
