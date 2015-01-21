.class public Lym;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final a:I

.field a:Landroid/view/View$OnClickListener;

.field final synthetic a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

.field a:Lwu;

.field final b:I

.field final c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 758
    iput-object p1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 760
    iput v1, p0, Lym;->d:I

    .line 761
    const/4 v0, 0x2

    iput v0, p0, Lym;->a:I

    .line 762
    iput v1, p0, Lym;->b:I

    .line 763
    const/4 v0, 0x1

    iput v0, p0, Lym;->c:I

    .line 942
    new-instance v0, Lyn;

    invoke-direct {v0, p0}, Lyn;-><init>(Lym;)V

    iput-object v0, p0, Lym;->a:Landroid/view/View$OnClickListener;

    .line 1106
    new-instance v0, Lyp;

    invoke-direct {v0, p0}, Lyp;-><init>(Lym;)V

    iput-object v0, p0, Lym;->a:Lwu;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 908
    const/4 v0, 0x0

    .line 909
    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 912
    :cond_0
    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    add-int/lit8 v0, v0, 0x1

    .line 915
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 920
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 925
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 930
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 931
    const/4 v0, 0x0

    .line 933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const v11, 0x7f0200d0

    const/4 v8, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 766
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0, p1}, Lym;->getItemViewType(I)I

    move-result v0

    .line 768
    packed-switch v0, :pswitch_data_0

    .line 903
    :goto_0
    return-object p2

    .line 770
    :pswitch_0
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 773
    :cond_0
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 777
    :pswitch_1
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    :goto_1
    iput v0, p0, Lym;->d:I

    .line 779
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 780
    :cond_1
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 781
    new-instance v1, Lyr;

    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-direct {v1, v0, v3}, Lyr;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Lxz;)V

    .line 782
    const v0, 0x7f070149

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lyr;->a:Landroid/widget/ImageView;

    .line 783
    const v0, 0x7f07014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lyr;->a:Landroid/widget/TextView;

    .line 784
    const v0, 0x7f07014b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lyr;->b:Landroid/widget/TextView;

    .line 785
    const v0, 0x7f07014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lyr;->a:Landroid/widget/LinearLayout;

    .line 786
    const v0, 0x7f07014d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lyr;->b:Landroid/widget/ImageView;

    .line 787
    const v0, 0x7f07014e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lyr;->c:Landroid/widget/TextView;

    .line 788
    const v0, 0x7f07014f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lyr;->b:Landroid/widget/LinearLayout;

    .line 789
    const v0, 0x7f070151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lyr;->a:Landroid/widget/ProgressBar;

    .line 790
    const v0, 0x7f070152

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lyr;->d:Landroid/widget/TextView;

    .line 791
    const v0, 0x7f070153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lyr;->e:Landroid/widget/TextView;

    .line 792
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    .line 796
    :goto_2
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lym;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 797
    iget-object v0, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v1, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    iget-object v2, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lwo;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lwo;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_4

    .line 800
    iget-object v1, v7, Lyr;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    :goto_3
    iget-object v0, v7, Lyr;->a:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, v7, Lyr;->b:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    const-string v0, "0%"

    .line 814
    iget v1, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    packed-switch v1, :pswitch_data_1

    .line 897
    :goto_4
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    iget v1, p0, Lym;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 898
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lym;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2
    move v0, p1

    .line 777
    goto/16 :goto_1

    .line 794
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyr;

    move-object v7, v0

    goto :goto_2

    .line 802
    :cond_4
    iget-object v0, v7, Lyr;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 803
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    iget-object v3, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v4, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lym;->a:Lwu;

    invoke-virtual/range {v0 .. v5}, Lwo;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lwu;)V

    goto :goto_3

    .line 816
    :pswitch_2
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 817
    iget-object v0, v7, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 818
    iget-object v0, v7, Lyr;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 819
    iget-object v0, v7, Lyr;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b040c

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_4

    .line 823
    :pswitch_3
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 824
    iget-object v0, v7, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 825
    iget-object v0, v7, Lyr;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 826
    iget-object v0, v7, Lyr;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b040a

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_4

    .line 830
    :pswitch_4
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 831
    iget-object v0, v7, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 832
    iget-object v0, v7, Lyr;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 833
    iget-object v0, v7, Lyr;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b040b

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_4

    .line 837
    :pswitch_5
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 838
    iget-object v0, v7, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 839
    iget-object v0, v7, Lyr;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 840
    iget-object v0, v7, Lyr;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b0406

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_4

    .line 844
    :pswitch_6
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 845
    iget-object v0, v7, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 846
    iget-object v0, v7, Lyr;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 847
    iget-object v0, v7, Lyr;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b0409

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_4

    .line 851
    :pswitch_7
    iget-object v1, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 852
    iget-object v1, v7, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 853
    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v2, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxx;->b(Ljava/lang/String;)Lxy;

    move-result-object v2

    .line 854
    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v3, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v4, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v1, v3, v4}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 855
    iget-object v3, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lyv;

    move-result-object v3

    invoke-virtual {v3, v1}, Lyv;->b(Ljava/lang/String;)Z

    move-result v1

    .line 856
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 857
    iget v1, v2, Lxy;->a:I

    .line 858
    iget v0, v2, Lxy;->b:I

    .line 859
    iget-object v2, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v2

    int-to-long v3, v0

    int-to-long v5, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 861
    :goto_5
    iget-object v3, v7, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 862
    iget-object v0, v7, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 863
    iget-object v0, v7, Lyr;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, v7, Lyr;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b0405

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 867
    :pswitch_8
    iget-object v1, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 868
    iget-object v1, v7, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 869
    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v1

    iget-object v2, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxx;->a(Ljava/lang/String;)Lxy;

    move-result-object v1

    .line 870
    if-eqz v1, :cond_5

    .line 871
    iget v9, v1, Lxy;->a:I

    .line 872
    iget v8, v1, Lxy;->b:I

    .line 873
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v0

    int-to-long v1, v8

    int-to-long v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 875
    :cond_5
    iget-object v1, v7, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 876
    iget-object v1, v7, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 877
    iget-object v1, v7, Lyr;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v0, v7, Lyr;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b040e

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 881
    :pswitch_9
    iget-object v0, v7, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    iget-object v0, v7, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v0

    iget-object v1, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxx;->b(Ljava/lang/String;)Lxy;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_6

    .line 885
    iget v1, v0, Lxy;->a:I

    .line 886
    iget v0, v0, Lxy;->b:I

    .line 887
    iget-object v2, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;

    move-result-object v2

    int-to-long v3, v0

    int-to-long v5, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 888
    iget-object v3, v7, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 889
    iget-object v0, v7, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 890
    iget-object v0, v7, Lyr;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :cond_6
    iget-object v0, v7, Lyr;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->a:Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;

    const v2, 0x7f0b0407

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_7
    move v1, v9

    move-object v2, v0

    move v0, v8

    goto/16 :goto_5

    .line 768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 814
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 939
    const/4 v0, 0x2

    return v0
.end method
