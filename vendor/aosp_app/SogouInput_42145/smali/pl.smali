.class public Lpl;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionRepository;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 264
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 168
    :sswitch_1
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    goto :goto_0

    .line 173
    :sswitch_2
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V

    goto :goto_0

    .line 176
    :sswitch_3
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    goto :goto_0

    .line 179
    :sswitch_4
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ga:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ga:I

    .line 180
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 181
    iget-object v1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V

    goto :goto_0

    .line 184
    :sswitch_5
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    goto :goto_0

    .line 189
    :sswitch_6
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    goto :goto_0

    .line 194
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnp;

    .line 195
    iget-object v1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    const/16 v2, 0xdd

    iget-object v0, v0, Lnp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(ILjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fr:I

    .line 197
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafp;->l(Z)V

    .line 198
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 203
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 204
    iget-object v1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(ILjava/lang/String;)V

    .line 205
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 210
    :sswitch_9
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 217
    :sswitch_a
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 222
    :sswitch_b
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    .line 225
    :cond_1
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :sswitch_c
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnp;

    .line 233
    iget-object v1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    const/16 v2, 0xe8

    iget-object v0, v0, Lnp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(ILjava/lang/String;)V

    .line 234
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    .line 237
    :cond_2
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Loz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 239
    iget-object v1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Loz;

    move-result-object v0

    invoke-interface {v0}, Loz;->d()V

    goto/16 :goto_0

    .line 245
    :sswitch_e
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    .line 247
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    .line 248
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 252
    :sswitch_f
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :sswitch_10
    iget-object v0, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :sswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 259
    iget-object v1, p0, Lpl;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V

    goto/16 :goto_0

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0xdb -> :sswitch_a
        0xdc -> :sswitch_6
        0xdd -> :sswitch_7
        0xde -> :sswitch_0
        0xdf -> :sswitch_5
        0xe0 -> :sswitch_8
        0xe1 -> :sswitch_9
        0xe2 -> :sswitch_b
        0xe3 -> :sswitch_f
        0xe7 -> :sswitch_c
        0xe8 -> :sswitch_d
        0xe9 -> :sswitch_10
        0xea -> :sswitch_11
        0xfd -> :sswitch_2
        0xfe -> :sswitch_3
        0xff -> :sswitch_e
    .end sparse-switch
.end method
