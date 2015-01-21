.class Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$10;
.super Ljava/lang/Object;
.source "CreateSkitchInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initDoodleUndoRedoViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$10;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 523
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$10;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->access$2(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->undo()V

    .line 524
    return-void
.end method
