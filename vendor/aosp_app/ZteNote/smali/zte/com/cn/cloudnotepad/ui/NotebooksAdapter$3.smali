.class Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$3;
.super Ljava/lang/Object;
.source "NotebooksAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->createPopupMenu(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$3;->this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$3;->val$position:I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 164
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$3;->this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$3;->val$position:I

    invoke-virtual {v0, v1, p1}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->menuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
