.class Lcom/android/mms/ui/MultiDeleteActivity$9;
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

.field final synthetic val$finalSelectSms:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$9;->val$finalSelectSms:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1761
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MultiDeleteActivity$9$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MultiDeleteActivity$9$1;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$9;)V

    const-string v2, "ForwardMessage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1766
    return-void
.end method
