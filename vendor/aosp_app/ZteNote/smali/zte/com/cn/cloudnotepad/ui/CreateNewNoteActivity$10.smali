.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$10;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addEditText(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)Landroid/widget/EditText;
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 780
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 781
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 782
    .local v0, index:I
    const-string v1, "CreateNewNoteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addEditText index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$10;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCurrentFocusStatus:[I
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$11(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)[I

    move-result-object v1

    aput v0, v1, v4

    .line 787
    .end local v0           #index:I
    :cond_0
    return v4
.end method
