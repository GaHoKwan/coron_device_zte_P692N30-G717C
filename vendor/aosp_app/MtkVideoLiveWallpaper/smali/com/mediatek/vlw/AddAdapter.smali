.class public Lcom/mediatek/vlw/AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vlw/AddAdapter$ListItem;
    }
.end annotation


# static fields
.field static final ITEM_FOLDER:I = 0x1

.field static final ITEM_VIDEO:I = 0x0

.field private static final NO_IMAGE:I = -0x1


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/vlw/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 6
    .parameter "ve"

    .prologue
    const/4 v5, -0x1

    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/vlw/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 85
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/mediatek/vlw/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/mediatek/vlw/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/vlw/AddAdapter$ListItem;

    const v3, 0x7f08001a

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v5, v4}, Lcom/mediatek/vlw/AddAdapter$ListItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/mediatek/vlw/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/vlw/AddAdapter$ListItem;

    const v3, 0x7f08001b

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v5, v4}, Lcom/mediatek/vlw/AddAdapter$ListItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/vlw/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/vlw/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/mediatek/vlw/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/vlw/AddAdapter$ListItem;

    .line 114
    .local v1, item:Lcom/mediatek/vlw/AddAdapter$ListItem;
    move-object v0, p2

    .line 115
    .local v0, cvtView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 116
    iget-object v3, p0, Lcom/mediatek/vlw/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 119
    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    #getter for: Lcom/mediatek/vlw/AddAdapter$ListItem;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/mediatek/vlw/AddAdapter$ListItem;->access$000(Lcom/mediatek/vlw/AddAdapter$ListItem;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    #getter for: Lcom/mediatek/vlw/AddAdapter$ListItem;->mImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/mediatek/vlw/AddAdapter$ListItem;->access$100(Lcom/mediatek/vlw/AddAdapter$ListItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-object v0
.end method
