.class Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$1;
.super Ljava/lang/Object;
.source "BaseNotesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$1;->val$position:I

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 292
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iget v1, v1, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mGroupPosition:I

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$1;->val$position:I

    #calls: Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->showNoteOptionPopupWindow(Landroid/view/View;II)V
    invoke-static {v0, p1, v1, v2}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->access$0(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;Landroid/view/View;II)V

    .line 293
    return-void
.end method
