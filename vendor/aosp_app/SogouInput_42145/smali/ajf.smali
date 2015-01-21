.class public Lajf;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 105
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:I

    .line 110
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_0

    .line 117
    :cond_1
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 120
    :cond_2
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V

    .line 121
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I

    .line 123
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0435

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 128
    const v0, 0x7f0700de

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 129
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    const v1, 0x7f0700dd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v4}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ee66666

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    const v3, 0x410eb852

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    iget-object v1, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700dc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    iget-object v1, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I

    .line 147
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 148
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0436

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 151
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 158
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 159
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 160
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 162
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 163
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 164
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 165
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)V

    .line 168
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)V

    .line 169
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)V

    .line 170
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)V

    .line 172
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 173
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 174
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->g(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 175
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->h(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    const v0, 0x7f0700ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v3, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v3, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lajf;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
