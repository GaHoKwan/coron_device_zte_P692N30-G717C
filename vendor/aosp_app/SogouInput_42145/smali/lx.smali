.class Llx;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lls;


# direct methods
.method constructor <init>(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Llx;->a:Lls;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const v6, 0x7f0b03d0

    const/4 v5, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 729
    iget-object v0, p0, Llx;->a:Lls;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==================msg.what=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lls;->a(Lls;Ljava/lang/String;)V

    .line 730
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 938
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 734
    :pswitch_1
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    const v2, 0x7f0b03ca

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ISSAFTY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lls;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :pswitch_2
    iget-object v0, p0, Llx;->a:Lls;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "URL_DETAIL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ISSAFTY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lls;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :pswitch_3
    iget-object v0, p0, Llx;->a:Lls;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "URL_DETAIL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ISSAFTY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lls;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :pswitch_4
    iget-object v0, p0, Llx;->a:Lls;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "APK_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "APK_NUMBER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "APK_DETAIL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "APK_TYPE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "APK_PACKAGENAME"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "APK_LEVEL"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "APK_VERSIONCODE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lls;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    goto/16 :goto_0

    .line 756
    :pswitch_5
    iget-object v0, p0, Llx;->a:Lls;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "APK_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "APK_NUMBER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "APK_DETAIL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "APK_TYPE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "APK_PACKAGENAME"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "APK_LEVEL"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "APK_VERSIONCODE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lls;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    goto/16 :goto_0

    .line 765
    :pswitch_6
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0, v4}, Lls;->a(Lls;Z)Z

    .line 766
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)V

    goto/16 :goto_0

    .line 769
    :pswitch_7
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)V

    goto/16 :goto_0

    .line 773
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "downloadurl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 776
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lls;->a(Lls;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 778
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0, v4}, Lls;->b(Lls;Z)Z

    goto/16 :goto_0

    .line 782
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "downloadurl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b03d4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 787
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    const v2, 0x7f0b03d4

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lls;->a(Lls;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    .line 792
    :pswitch_a
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    const v2, 0x7f0b03e3

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lls;->b(Lls;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 795
    :pswitch_b
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Lku;->b:I

    .line 797
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "downloadurl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b03d1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 802
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    const v2, 0x7f0b03d1

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lls;->a(Lls;Ljava/lang/String;)Ljava/lang/String;

    .line 803
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0, v8}, Lls;->b(Lls;Z)Z

    .line 804
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 805
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 806
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 819
    :pswitch_c
    const-string v1, ""

    .line 820
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lld;

    move-result-object v0

    check-cast v0, Llr;

    iget-object v2, p0, Llx;->a:Lls;

    invoke-static {v2}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v2

    iget-object v3, p0, Llx;->a:Lls;

    invoke-static {v3}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v2

    iget-object v2, v2, Lku;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Llr;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 822
    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    const v2, 0x7f0b03e0

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 823
    :goto_1
    const-string v1, ""

    .line 824
    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    const v2, 0x7f0b03df

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 825
    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1, v0}, Lls;->c(Lls;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 830
    :pswitch_d
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 831
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 832
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 837
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->d(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 838
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b03d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 841
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)I

    move-result v0

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 842
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Llx;->a:Lls;

    invoke-static {v3}, Lls;->b(Lls;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    :goto_2
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)I

    move-result v1

    iget-object v2, p0, Llx;->a:Lls;

    invoke-static {v2}, Lls;->b(Lls;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lls;->a(Lls;II)V

    goto/16 :goto_0

    .line 845
    :cond_2
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 851
    :pswitch_e
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 856
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 858
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 859
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->d(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 860
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 863
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Llx;->a:Lls;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lls;->a(Lls;I)I

    .line 865
    iget-object v0, p0, Llx;->a:Lls;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lls;->b(Lls;I)I

    .line 866
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Llx;->a:Lls;

    invoke-static {v3}, Lls;->b(Lls;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)I

    move-result v1

    iget-object v2, p0, Llx;->a:Lls;

    invoke-static {v2}, Lls;->b(Lls;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lls;->a(Lls;II)V

    goto/16 :goto_0

    .line 871
    :pswitch_f
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 875
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 878
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 879
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->d(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 880
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b03d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 883
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Llx;->a:Lls;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lls;->a(Lls;I)I

    .line 885
    iget-object v0, p0, Llx;->a:Lls;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lls;->b(Lls;I)I

    .line 886
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Llx;->a:Lls;

    invoke-static {v3}, Lls;->b(Lls;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)I

    move-result v1

    iget-object v2, p0, Llx;->a:Lls;

    invoke-static {v2}, Lls;->b(Lls;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lls;->a(Lls;II)V

    goto/16 :goto_0

    .line 890
    :pswitch_10
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    const v2, 0x7f0b03d8

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Llx;->a:Lls;

    invoke-static {v4}, Lls;->a(Lls;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Llx;->a:Lls;

    invoke-static {v6}, Lls;->b(Lls;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lls;->d(Lls;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 894
    :pswitch_11
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    const v2, 0x7f0b03d5

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lls;->e(Lls;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    :pswitch_12
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b03cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 899
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0, v8}, Lls;->a(Lls;I)I

    .line 901
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0, v8}, Lls;->b(Lls;I)I

    .line 903
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    iput v8, v0, Lku;->b:I

    goto/16 :goto_0

    .line 908
    :pswitch_13
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 912
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 915
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 916
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->d(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_0

    .line 919
    :pswitch_14
    iget-object v0, p0, Llx;->a:Lls;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lls;->a(Lls;I)I

    .line 920
    iget-object v0, p0, Llx;->a:Lls;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lls;->b(Lls;I)I

    .line 921
    iget-object v0, p0, Llx;->a:Lls;

    iget-object v1, p0, Llx;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)I

    move-result v1

    iget-object v2, p0, Llx;->a:Lls;

    invoke-static {v2}, Lls;->b(Lls;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lls;->a(Lls;II)V

    .line 923
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 927
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 930
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 931
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->d(Lls;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 932
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->c(Lls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Llx;->a:Lls;

    invoke-static {v0}, Lls;->b(Lls;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b03dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    .line 730
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
