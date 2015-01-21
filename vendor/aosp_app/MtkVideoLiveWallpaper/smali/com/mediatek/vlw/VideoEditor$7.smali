.class Lcom/mediatek/vlw/VideoEditor$7;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoEditor;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$7;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$7;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mMediaController:Lcom/mediatek/vlw/VLWMediaController;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$1600(Lcom/mediatek/vlw/VideoEditor;)Lcom/mediatek/vlw/VLWMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->play()V

    .line 712
    return-void
.end method
