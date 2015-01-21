.class Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "BookmarkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/video/BookmarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarkAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/BookmarkActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/video/BookmarkActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;->this$0:Lcom/mediatek/gallery3d/video/BookmarkActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 121
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 122
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

    .line 137
    .local v0, holder:Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mId:J

    .line 138
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mTitle:Ljava/lang/String;

    .line 139
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mData:Ljava/lang/String;

    .line 140
    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mMimetype:Ljava/lang/String;

    .line 141
    iget-object v1, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mDataView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 148
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/BookmarkActivity$BookmarkAdapter;->this$0:Lcom/mediatek/gallery3d/video/BookmarkActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;-><init>(Lcom/mediatek/gallery3d/video/BookmarkActivity;Lcom/mediatek/gallery3d/video/BookmarkActivity$1;)V

    .line 128
    .local v0, holder:Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;
    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 129
    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/mediatek/gallery3d/video/BookmarkActivity$ViewHolder;->mDataView:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    return-object v1
.end method
