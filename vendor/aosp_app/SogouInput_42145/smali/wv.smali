.class public Lwv;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppManagerActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Lxg;

    move-result-object v0

    invoke-virtual {v0}, Lxg;->b()V

    .line 100
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 108
    :cond_0
    :goto_1
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 113
    :sswitch_1
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Lxg;

    move-result-object v0

    invoke-virtual {v0}, Lxg;->b()V

    .line 115
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 116
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    :cond_2
    :goto_2
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 124
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V

    .line 125
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Lwy;

    move-result-object v0

    invoke-virtual {v0}, Lwy;->b()V

    .line 126
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 127
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    :cond_3
    :goto_3
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c()V

    goto/16 :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 130
    :cond_5
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 137
    :sswitch_2
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 138
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V

    .line 139
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Lwy;

    move-result-object v0

    invoke-virtual {v0}, Lwy;->b()V

    .line 140
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 141
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    :cond_6
    :goto_4
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c()V

    goto/16 :goto_0

    .line 144
    :cond_7
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 151
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 153
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    iget-object v1, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    const v2, 0x7f0b0424

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_1
    const-string v1, ""

    .line 159
    iget-object v1, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    iget-object v2, p0, Lwv;->a:Lcom/sohu/inputmethod/platform/AppManagerActivity;

    const v3, 0x7f0b0425

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Lcom/sohu/inputmethod/platform/AppManagerActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_3
        0x6a -> :sswitch_2
    .end sparse-switch

    .line 153
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
