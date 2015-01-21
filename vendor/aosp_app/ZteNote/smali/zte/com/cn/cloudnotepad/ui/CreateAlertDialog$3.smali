.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateEmptyAlertDlg(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$createNewNoteActivity:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

.field private final synthetic val$isNew:Z

.field private final synthetic val$mAddResourceFileNameList:Ljava/util/LinkedList;

.field private final synthetic val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

.field private final synthetic val$mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;ZLzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$createNewNoteActivity:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$mAddResourceFileNameList:Ljava/util/LinkedList;

    iput-boolean p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$isNew:Z

    iput-object p5, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 107
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$createNewNoteActivity:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getNoteId()I

    move-result v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v1, v2, v3}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteFiles(ILzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;)V

    .line 108
    iget-boolean v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$isNew:Z

    if-nez v1, :cond_0

    .line 109
    new-instance v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 110
    .local v0, controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$createNewNoteActivity:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$mNotesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget v2, v2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-static {v1, v2, v0}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteNote(Landroid/content/Context;ILzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    .line 113
    .end local v0           #controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$3;->val$createNewNoteActivity:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    .line 114
    return-void
.end method
