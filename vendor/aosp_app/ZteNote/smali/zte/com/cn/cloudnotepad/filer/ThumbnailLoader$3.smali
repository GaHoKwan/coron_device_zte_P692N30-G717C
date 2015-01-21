.class Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;
.super Ljava/lang/Object;
.source "ThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->queueJob(Ljava/io/File;Landroid/widget/ImageView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;Ljava/io/File;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;->this$0:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;->val$f:Ljava/io/File;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;->val$handler:Landroid/os/Handler;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 113
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;->this$0:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;->val$f:Ljava/io/File;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;->val$ctx:Landroid/content/Context;

    #calls: Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->downloadDrawable(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3, v4}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->access$3(Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;Ljava/io/File;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    .local v0, bmp:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 115
    .local v1, message:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method
