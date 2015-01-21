.class Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssociationSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 337
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 338
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mAdapterChildSize:I
    invoke-static {v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$1000(Lcom/mediatek/contacts/detail/AssociationSimActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 349
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 354
    const v1, 0x7f070042

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 355
    .local v0, moreImage:Landroid/widget/ImageView;
    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    if-nez p1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getShowingNumberTypeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    invoke-static {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getShowingNumberContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->setListViewChildText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 366
    return-object p2

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;
    invoke-static {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$000(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->getShowingSimName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->setListViewChildText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
