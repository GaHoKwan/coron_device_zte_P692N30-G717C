.class Lcom/zte/heartyservice/common/utils/LevelAnimation$1;
.super Landroid/os/Handler;
.source "LevelAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/utils/LevelAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/utils/LevelAnimation;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/utils/LevelAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation$1;->this$0:Lcom/zte/heartyservice/common/utils/LevelAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 25
    :goto_0
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation$1;->this$0:Lcom/zte/heartyservice/common/utils/LevelAnimation;

    #calls: Lcom/zte/heartyservice/common/utils/LevelAnimation;->nextLevel()V
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/LevelAnimation;->access$000(Lcom/zte/heartyservice/common/utils/LevelAnimation;)V

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
