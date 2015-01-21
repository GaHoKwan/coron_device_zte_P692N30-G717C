.class Lzte/com/cn/cloudnotepad/ui/ViewNote$2;
.super Ljava/lang/Object;
.source "ViewNote.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/ViewNote;->viewNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/ViewNote;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$2;->val$index:I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 142
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$2;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$2;->val$index:I

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v1

    #calls: Lzte/com/cn/cloudnotepad/ui/ViewNote;->createObjectPopupWindow(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    invoke-static {v0, p1, v1}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->access$0(Lzte/com/cn/cloudnotepad/ui/ViewNote;Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method
