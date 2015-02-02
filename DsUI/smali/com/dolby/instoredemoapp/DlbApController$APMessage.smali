.class Lcom/dolby/instoredemoapp/DlbApController$APMessage;
.super Ljava/lang/Object;
.source "DlbApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/instoredemoapp/DlbApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "APMessage"
.end annotation


# instance fields
.field public delayTime:J

.field public message:Landroid/os/Message;

.field final synthetic this$0:Lcom/dolby/instoredemoapp/DlbApController;


# direct methods
.method public constructor <init>(Lcom/dolby/instoredemoapp/DlbApController;JLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "time"
    .parameter "msg"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->this$0:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p2, p0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->delayTime:J

    .line 40
    iput-object p4, p0, Lcom/dolby/instoredemoapp/DlbApController$APMessage;->message:Landroid/os/Message;

    .line 41
    return-void
.end method
