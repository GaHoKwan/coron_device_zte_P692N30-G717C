.class public Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;
.super Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/SearchAdapter;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "groupPosition"

    .prologue
    .line 45
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    .line 44
    invoke-direct {p0, p2, p3}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;)Lzte/com/cn/cloudnotepad/ui/SearchAdapter;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;

    iget-object v0, v2, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 52
    .local v0, thumbnail:Landroid/widget/ImageView;
    const v2, 0x7f0200c3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 54
    new-instance v2, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter$1;

    invoke-direct {v2, p0, p1}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter$1;-><init>(Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v1
.end method
