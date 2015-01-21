.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$3;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 477
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->onActionBarItemSelected(I)Z
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$3(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;I)Z

    .line 478
    return-void
.end method
