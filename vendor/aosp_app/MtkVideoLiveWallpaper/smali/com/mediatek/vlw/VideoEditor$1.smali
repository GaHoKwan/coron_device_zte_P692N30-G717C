.class Lcom/mediatek/vlw/VideoEditor$1;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/mediatek/vlw/VLWMediaController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoEditor;
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
    .line 164
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$1;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateState(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$1;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mStartTime:I
    invoke-static {v0, p1}, Lcom/mediatek/vlw/VideoEditor;->access$102(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 173
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$1;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #setter for: Lcom/mediatek/vlw/VideoEditor;->mEndTime:I
    invoke-static {v0, p2}, Lcom/mediatek/vlw/VideoEditor;->access$202(Lcom/mediatek/vlw/VideoEditor;I)I

    .line 174
    return-void
.end method

.method public updateUI(Z)V
    .locals 1
    .parameter "isPlaying"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$1;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->updatePausePlay(Z)V
    invoke-static {v0, p1}, Lcom/mediatek/vlw/VideoEditor;->access$000(Lcom/mediatek/vlw/VideoEditor;Z)V

    .line 168
    return-void
.end method
