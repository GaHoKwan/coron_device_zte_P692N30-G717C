.class Lakl;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lajq;


# direct methods
.method constructor <init>(Lajq;)V
    .locals 0
    .parameter

    .prologue
    .line 1945
    iput-object p1, p0, Lakl;->a:Lajq;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1947
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1948
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2057
    :cond_0
    :goto_0
    return-void

    .line 1950
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1951
    iget-object v1, p0, Lakl;->a:Lajq;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v1, p1, v0}, Lajq;->a(Lajq;Landroid/os/Message;Landroid/view/View;)V

    goto :goto_0

    .line 1956
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_1

    .line 1958
    iget-object v0, p0, Lakl;->a:Lajq;

    invoke-static {v0}, Lajq;->a(Lajq;)Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/hotdict/RefreshableView;->a()V

    .line 1960
    iget-object v0, p0, Lakl;->a:Lajq;

    invoke-static {v0}, Lajq;->b(Lajq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lakl;->a:Lajq;

    invoke-static {v1}, Lajq;->a(Lajq;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 1961
    iget-object v1, p0, Lakl;->a:Lajq;

    invoke-static {v1}, Lajq;->a(Lajq;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0211

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1962
    const/4 v1, -0x1

    iget-object v2, p0, Lakl;->a:Lajq;

    invoke-static {v2}, Lajq;->a(Lajq;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0296

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lakm;

    invoke-direct {v3, p0}, Lakm;-><init>(Lakl;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1969
    const/4 v1, -0x2

    iget-object v2, p0, Lakl;->a:Lajq;

    invoke-static {v2}, Lajq;->a(Lajq;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0297

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lakn;

    invoke-direct {v3, p0, p1}, Lakn;-><init>(Lakl;Landroid/os/Message;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1980
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1982
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1983
    iget-object v1, p0, Lakl;->a:Lajq;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v1, p1, v0}, Lajq;->a(Lajq;Landroid/os/Message;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1989
    :pswitch_2
    iget-object v0, p0, Lakl;->a:Lajq;

    invoke-static {v0, p1}, Lajq;->a(Lajq;Landroid/os/Message;)Landroid/view/View;

    move-result-object v0

    .line 1990
    iget-object v1, p0, Lakl;->a:Lajq;

    invoke-static {v1, p1, v0}, Lajq;->a(Lajq;Landroid/os/Message;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1994
    :pswitch_3
    iget-object v0, p0, Lakl;->a:Lajq;

    invoke-virtual {v0}, Lajq;->c()V

    goto/16 :goto_0

    .line 1998
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1999
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageButton;

    .line 2000
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2001
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2003
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "2"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 2007
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2008
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2010
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2011
    new-array v2, v7, [I

    fill-array-data v2, :array_1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2012
    new-array v1, v6, [I

    const v2, 0x101009e

    aput v2, v1, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2014
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2015
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 2020
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageButton;

    .line 2022
    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2023
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 2028
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2029
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    .line 2030
    if-eqz v1, :cond_0

    .line 2031
    if-eqz v0, :cond_3

    .line 2032
    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2033
    iget-object v2, p0, Lakl;->a:Lajq;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lajq;->a(Lajq;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2035
    :cond_2
    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2039
    :cond_3
    const v0, 0x7f020136

    .line 2040
    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()Ljava/lang/String;

    move-result-object v2

    .line 2041
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2042
    const v0, 0x7f020135

    .line 2044
    :cond_4
    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2045
    iget-object v2, p0, Lakl;->a:Lajq;

    invoke-static {v2, v0}, Lajq;->a(Lajq;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2047
    :cond_5
    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1948
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 2010
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 2011
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method
