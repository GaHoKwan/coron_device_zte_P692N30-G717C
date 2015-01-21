.class Lcom/android/mms/ui/MultiDeleteActivity$6$1;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiDeleteActivity$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$6$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$6$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$6;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->dismissProgressIndication()V
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4500(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1588
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$6$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$6;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1589
    return-void
.end method
