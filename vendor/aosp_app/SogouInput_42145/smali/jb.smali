.class Ljb;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljb;->a:Ljava/lang/ref/WeakReference;

    .line 121
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Ljb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 125
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0, v1}, Liu;->a(Liu;Z)Z

    .line 133
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 134
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->a()V

    .line 135
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 136
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 137
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0, v1}, Liu;->a(Liu;Z)Z

    .line 143
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 144
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->a()V

    .line 145
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 146
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 150
    :pswitch_2
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->b(Liu;)V

    .line 152
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Liu;->a()Liu;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v1, v0}, Liu;->a(Liu;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 157
    :pswitch_4
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 159
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 160
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgw;->b(Z)V

    .line 161
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 162
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)V

    goto/16 :goto_0

    .line 166
    :pswitch_5
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 168
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgw;->c(Z)V

    .line 169
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 170
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 171
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)V

    goto/16 :goto_0

    .line 175
    :pswitch_6
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->c(Liu;)V

    goto/16 :goto_0

    .line 178
    :pswitch_7
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->d(Liu;)V

    goto/16 :goto_0

    .line 183
    :pswitch_8
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 185
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgw;->d(Z)V

    .line 186
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 187
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 188
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)V

    goto/16 :goto_0

    .line 192
    :pswitch_9
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 194
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgw;->e(Z)V

    .line 195
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 196
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 197
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Liu;)V

    goto/16 :goto_0

    .line 201
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Liu;->a()Liu;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Liu;->a(Liu;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :pswitch_b
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->e(Liu;)V

    goto/16 :goto_0

    .line 209
    :pswitch_c
    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    invoke-static {v0}, Liu;->f(Liu;)V

    goto/16 :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
