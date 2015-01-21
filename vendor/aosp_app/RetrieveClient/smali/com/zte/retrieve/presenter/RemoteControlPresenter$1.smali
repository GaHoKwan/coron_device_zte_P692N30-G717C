.class Lcom/zte/retrieve/presenter/RemoteControlPresenter$1;
.super Lcom/zte/retrieve/cloud/account/AliveWithUIThread;
.source "RemoteControlPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/RemoteControlPresenter;->fakeSendMsgAndCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

.field private final synthetic val$orderType:I


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/RemoteControlPresenter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    iput p2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter$1;->val$orderType:I

    .line 138
    invoke-direct {p0}, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 143
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lcom/zte/retrieve/presenter/RemoteControlPresenter$1;->sleep(J)V

    .line 144
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter$1;->this$0:Lcom/zte/retrieve/presenter/RemoteControlPresenter;

    iget v2, p0, Lcom/zte/retrieve/presenter/RemoteControlPresenter$1;->val$orderType:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/presenter/RemoteControlPresenter;->sendFakeSendResMsg(II)V

    .line 145
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
