.class public Lzz;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f0b044f

    const/4 v3, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 105
    :sswitch_0
    invoke-virtual {p0, v2}, Lzz;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 111
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 115
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 121
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b0451

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 125
    :sswitch_2
    invoke-virtual {p0, v3}, Lzz;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 128
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 131
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 135
    :sswitch_3
    const/16 v0, 0xdc

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 136
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 141
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 142
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 145
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 146
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0460

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0, v7, v7}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;II)V

    goto/16 :goto_0

    .line 152
    :sswitch_4
    const/16 v0, 0xdd

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 153
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 160
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 161
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 163
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 164
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0461

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;I)I

    .line 167
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;I)I

    .line 168
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v1

    iget-object v2, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;II)V

    goto/16 :goto_0

    .line 172
    :sswitch_5
    const/16 v0, 0xde

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 173
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 179
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 180
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 181
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 182
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b045f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;I)I

    .line 187
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;I)I

    .line 188
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v1

    iget-object v2, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;II)V

    goto/16 :goto_0

    .line 192
    :sswitch_6
    const/16 v0, 0xdf

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 195
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 200
    :sswitch_7
    const/16 v0, 0xe0

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 207
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 208
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 209
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 210
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b045f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v2, 0x7f0b045e

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :sswitch_8
    const/16 v0, 0xe1

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 218
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 221
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v2, 0x7f0b045d

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :sswitch_9
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 229
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 232
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    goto/16 :goto_0

    .line 238
    :sswitch_a
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lzz;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v0

    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 241
    :cond_1
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v1, 0x7f0b03d8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v5}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v2

    div-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 244
    iget-object v0, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v1, 0x7f0b0463

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_2
    iget-object v1, p0, Lzz;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_9
        0x4 -> :sswitch_2
        0x5 -> :sswitch_a
        0xdc -> :sswitch_3
        0xdd -> :sswitch_4
        0xde -> :sswitch_5
        0xdf -> :sswitch_6
        0xe0 -> :sswitch_7
        0xe1 -> :sswitch_8
    .end sparse-switch
.end method
