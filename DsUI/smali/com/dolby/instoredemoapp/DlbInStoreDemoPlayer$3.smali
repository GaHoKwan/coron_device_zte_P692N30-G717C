.class Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;
.super Ljava/lang/Object;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->onCreate(Landroid/os/Bundle;)V
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
    .line 127
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$900(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z
    invoke-static {v1, v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$902(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    .line 132
    const-string v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReplayEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z
    invoke-static {v2}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$900(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$900(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$1000(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    :goto_1
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;->this$0:Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;

    #getter for: Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->access$1000(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
