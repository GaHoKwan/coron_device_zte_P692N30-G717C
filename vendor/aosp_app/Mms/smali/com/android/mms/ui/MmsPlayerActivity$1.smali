.class Lcom/android/mms/ui/MmsPlayerActivity$1;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$1;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$1;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #calls: Lcom/android/mms/ui/MmsPlayerActivity;->forwardMms()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerActivity;->access$000(Lcom/android/mms/ui/MmsPlayerActivity;)V

    .line 539
    return-void
.end method
