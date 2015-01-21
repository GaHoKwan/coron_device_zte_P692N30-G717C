.class Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;
.super Ljava/lang/Object;
.source "NotebooksAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

.field private final synthetic val$menu:Landroid/view/View;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;->this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;->val$position:I

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;->val$menu:Landroid/view/View;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 104
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;->this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;->val$position:I

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;->val$menu:Landroid/view/View;

    #calls: Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->createPopupMenu(ILandroid/view/View;)V
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->access$1(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;ILandroid/view/View;)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;->this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->access$2(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method
