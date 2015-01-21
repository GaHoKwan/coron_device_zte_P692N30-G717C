.class public Ljc;
.super Lgw;
.source "SourceFile"


# instance fields
.field a:Lhd;

.field final synthetic a:Liu;

.field b:Landroid/view/View$OnClickListener;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Liu;Landroid/content/Context;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Ljc;->a:Liu;

    .line 706
    invoke-direct {p0, p2, p3, p4}, Lgw;-><init>(Landroid/content/Context;ZI)V

    .line 697
    const/4 v0, 0x0

    iput v0, p0, Ljc;->d:I

    .line 698
    const/4 v0, 0x1

    iput v0, p0, Ljc;->e:I

    .line 699
    const/4 v0, 0x2

    iput v0, p0, Ljc;->f:I

    .line 700
    const/4 v0, 0x3

    iput v0, p0, Ljc;->g:I

    .line 701
    const/4 v0, 0x4

    iput v0, p0, Ljc;->h:I

    .line 702
    const/4 v0, 0x5

    iput v0, p0, Ljc;->i:I

    .line 834
    new-instance v0, Ljd;

    invoke-direct {v0, p0}, Ljd;-><init>(Ljc;)V

    iput-object v0, p0, Ljc;->b:Landroid/view/View$OnClickListener;

    .line 856
    new-instance v0, Lje;

    invoke-direct {v0, p0}, Lje;-><init>(Ljc;)V

    iput-object v0, p0, Ljc;->a:Lhd;

    .line 708
    const/4 v0, 0x6

    iput v0, p0, Ljc;->c:I

    .line 709
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 822
    invoke-static {p3}, Lgy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    iget-object v1, p0, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Lage;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Lage;

    move-result-object v1

    iget-object v1, v1, Lage;->a:Lgy;

    if-eqz v1, :cond_0

    .line 824
    iget-object v1, p0, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Lage;

    move-result-object v1

    iget-object v1, v1, Lage;->a:Lgy;

    invoke-virtual {v1, v0}, Lgy;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 825
    if-eqz v0, :cond_1

    .line 826
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    const v0, 0x7f020159

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 829
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p2, Lhk;->a:Ljava/lang/String;

    iget-object v3, p0, Ljc;->a:Lhd;

    invoke-virtual {v0, v1, p3, v2, v3}, Lgy;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lhd;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 712
    iget-boolean v1, p0, Ljc;->b:Z

    if-eqz v1, :cond_0

    .line 718
    :goto_0
    return v0

    .line 713
    :cond_0
    iget-boolean v1, p0, Ljc;->c:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ljc;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ljc;->e:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ljc;->f:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 714
    :cond_2
    iput v0, p0, Ljc;->a:I

    .line 715
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lgw;->b:I

    if-eqz v0, :cond_3

    .line 716
    iget v0, p0, Ljc;->b:I

    int-to-double v0, v0

    iget-object v2, p0, Ljc;->a:Liu;

    invoke-static {v2}, Liu;->a(Liu;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Ljc;->a:I

    .line 718
    :cond_3
    iget v0, p0, Ljc;->a:I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 723
    iget-boolean v0, p0, Ljc;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 727
    :goto_0
    return v0

    .line 724
    :cond_0
    iget-boolean v0, p0, Ljc;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 725
    :cond_1
    iget-boolean v0, p0, Ljc;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 726
    :cond_2
    iget-boolean v0, p0, Ljc;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    .line 727
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x4

    const/4 v3, 0x0

    .line 731
    invoke-virtual {p0, p1}, Ljc;->getItemViewType(I)I

    move-result v0

    .line 732
    packed-switch v0, :pswitch_data_0

    .line 818
    :cond_0
    :goto_0
    :pswitch_0
    return-object p2

    .line 738
    :pswitch_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 740
    :cond_1
    invoke-static {p2}, Lhl;->a(Landroid/view/View;)V

    .line 741
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030067

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 743
    invoke-virtual {p0, p1, v0, v2}, Ljc;->a(ILandroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    move-object v0, v1

    .line 749
    :goto_1
    iget v4, p0, Ljc;->b:I

    .line 750
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 751
    iget-object v1, p0, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)I

    move-result v1

    mul-int/2addr v1, p1

    add-int v6, v2, v1

    .line 752
    if-ltz v6, :cond_5

    if-ge v6, v4, :cond_5

    .line 754
    iget-object v1, p0, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->b(Liu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 755
    iput v6, v1, Lhk;->c:I

    .line 756
    iput p1, v1, Lhk;->b:I

    .line 757
    iget-object v7, v0, Ljq;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 758
    iget-object v7, p0, Ljc;->a:Liu;

    invoke-static {v7}, Liu;->a(Liu;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 759
    iget-object v7, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 761
    iget-object v7, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v8, p0, Ljc;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object v7, v0, Ljq;->a:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v7, v0, Ljq;->b:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 764
    iget-object v7, p0, Ljc;->a:Liu;

    invoke-static {v7}, Liu;->a(Liu;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Ljq;->a:Landroid/widget/TextView;

    iget-object v9, v0, Ljq;->b:Landroid/widget/TextView;

    iget-object v10, v1, Lhk;->a:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lhl;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 765
    :cond_2
    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    .line 766
    iget-object v7, p0, Ljc;->a:Liu;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--------------position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Liu;->b(Liu;Ljava/lang/String;)V

    .line 767
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v6, v1, Lhk;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v6}, Ljc;->a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V

    .line 780
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 781
    goto :goto_2

    .line 746
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 769
    :cond_4
    iget-object v1, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 770
    iget-object v1, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Ljc;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v1, v0, Ljq;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    iget-object v1, v0, Ljq;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljq;->a(Z)V

    .line 774
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 777
    :cond_5
    iget-object v1, v0, Ljq;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 778
    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    goto :goto_3

    .line 784
    :pswitch_2
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 785
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Ljc;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Liu;->a(Liu;Landroid/view/View;)Landroid/view/View;

    .line 787
    :cond_6
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b047b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljc;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 791
    :pswitch_3
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    .line 792
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Ljc;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Liu;->b(Liu;Landroid/view/View;)Landroid/view/View;

    .line 794
    :cond_7
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 797
    :pswitch_4
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    .line 798
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Ljc;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Liu;->a(Liu;Landroid/view/View;)Landroid/view/View;

    .line 800
    :cond_8
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b047a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljc;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 804
    :pswitch_5
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeSearchDefaultView;

    move-result-object v0

    if-nez v0, :cond_9

    .line 805
    iget-object v0, p0, Ljc;->a:Liu;

    new-instance v1, Lcom/sogou/theme/ThemeSearchDefaultView;

    iget-object v2, p0, Ljc;->a:Liu;

    invoke-static {v2}, Liu;->a(Liu;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sogou/theme/ThemeSearchDefaultView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Liu;->a(Liu;Lcom/sogou/theme/ThemeSearchDefaultView;)Lcom/sogou/theme/ThemeSearchDefaultView;

    .line 806
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeSearchDefaultView;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sogou/theme/ThemeSearchDefaultView;->setViewSize(II)V

    .line 807
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeSearchDefaultView;

    move-result-object v0

    invoke-static {}, Liu;->a()Liu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/theme/ThemeSearchDefaultView;->setKeywordListener(Lit;)V

    .line 809
    :cond_9
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 810
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeSearchDefaultView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/theme/ThemeSearchDefaultView;->a()V

    .line 811
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0, v3}, Liu;->b(Liu;Z)Z

    .line 813
    :cond_a
    iget-object v0, p0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lcom/sogou/theme/ThemeSearchDefaultView;

    move-result-object p2

    goto/16 :goto_0

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
