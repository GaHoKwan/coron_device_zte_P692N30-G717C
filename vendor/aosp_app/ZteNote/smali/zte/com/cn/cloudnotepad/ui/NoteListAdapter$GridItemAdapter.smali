.class public Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;
.super Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;
.source "NoteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "groupPosition"

    .prologue
    .line 76
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    .line 75
    invoke-direct {p0, p2, p3}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;)Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    .line 82
    const/4 v4, 0x0

    .line 125
    .end local v4           #view:Landroid/view/View;
    :goto_0
    return-object v4

    .line 84
    .restart local v4       #view:Landroid/view/View;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;

    iget-object v2, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->selected:Landroid/widget/CheckBox;

    .line 85
    .local v2, selected:Landroid/widget/CheckBox;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;

    iget-object v1, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->optionButton:Landroid/view/View;

    .line 86
    .local v1, optionButton:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;

    iget-object v3, v5, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 87
    .local v3, thumbnail:Landroid/widget/ImageView;
    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->mCurrPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, curPosition:Ljava/lang/String;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-boolean v5, v5, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 95
    :goto_1
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;
    invoke-static {v5}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->access$0(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    const v5, 0x7f0200b3

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 98
    const v5, 0x7f0200a4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    :goto_2
    new-instance v5, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;

    invoke-direct {v5, p0, p1, v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;-><init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v5, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$2;

    invoke-direct {v5, p0, p1, v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$2;-><init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    const v5, 0x7f0200b4

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 102
    const v5, 0x7f0200c3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
