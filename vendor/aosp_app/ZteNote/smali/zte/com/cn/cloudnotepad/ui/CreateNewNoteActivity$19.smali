.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$19;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->CreateBackAlertDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$19;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1627
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$19;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getNoteId()I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$19;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceData:Lzte/com/cn/cloudnotepad/data/ResourceData;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$8(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/data/ResourceData;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$19;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mAddResourceFileNameList:Ljava/util/LinkedList;

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->deleteFiles(ILzte/com/cn/cloudnotepad/data/ResourceData;Ljava/util/LinkedList;)V

    .line 1628
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$19;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    .line 1629
    return-void
.end method
