.class Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter$1;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter$1;->val$position:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 59
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;->this$0:Lzte/com/cn/cloudnotepad/ui/SearchAdapter;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;->access$0(Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;)Lzte/com/cn/cloudnotepad/ui/SearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter$1;->this$1:Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;

    iget v1, v1, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter;->mGroupPosition:I

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/SearchAdapter$GridItemAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/SearchAdapter;->viewNoteDetail(II)V

    .line 60
    return-void
.end method
