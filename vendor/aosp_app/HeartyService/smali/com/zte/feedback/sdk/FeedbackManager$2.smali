.class Lcom/zte/feedback/sdk/FeedbackManager$2;
.super Ljava/util/TimerTask;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/feedback/sdk/FeedbackManager;->delayFeedback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/sdk/FeedbackManager;


# direct methods
.method constructor <init>(Lcom/zte/feedback/sdk/FeedbackManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/feedback/sdk/FeedbackManager$2;->this$0:Lcom/zte/feedback/sdk/FeedbackManager;

    .line 291
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/zte/feedback/sdk/FeedbackManager$2;->this$0:Lcom/zte/feedback/sdk/FeedbackManager;

    invoke-virtual {v0}, Lcom/zte/feedback/sdk/FeedbackManager;->feedback()V

    .line 295
    return-void
.end method
