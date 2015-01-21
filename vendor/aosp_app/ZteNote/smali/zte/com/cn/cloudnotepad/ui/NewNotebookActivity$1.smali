.class Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;
.super Ljava/lang/Object;
.source "NewNotebookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->setViewPager(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

.field private final synthetic val$curPage:I

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;->val$curPage:I

    iput p3, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;->val$position:I

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 308
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;->val$curPage:I

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity$1;->val$position:I

    #calls: Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->doCoverListClick(II)V
    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;II)V

    .line 309
    return-void
.end method
