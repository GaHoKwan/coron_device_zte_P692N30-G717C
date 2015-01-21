.class public Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;
.super Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;
.source "NoteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;,
        Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$MultiDeleteTask;
    }
.end annotation


# instance fields
.field public isSelectedMode:Z

.field private mNotesSortList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 51
    move-object v0, p1

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesExpandListView:Landroid/widget/ExpandableListView;

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListView;)V

    .line 31
    iput-boolean v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;

    .line 52
    check-cast p1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .end local p1
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    .line 54
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;-><init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;Landroid/content/Context;I)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->ZeroPositionAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    .line 55
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->ZeroPositionAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    .line 56
    return-void
.end method

.method private CreateMutiDeleteAlertDlg()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 293
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090013

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 295
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 299
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 300
    const v3, 0x104000a

    new-instance v4, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$1;

    invoke-direct {v4, p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$1;-><init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 307
    const/high16 v3, 0x104

    new-instance v4, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$2;

    invoke-direct {v4, p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$2;-><init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->doOnLongClick(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private doOnLongClick(IILjava/lang/String;)V
    .locals 1
    .parameter "groupPosition"
    .parameter "childposition"
    .parameter "curPosition"

    .prologue
    .line 168
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->exitSearchMode()V

    .line 169
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    .line 173
    :cond_0
    invoke-direct {p0, p3}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->doSelect(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private doSelect(Ljava/lang/String;)V
    .locals 1
    .parameter "curPosition"

    .prologue
    .line 178
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->updateView()V

    .line 185
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected doOnClick(IILjava/lang/String;)V
    .locals 1
    .parameter "groupPosition"
    .parameter "childposition"
    .parameter "curPosition"

    .prologue
    .line 157
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0, p3}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->doSelect(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->exitSearchMode()V

    .line 161
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->viewNoteDetail(II)V

    goto :goto_0
.end method

.method public exitSelectMode()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    .line 233
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->updateView()V

    .line 235
    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 62
    invoke-super/range {p0 .. p5}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 63
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;-><init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;Landroid/content/Context;I)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    :goto_0
    move-object v0, p4

    .line 68
    check-cast v0, Lzte/com/cn/cloudnotepad/ui/widget/MyGridView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/ui/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-object p4

    .line 66
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->ZeroPositionAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mGridItemAdapter:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    goto :goto_0
.end method

.method public getNotesSortList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;

    .line 43
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 47
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;

    return-object v2

    .line 41
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 44
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public markall()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    if-ne v1, v2, :cond_1

    .line 221
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 228
    :cond_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    if-ge v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public mutiDelete()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->CreateMutiDeleteAlertDlg()V

    goto :goto_0
.end method

.method public mutiExport()V
    .locals 6

    .prologue
    .line 318
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 319
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f09007b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 333
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->getExportPath()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, folderPath:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v2, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->getNotesSortList()Ljava/util/ArrayList;

    .line 325
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v3, v3, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    if-lt v1, v3, :cond_1

    .line 331
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, v2, v0}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateMutiExportDlg(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesSortList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 148
    :try_start_0
    invoke-super {p0}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->updateEmptyView()Z

    .line 153
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onMoveItemSelected(ILzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 5
    .parameter "which"
    .parameter "data"

    .prologue
    .line 131
    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "notebook"

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v0

    .line 137
    .local v0, notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    iget v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-virtual {v0, v2, v1}, Lzte/com/cn/cloudnotepad/data/NotesData;->updateNoteData(ILandroid/content/ContentValues;)V

    .line 138
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget v3, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortOrder:I

    invoke-virtual {v0, v2, v3}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->notifyDataSetChanged()V

    .line 141
    .end local v0           #notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public updateEmptyView()Z
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 336
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 337
    .local v0, homeActivity:Lzte/com/cn/cloudnotepad/ui/HomeActivity;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupListTitle:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 338
    sget-object v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 339
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mEmptyHint:Landroid/widget/TextView;

    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 343
    :goto_0
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mEmptyHint:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v3, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesExpandListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 345
    iget-object v3, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterMutiSelect:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    const/4 v3, 0x1

    .line 352
    :goto_1
    return v3

    .line 341
    :cond_0
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mEmptyHint:Landroid/widget/TextView;

    const v5, 0x7f090084

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 348
    :cond_1
    iget-boolean v4, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-eqz v4, :cond_2

    move v1, v2

    .line 349
    .local v1, nomal:I
    :goto_2
    iget-object v4, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mEmptyHint:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotesExpandListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 351
    iget-object v2, v0, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterMutiSelect:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .end local v1           #nomal:I
    :cond_2
    move v1, v3

    .line 348
    goto :goto_2
.end method

.method public updateView()V
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 189
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 190
    .local v1, homeActivity:Lzte/com/cn/cloudnotepad/ui/HomeActivity;
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-eqz v5, :cond_0

    .line 191
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 192
    iget-object v5, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedNumber:Landroid/widget/TextView;

    const v6, 0x7f090079

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 197
    :goto_0
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData;

    iget v6, v6, Lzte/com/cn/cloudnotepad/data/NotesData;->mTotalNumber:I

    if-ne v5, v6, :cond_2

    .line 198
    iget-object v5, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedAll:Landroid/widget/ImageView;

    const v6, 0x7f02004d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v5, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedText:Landroid/widget/TextView;

    const v6, 0x7f090089

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 206
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-eqz v5, :cond_3

    move v2, v3

    .line 207
    .local v2, selected:I
    :goto_2
    iget-boolean v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-eqz v5, :cond_4

    move v0, v4

    .line 208
    .local v0, hideWhenSelect:I
    :goto_3
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderContentbar:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterNewNote:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSortButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterDelete:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mFooterExport:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectbar:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->notifyDataSetChanged()V

    .line 217
    return-void

    .line 194
    .end local v0           #hideWhenSelect:I
    .end local v2           #selected:I
    :cond_1
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f09007a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, selected:Ljava/lang/String;
    iget-object v5, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    .end local v2           #selected:Ljava/lang/String;
    :cond_2
    iget-object v5, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedAll:Landroid/widget/ImageView;

    const v6, 0x7f02004b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v5, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mHeaderSelectedText:Landroid/widget/TextView;

    const v6, 0x7f090088

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    move v2, v4

    .line 206
    goto :goto_2

    .local v2, selected:I
    :cond_4
    move v0, v3

    .line 207
    goto :goto_3
.end method
