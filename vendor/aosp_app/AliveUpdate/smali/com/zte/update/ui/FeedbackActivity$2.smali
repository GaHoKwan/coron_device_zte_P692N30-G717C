.class Lcom/zte/update/ui/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/FeedbackActivity;->initButtonListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zte/update/ui/FeedbackActivity$2;->this$0:Lcom/zte/update/ui/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/update/ui/FeedbackActivity$2;->this$0:Lcom/zte/update/ui/FeedbackActivity;

    invoke-virtual {v0}, Lcom/zte/update/ui/FeedbackActivity;->checkInputAndStart()V

    .line 53
    return-void
.end method
