.class Lcom/mediatek/filemanager/FileManagerSelectPathActivity$1;
.super Landroid/os/Handler;
.source "FileManagerSelectPathActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileManagerSelectPathActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/FileManagerSelectPathActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$1;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerSelectPathActivity$1;->this$0:Lcom/mediatek/filemanager/FileManagerSelectPathActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method
