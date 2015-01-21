.class public Ljn;
.super Lgw;
.source "SourceFile"


# instance fields
.field a:Lhd;

.field final synthetic a:Ljf;

.field b:Landroid/view/View$OnClickListener;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Ljf;Landroid/content/Context;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Ljn;->a:Ljf;

    .line 681
    invoke-direct {p0, p2, p3, p4}, Lgw;-><init>(Landroid/content/Context;ZI)V

    .line 672
    const/4 v0, 0x0

    iput v0, p0, Ljn;->d:I

    .line 673
    const/4 v0, 0x1

    iput v0, p0, Ljn;->e:I

    .line 674
    const/4 v0, 0x2

    iput v0, p0, Ljn;->f:I

    .line 675
    const/4 v0, 0x3

    iput v0, p0, Ljn;->g:I

    .line 676
    const/4 v0, 0x4

    iput v0, p0, Ljn;->h:I

    .line 677
    const/4 v0, 0x5

    iput v0, p0, Ljn;->i:I

    .line 830
    new-instance v0, Ljo;

    invoke-direct {v0, p0}, Ljo;-><init>(Ljn;)V

    iput-object v0, p0, Ljn;->b:Landroid/view/View$OnClickListener;

    .line 861
    new-instance v0, Ljp;

    invoke-direct {v0, p0}, Ljp;-><init>(Ljn;)V

    iput-object v0, p0, Ljn;->a:Lhd;

    .line 683
    const/4 v0, 0x6

    iput v0, p0, Ljn;->c:I

    .line 684
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-static {p3}, Lgy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)Lage;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)Lage;

    move-result-object v1

    iget-object v1, v1, Lage;->a:Lgy;

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)Lage;

    move-result-object v1

    iget-object v1, v1, Lage;->a:Lgy;

    invoke-virtual {v1, v0}, Lgy;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_1

    .line 822
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Ljn;->a:Ljf;

    invoke-static {v2}, Ljf;->a(Ljf;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    const v0, 0x7f020159

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 825
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p2, Lhk;->a:Ljava/lang/String;

    iget-object v3, p0, Ljn;->a:Lhd;

    invoke-virtual {v0, v1, p3, v2, v3}, Lgy;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lhd;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 687
    iget-boolean v1, p0, Ljn;->b:Z

    if-eqz v1, :cond_0

    .line 704
    :goto_0
    return v0

    .line 688
    :cond_0
    iget-boolean v1, p0, Ljn;->c:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ljn;->d:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 689
    :cond_2
    iput v0, p0, Ljn;->a:I

    .line 690
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 691
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->b(Ljf;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->b(Ljf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lgw;->b:I

    if-eqz v0, :cond_3

    .line 692
    iget v0, p0, Ljn;->b:I

    int-to-double v0, v0

    iget-object v2, p0, Ljn;->a:Ljf;

    invoke-static {v2}, Ljf;->a(Ljf;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Ljn;->a:I

    .line 704
    :cond_3
    :goto_1
    iget v0, p0, Ljn;->a:I

    goto :goto_0

    .line 697
    :cond_4
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lgw;->b:I

    if-eqz v0, :cond_3

    .line 698
    iget v0, p0, Ljn;->b:I

    int-to-double v0, v0

    iget-object v2, p0, Ljn;->a:Ljf;

    invoke-static {v2}, Ljf;->a(Ljf;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljn;->a:I

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 711
    iget-boolean v0, p0, Ljn;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 714
    :goto_0
    return v0

    .line 712
    :cond_0
    iget-boolean v0, p0, Ljn;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 713
    :cond_1
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 714
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v3, 0x0

    .line 719
    invoke-virtual {p0, p1}, Ljn;->getItemViewType(I)I

    move-result v0

    .line 720
    packed-switch v0, :pswitch_data_0

    .line 814
    :goto_0
    :pswitch_0
    return-object p2

    .line 726
    :pswitch_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 728
    :cond_0
    invoke-static {p2}, Lhl;->a(Landroid/view/View;)V

    .line 729
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030067

    invoke-virtual {v0, v1, v11, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 731
    invoke-virtual {p0, p1, v0, v11}, Ljn;->a(ILandroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 732
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    move-object v0, v1

    .line 737
    :goto_1
    iget v4, p0, Ljn;->b:I

    .line 738
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 739
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 740
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)I

    move-result v1

    mul-int/2addr v1, p1

    add-int v6, v2, v1

    .line 741
    if-ltz v6, :cond_7

    if-ge v6, v4, :cond_7

    .line 743
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 745
    :goto_3
    iput v6, v1, Lhk;->c:I

    .line 746
    iput p1, v1, Lhk;->b:I

    .line 747
    iget-object v7, p0, Ljn;->a:Ljf;

    invoke-static {v7}, Ljf;->c(Ljf;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Ljq;->a:Landroid/widget/LinearLayout;

    const v8, 0x7f02013b

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 749
    :goto_4
    iget-object v7, v0, Ljq;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 750
    iget-object v7, p0, Ljn;->a:Ljf;

    invoke-static {v7}, Ljf;->b(Ljf;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 751
    iget-object v7, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 753
    iget-object v6, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v7, p0, Ljn;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    iget-object v6, v0, Ljq;->a:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-object v6, v0, Ljq;->b:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 757
    iget-object v6, p0, Ljn;->a:Ljf;

    invoke-static {v6}, Ljf;->a(Ljf;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Ljq;->a:Landroid/widget/TextView;

    iget-object v8, v0, Ljq;->b:Landroid/widget/TextView;

    iget-object v9, v1, Lhk;->a:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lhl;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 758
    :cond_2
    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    .line 759
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v6, v1, Lhk;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v6}, Ljn;->a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V

    .line 772
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 773
    goto :goto_2

    .line 734
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 744
    :cond_4
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    goto :goto_3

    .line 748
    :cond_5
    iget-object v7, v0, Ljq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 761
    :cond_6
    iget-object v1, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 762
    iget-object v1, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Ljn;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object v1, v0, Ljq;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    iget-object v1, v0, Ljq;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljq;->a(Z)V

    .line 766
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 769
    :cond_7
    iget-object v1, v0, Ljq;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 770
    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    goto :goto_5

    .line 774
    :cond_8
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->i(Ljf;)V

    goto/16 :goto_0

    .line 775
    :cond_9
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->j(Ljf;)V

    goto/16 :goto_0

    .line 781
    :pswitch_2
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    .line 782
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Ljn;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ljf;->a(Ljf;Landroid/view/View;)Landroid/view/View;

    .line 783
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/view/View;

    move-result-object v0

    .line 787
    :goto_6
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->j(Ljf;)V

    move-object p2, v0

    .line 788
    goto/16 :goto_0

    .line 785
    :cond_a
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 790
    :pswitch_3
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->b(Ljf;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    .line 791
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Ljn;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ljf;->b(Ljf;Landroid/view/View;)Landroid/view/View;

    .line 792
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->b(Ljf;)Landroid/view/View;

    move-result-object v0

    .line 796
    :goto_7
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->j(Ljf;)V

    .line 797
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 798
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 799
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 800
    iget-object v2, p0, Ljn;->a:Ljf;

    invoke-static {v2}, Ljf;->b(Ljf;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object p2, v0

    .line 801
    goto/16 :goto_0

    .line 794
    :cond_b
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->b(Ljf;)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    .line 804
    :pswitch_4
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    .line 805
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-virtual {p0}, Ljn;->a()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ljf;->c(Ljf;Landroid/view/View;)Landroid/view/View;

    .line 807
    :cond_c
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 808
    iget-object v1, p0, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->a(Ljf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_d
    move-object p2, v0

    goto/16 :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
