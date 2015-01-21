.class Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$1;
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

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$1;->val$position:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 75
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$1;->val$position:I

    #calls: Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->onItemClick(I)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->access$0(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;I)V

    .line 76
    return-void
.end method
