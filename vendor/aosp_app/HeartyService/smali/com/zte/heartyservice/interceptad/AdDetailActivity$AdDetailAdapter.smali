.class Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "AdDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/interceptad/AdDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdDetailAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity;Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;->this$0:Lcom/zte/heartyservice/interceptad/AdDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;->list:Ljava/util/List;

    .line 209
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 210
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 224
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 229
    new-instance v1, Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;-><init>(Lcom/zte/heartyservice/interceptad/AdDetailActivity$1;)V

    .line 230
    .local v1, holder:Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/interceptad/AdInfo;

    .line 232
    .local v0, ad:Lcom/zte/heartyservice/interceptad/AdInfo;
    if-nez p2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdDetailActivity$AdDetailAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 235
    const v2, 0x7f0e000e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;->icon:Landroid/widget/ImageView;

    .line 236
    const v2, 0x7f0e000f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;->title:Landroid/widget/TextView;

    .line 238
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    :goto_0
    iget-object v2, v1, Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-object p2

    .line 240
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;
    check-cast v1, Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;

    .restart local v1       #holder:Lcom/zte/heartyservice/interceptad/AdDetailActivity$Holder;
    goto :goto_0
.end method
