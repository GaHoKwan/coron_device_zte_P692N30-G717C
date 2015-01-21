.class Lcom/android/mms/ui/MultiForwardMessageActivity$7;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$7;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$7;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->finishSelf(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$600(Lcom/android/mms/ui/MultiForwardMessageActivity;I)V

    .line 790
    return-void
.end method
