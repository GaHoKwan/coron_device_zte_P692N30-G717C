.class Lcom/mediatek/vlw/VideoScene$10;
.super Landroid/os/FileObserver;
.source "VideoScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoScene;->addAndStartVideoObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoScene;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .parameter "event"
    .parameter "path"

    .prologue
    .line 1645
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileObserver::onEvent(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$300(Lcom/mediatek/vlw/VideoScene;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, videoPath:Ljava/lang/String;
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    .line 1651
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    const-string v1, "VideoScene"

    const-string v2, "FileObserver::onEvent() media file has beed deleted"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/vlw/VideoScene$10$1;

    invoke-direct {v2, p0}, Lcom/mediatek/vlw/VideoScene$10$1;-><init>(Lcom/mediatek/vlw/VideoScene$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1672
    :cond_0
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 1675
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1676
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mMovingFile:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/mediatek/vlw/VideoScene;->access$5002(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;

    .line 1680
    :cond_1
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    .line 1683
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMovingFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$5000(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMovingFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$5000(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1684
    const-string v1, "VideoScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileObserver::onEvent() media file has beed renamed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mMovingFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/vlw/VideoScene;->access$5000(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/vlw/VideoScene;->mMovingFile:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VideoScene;->access$5002(Lcom/mediatek/vlw/VideoScene;Ljava/lang/String;)Ljava/lang/String;

    .line 1688
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mObserverPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/vlw/VideoScene;->access$5100(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/mediatek/vlw/VideoScene;->mUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VideoScene;->access$302(Lcom/mediatek/vlw/VideoScene;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1689
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/vlw/VideoScene$10$2;

    invoke-direct {v2, p0}, Lcom/mediatek/vlw/VideoScene$10$2;-><init>(Lcom/mediatek/vlw/VideoScene$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1703
    :cond_2
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_3

    .line 1707
    const-string v1, "VideoScene"

    const-string v2, "FileObserver::onEvent() parent directory has beed deleted"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/vlw/VideoScene$10$3;

    invoke-direct {v2, p0}, Lcom/mediatek/vlw/VideoScene$10$3;-><init>(Lcom/mediatek/vlw/VideoScene$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1718
    :cond_3
    and-int/lit16 v1, p1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_4

    .line 1722
    const-string v1, "VideoScene"

    const-string v2, "FileObserver::onEvent() parent directory has beed renamed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/vlw/VideoScene$10$4;

    invoke-direct {v2, p0}, Lcom/mediatek/vlw/VideoScene$10$4;-><init>(Lcom/mediatek/vlw/VideoScene$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1735
    :cond_4
    return-void
.end method
