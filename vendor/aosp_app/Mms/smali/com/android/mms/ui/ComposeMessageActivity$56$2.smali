.class Lcom/android/mms/ui/ComposeMessageActivity$56$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity$56;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$56;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$56;)V
    .locals 0
    .parameter

    .prologue
    .line 6642
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$56$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$56;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6644
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$56;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f0b01e5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6646
    return-void
.end method
