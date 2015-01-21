.class Ljm;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljm;->a:Ljava/lang/ref/WeakReference;

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Ljm;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 122
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0, v1}, Ljf;->a(Ljf;Z)Z

    .line 130
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->a()V

    .line 131
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 132
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 133
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 134
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0, v1}, Ljf;->a(Ljf;Z)Z

    .line 140
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->a()V

    .line 141
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 142
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 143
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 147
    :pswitch_2
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->b(Ljf;)V

    goto/16 :goto_0

    .line 150
    :pswitch_3
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->c(Ljf;)V

    goto/16 :goto_0

    .line 155
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v1, v0}, Ljf;->a(Ljf;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 160
    :pswitch_5
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 162
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 163
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgw;->b(Z)V

    .line 164
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 165
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 166
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)V

    goto/16 :goto_0

    .line 170
    :pswitch_6
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 172
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullLoadEnable(Z)V

    .line 173
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgw;->c(Z)V

    .line 174
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 175
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 176
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)V

    goto/16 :goto_0

    .line 180
    :pswitch_7
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->d(Ljf;)V

    goto/16 :goto_0

    .line 183
    :pswitch_8
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Ljf;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->e(Ljf;)V

    goto/16 :goto_0

    .line 188
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v1

    invoke-static {v1}, Ljf;->a(Ljf;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljf;->a(Ljf;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 193
    :pswitch_a
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->f(Ljf;)V

    goto/16 :goto_0

    .line 196
    :pswitch_b
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    invoke-static {v0}, Ljf;->g(Ljf;)V

    goto/16 :goto_0

    .line 126
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
    .end packed-switch
.end method
