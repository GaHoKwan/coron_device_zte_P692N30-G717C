.class Lcom/zte/update/ui/FeedbackActivity$3;
.super Ljava/lang/Thread;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/FeedbackActivity;->checkInputAndStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/FeedbackActivity;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/update/ui/FeedbackActivity$3;->this$0:Lcom/zte/update/ui/FeedbackActivity;

    iput-object p2, p0, Lcom/zte/update/ui/FeedbackActivity$3;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/update/ui/FeedbackActivity$3;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/update/ui/FeedbackActivity$3;->this$0:Lcom/zte/update/ui/FeedbackActivity;

    iget-object v1, p0, Lcom/zte/update/ui/FeedbackActivity$3;->val$content:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/update/ui/FeedbackActivity$3;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zte/update/ui/FeedbackActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
