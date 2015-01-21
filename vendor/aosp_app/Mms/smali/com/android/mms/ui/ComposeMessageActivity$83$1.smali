.class Lcom/android/mms/ui/ComposeMessageActivity$83$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$83;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$83;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$83;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9855
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$83$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$83;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$83$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 9857
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$83$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$83;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$83;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$83$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$83;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$83;->val$ct:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$83$1;->val$count:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$83$1;->val$count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9860
    return-void
.end method
