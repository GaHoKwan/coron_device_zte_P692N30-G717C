.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$6;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->initView()V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 600
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 601
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$6;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$11(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)[I

    move-result-object v0

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 604
    :cond_0
    return v2
.end method
