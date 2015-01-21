.class Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;
.super Ljava/lang/Object;
.source "BaseNotesListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;->val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;->val$handler:Landroid/os/Handler;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 362
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->access$1(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;->val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-static {v2, v3, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createContentThumbnail(Landroid/content/Context;Ljava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    .line 363
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;->this$1:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;

    #getter for: Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;->access$1(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cover_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;->val$data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    iget v5, v5, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getContentDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 364
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 365
    .local v1, message:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$BaseGridItemAdapter$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    return-void
.end method
