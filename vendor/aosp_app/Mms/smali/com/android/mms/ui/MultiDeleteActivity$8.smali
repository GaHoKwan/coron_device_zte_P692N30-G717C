.class Lcom/android/mms/ui/MultiDeleteActivity$8;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->prepareToForwardMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$item:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1738
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$8;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$8;->val$item:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1740
    sget v0, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1741
    .local v0, createMode:I
    const/4 v1, 0x0

    sput v1, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1742
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$8;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$8$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MultiDeleteActivity$8$1;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$8;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1747
    sput v0, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1748
    return-void
.end method
