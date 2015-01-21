.class Lajn;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lajm;


# direct methods
.method constructor <init>(Lajm;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lajn;->a:Lajm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter

    .prologue
    const/high16 v10, 0x4270

    const/high16 v9, 0x3f00

    const/high16 v8, 0x3f80

    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lajn;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 87
    iget-object v0, p0, Lajn;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lajn;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0311

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lajn;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 99
    iget-object v1, p0, Lajn;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lajn;->a:Lajm;

    invoke-static {v3}, Lajm;->a(Lajm;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lajn;->a:Lajm;

    invoke-static {v4}, Lajm;->a(Lajm;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 105
    iget-object v4, p0, Lajn;->a:Lajm;

    invoke-static {v4}, Lajm;->a(Lajm;)I

    move-result v4

    iget-object v5, p0, Lajn;->a:Lajm;

    invoke-static {v5}, Lajm;->b(Lajm;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 106
    iget-object v5, p0, Lajn;->a:Lajm;

    invoke-static {v5}, Lajm;->c(Lajm;)I

    move-result v5

    iget-object v6, p0, Lajn;->a:Lajm;

    invoke-static {v6}, Lajm;->b(Lajm;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 108
    int-to-float v6, v3

    int-to-float v7, v2

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    .line 110
    if-ge v3, v5, :cond_2

    if-ge v2, v4, :cond_2

    .line 111
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 112
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 126
    :goto_1
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Lajn;->a:Lajm;

    invoke-static {v3}, Lajm;->c(Lajm;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lajn;->a:Lajm;

    invoke-static {v4}, Lajm;->a(Lajm;)F

    move-result v4

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 127
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    div-float/2addr v2, v3

    .line 128
    iget-object v3, p0, Lajn;->a:Lajm;

    invoke-static {v3}, Lajm;->c(Lajm;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lajn;->a:Lajm;

    invoke-static {v4}, Lajm;->a(Lajm;)F

    move-result v4

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 129
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v3, v3

    div-float v2, v3, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 132
    :cond_1
    iget-object v2, p0, Lajn;->a:Lajm;

    invoke-static {v2}, Lajm;->b(Lajm;)I

    move-result v2

    iget-object v3, p0, Lajn;->a:Lajm;

    invoke-static {v3}, Lajm;->b(Lajm;)I

    move-result v3

    iget-object v4, p0, Lajn;->a:Lajm;

    invoke-static {v4}, Lajm;->b(Lajm;)I

    move-result v4

    iget-object v5, p0, Lajn;->a:Lajm;

    invoke-static {v5}, Lajm;->b(Lajm;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 133
    iget-object v2, p0, Lajn;->a:Lajm;

    invoke-static {v2}, Lajm;->a(Lajm;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v1, p0, Lajn;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v0, p0, Lajn;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 115
    :cond_2
    int-to-float v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float v2, v3, v2

    int-to-float v3, v5

    int-to-float v7, v4

    mul-float/2addr v7, v8

    div-float/2addr v3, v7

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 117
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 118
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto/16 :goto_1

    .line 121
    :cond_3
    int-to-float v2, v4

    const/high16 v3, 0x41f0

    iget-object v4, p0, Lajn;->a:Lajm;

    invoke-static {v4}, Lajm;->a(Lajm;)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 122
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto/16 :goto_1

    .line 137
    :cond_4
    iget-object v0, p0, Lajn;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 138
    iget-object v0, p0, Lajn;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lajn;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0313

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
