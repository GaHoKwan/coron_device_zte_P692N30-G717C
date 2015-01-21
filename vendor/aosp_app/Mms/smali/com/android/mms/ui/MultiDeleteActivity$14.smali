.class Lcom/android/mms/ui/MultiDeleteActivity$14;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->forwardMessage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$contentbuf:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$14;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$14;->val$contentbuf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$14;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$14;->val$contentbuf:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->showReachLimitDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$5300(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/lang/String;)V

    .line 1937
    return-void
.end method
