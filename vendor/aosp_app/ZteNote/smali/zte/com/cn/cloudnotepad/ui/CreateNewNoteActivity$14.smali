.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addResource(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

.field private final synthetic val$pos:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;->val$view:Landroid/view/View;

    iput p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;->val$pos:I

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 903
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;->val$view:Landroid/view/View;

    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;->val$pos:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CreateNewNoteActivity"

    const-string v2, "addResource addView Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$14;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->finish()V

    goto :goto_0
.end method
