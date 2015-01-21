.class Lcom/mediatek/vlw/VideoEditor$9;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoEditor;->updateInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoEditor;

.field final synthetic val$span:Landroid/text/Spanned;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor;Ljava/lang/String;Landroid/text/Spanned;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$9;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iput-object p2, p0, Lcom/mediatek/vlw/VideoEditor$9;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/vlw/VideoEditor$9;->val$span:Landroid/text/Spanned;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$9;->val$title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$9;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mVideoTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$3200(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$9;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$9;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$3300(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$9;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mFolderInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$3300(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$9;->val$span:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :cond_1
    return-void
.end method
