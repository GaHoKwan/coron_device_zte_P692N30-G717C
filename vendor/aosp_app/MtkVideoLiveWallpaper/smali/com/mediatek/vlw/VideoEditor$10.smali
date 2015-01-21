.class Lcom/mediatek/vlw/VideoEditor$10;
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

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$10;->this$0:Lcom/mediatek/vlw/VideoEditor;

    iput-object p2, p0, Lcom/mediatek/vlw/VideoEditor$10;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$10;->val$title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$10;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mVideoTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$3200(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$10;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    :cond_0
    return-void
.end method
