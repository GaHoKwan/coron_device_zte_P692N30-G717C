.class Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;
.super Landroid/os/Handler;
.source "ThumbnailLoader.java"


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

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;->this$0:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;->val$f:Ljava/io/File;

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;->val$f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 104
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    return-void
.end method
