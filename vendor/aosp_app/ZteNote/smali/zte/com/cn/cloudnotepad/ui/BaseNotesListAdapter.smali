.class public Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BaseNotesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;,
        Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseNotesListAdapter"

.field private static mContentDrawableHeight:I

.field private static mContentDrawableWidth:I


# instance fields
.field protected ZeroPositionAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

.field protected mContext:Landroid/content/Context;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field protected mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

.field protected mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

.field private final mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContentDrawableWidth:I

    .line 46
    sput v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContentDrawableHeight:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ExpandableListView;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    const-wide v2, 0x3fd999999999999aL

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 114
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$1;-><init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 49
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 52
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContentDrawableWidth:I

    .line 54
    invoke-static {p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getNoteContentThumbnailHeight(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContentDrawableHeight:I

    .line 55
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 60
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    if-eqz p4, :cond_0

    .line 76
    move-object v0, p4

    .line 80
    .local v0, view:Landroid/view/View;
    :goto_0
    return-object v0

    .line 78
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 94
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 106
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 128
    if-eqz p3, :cond_2

    .line 129
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;

    .line 137
    .local v0, holder:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;
    :goto_0
    if-nez p2, :cond_0

    .line 138
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 139
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->getGroupCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 143
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, titleStr:Ljava/lang/String;
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;->number:Landroid/widget/TextView;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupNumberMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v1           #titleStr:Ljava/lang/String;
    :cond_1
    return-object p3

    .line 131
    .end local v0           #holder:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;
    :cond_2
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 132
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;-><init>()V

    .line 133
    .restart local v0       #holder:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;
    const v2, 0x7f0600af

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 134
    const v2, 0x7f0600b0

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$HeaderViewHolder;->number:Landroid/widget/TextView;

    .line 135
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 471
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->ZeroPositionAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    .line 472
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->notifyDataSetChanged()V

    .line 473
    return-void
.end method

.method protected viewNoteDetail(II)V
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, intentDetail:Landroid/content/Intent;
    const-string v1, "groupPosition"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v1, "childPosition"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    if-eqz v1, :cond_0

    .line 169
    const-string v2, "searchString"

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method
