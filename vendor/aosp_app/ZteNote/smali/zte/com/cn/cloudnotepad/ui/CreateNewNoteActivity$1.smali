.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$1;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;


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
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddDoodleDone(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "meta"
    .parameter "bitmap"

    .prologue
    .line 239
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const-string v1, "doodle"

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addDoodleWriteFile(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 240
    return-void
.end method

.method public onAddHandwriteDone(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "meta"
    .parameter "bitmap"

    .prologue
    .line 233
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const-string v1, "handwrite"

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addDoodleWriteFile(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 234
    return-void
.end method

.method public onEditDoodleDone(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "myImageView"
    .parameter "bitmap"

    .prologue
    .line 227
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const-string v1, "doodle"

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->editPictureFile(Ljava/lang/String;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V

    .line 228
    return-void
.end method

.method public onEditHandwriteDone(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "myImageView"
    .parameter "bitmap"

    .prologue
    .line 221
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    const-string v1, "handwrite"

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->editPictureFile(Ljava/lang/String;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V

    .line 222
    return-void
.end method
