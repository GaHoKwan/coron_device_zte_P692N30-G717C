.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$24;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addGalleryFile(Landroid/net/Uri;)V
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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$24;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2164
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$24;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$24;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2165
    return-void
.end method
