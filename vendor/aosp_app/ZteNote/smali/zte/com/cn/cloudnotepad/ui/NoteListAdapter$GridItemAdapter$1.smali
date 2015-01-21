.class Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;
.super Ljava/lang/Object;
.source "NoteListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;

.field private final synthetic val$curPosition:Ljava/lang/String;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;->val$position:I

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;->val$curPosition:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 112
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->access$0(Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;)Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;

    iget v1, v1, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter;->mGroupPosition:I

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;->val$position:I

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter$GridItemAdapter$1;->val$curPosition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->doOnClick(IILjava/lang/String;)V

    .line 113
    return-void
.end method
