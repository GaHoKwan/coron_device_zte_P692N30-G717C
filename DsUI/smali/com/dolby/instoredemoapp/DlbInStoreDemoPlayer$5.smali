.class Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$5;
.super Ljava/lang/Object;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;


# direct methods
.method constructor <init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$5;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    const/16 v3, 0x7e1

    .line 283
    const-string v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange, focusChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$5;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$800(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$5;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$800(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 290
    :cond_1
    const-string v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange, do nothing for value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
