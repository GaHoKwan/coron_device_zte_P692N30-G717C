.class Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$4;
.super Ljava/lang/Object;
.source "BaseNotesListAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->showNoteOptionPopupWindow(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

.field private final synthetic val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$4;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$4;->val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 408
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$4;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$4;->val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-virtual {v0, v1, p1}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->menuItemSelected(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
