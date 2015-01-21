.class Lcom/android/mms/ui/MmsPlayerActivity$6;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerActivity;->updateRecipient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivity;

.field final synthetic val$showString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$6;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MmsPlayerActivity$6;->val$showString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$6;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mRecipient:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1200(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$6;->val$showString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    return-void
.end method
