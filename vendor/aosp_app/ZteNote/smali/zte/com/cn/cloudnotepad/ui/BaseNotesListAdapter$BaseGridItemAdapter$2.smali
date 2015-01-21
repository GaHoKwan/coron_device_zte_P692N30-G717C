.class Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;
.super Landroid/os/Handler;
.source "BaseNotesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->createContentThumbnail(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

.field private final synthetic val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

.field private final synthetic val$thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;Landroid/widget/ImageView;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;->val$thumbnail:Landroid/widget/ImageView;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;->val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 345
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 350
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;->val$thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;->val$thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;->val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget v1, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$2;->val$thumbnail:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    :cond_0
    return-void
.end method
