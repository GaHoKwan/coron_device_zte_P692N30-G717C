.class public Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FilerPathAdapter.java"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    const v0, 0x7f03000d

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;->mArray:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;->mArray:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 31
    if-nez p2, :cond_0

    .line 32
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000d

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 36
    .local v6, view:Landroid/view/View;
    :goto_0
    const v7, 0x7f060041

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 37
    .local v2, pathImage:Landroid/widget/ImageView;
    const v7, 0x7f06003f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 38
    .local v4, pathImageNull:Landroid/widget/ImageView;
    const v7, 0x7f060040

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 39
    .local v3, pathImageArrow:Landroid/widget/ImageView;
    const v7, 0x7f060042

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 40
    .local v5, pathText:Landroid/widget/TextView;
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, path:Ljava/lang/String;
    sget-object v7, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootPhonePath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 42
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    const v7, 0x7f020050

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_1
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object v6

    .line 34
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #pathImage:Landroid/widget/ImageView;
    .end local v3           #pathImageArrow:Landroid/widget/ImageView;
    .end local v4           #pathImageNull:Landroid/widget/ImageView;
    .end local v5           #pathText:Landroid/widget/TextView;
    .end local v6           #view:Landroid/view/View;
    :cond_0
    move-object v6, p2

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 47
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #pathImage:Landroid/widget/ImageView;
    .restart local v3       #pathImageArrow:Landroid/widget/ImageView;
    .restart local v4       #pathImageNull:Landroid/widget/ImageView;
    .restart local v5       #pathText:Landroid/widget/TextView;
    :cond_1
    sget-object v7, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->mRootSdcardPath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 48
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    const v7, 0x7f020062

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    sget-object v7, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->mCurDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 58
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/filer/FilerPathAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 59
    .local v0, color:I
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 61
    .end local v0           #color:I
    :cond_3
    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
