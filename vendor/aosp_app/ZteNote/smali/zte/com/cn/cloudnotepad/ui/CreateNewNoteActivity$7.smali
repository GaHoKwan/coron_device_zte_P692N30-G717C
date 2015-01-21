.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 628
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 629
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mPreY:F
    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$12(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;F)V

    .line 630
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const/4 v2, 0x0

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mYDistance:F
    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$13(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;F)V

    .line 631
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isActionMoved:Z
    invoke-static {v1, v4}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$14(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Z)V

    .line 633
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 634
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 635
    .local v0, curY:F
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mYDistance:F
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$15(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)F

    move-result v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mPreY:F
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$16(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)F

    move-result v3

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mYDistance:F
    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$13(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;F)V

    .line 636
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mPreY:F
    invoke-static {v1, v0}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$12(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;F)V

    .line 637
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mYDistance:F
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$15(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)F

    move-result v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mTouchSlop:I
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$17(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 639
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isActionMoved:Z
    invoke-static {v1, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$14(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Z)V

    .line 642
    .end local v0           #curY:F
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 643
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->isActionMoved:Z
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$18(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 644
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$7;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->enableLastEditText()V
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$19(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V

    .line 647
    :cond_2
    return v4
.end method
