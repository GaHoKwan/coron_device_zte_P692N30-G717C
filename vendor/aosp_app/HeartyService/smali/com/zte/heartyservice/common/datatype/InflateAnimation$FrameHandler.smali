.class Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;
.super Landroid/os/Handler;
.source "InflateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/InflateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/InflateAnimation;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/common/datatype/InflateAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;->this$0:Lcom/zte/heartyservice/common/datatype/InflateAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/common/datatype/InflateAnimation;Lcom/zte/heartyservice/common/datatype/InflateAnimation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;-><init>(Lcom/zte/heartyservice/common/datatype/InflateAnimation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;->this$0:Lcom/zte/heartyservice/common/datatype/InflateAnimation;

    #getter for: Lcom/zte/heartyservice/common/datatype/InflateAnimation;->DELETE_MSGS:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->access$100(Lcom/zte/heartyservice/common/datatype/InflateAnimation;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/InflateAnimation$FrameHandler;->this$0:Lcom/zte/heartyservice/common/datatype/InflateAnimation;

    #calls: Lcom/zte/heartyservice/common/datatype/InflateAnimation;->reDraw()V
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/InflateAnimation;->access$200(Lcom/zte/heartyservice/common/datatype/InflateAnimation;)V

    .line 118
    return-void
.end method
