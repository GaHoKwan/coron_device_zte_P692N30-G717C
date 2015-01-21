.class Lip;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lip;->a:Ljava/lang/ref/WeakReference;

    .line 98
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lip;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 102
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0, v1}, Lim;->a(Lim;Z)Z

    .line 110
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 111
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->a()V

    .line 112
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 113
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 114
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 115
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)V

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0, v1}, Lim;->a(Lim;Z)Z

    .line 121
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 122
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->a()V

    .line 123
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 124
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setVisibility(I)V

    .line 125
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 129
    :pswitch_2
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->b(Lim;)V

    goto/16 :goto_0

    .line 132
    :pswitch_3
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->c(Lim;)V

    goto/16 :goto_0

    .line 137
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lim;->a()Lim;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v1, v0}, Lim;->a(Lim;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 142
    :pswitch_5
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 144
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgw;->b(Z)V

    .line 145
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 146
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 147
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)V

    goto/16 :goto_0

    .line 151
    :pswitch_6
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lcom/sogou/theme/ThemeListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sogou/theme/ThemeListView;->setPullRefreshEnable(Z)V

    .line 153
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgw;->c(Z)V

    .line 154
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgw;->a(Z)V

    .line 155
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)Lgw;

    move-result-object v0

    invoke-virtual {v0}, Lgw;->notifyDataSetChanged()V

    .line 156
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->a(Lim;)V

    goto/16 :goto_0

    .line 160
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {}, Lim;->a()Lim;

    move-result-object v1

    invoke-static {v1}, Lim;->a(Lim;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim;->a(Lim;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 165
    :pswitch_8
    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    invoke-static {v0}, Lim;->d(Lim;)V

    goto/16 :goto_0

    .line 106
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
    .end packed-switch
.end method
