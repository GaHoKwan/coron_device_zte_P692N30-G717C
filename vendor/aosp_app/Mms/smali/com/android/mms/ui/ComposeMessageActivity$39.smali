.class Lcom/android/mms/ui/ComposeMessageActivity$39;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4829
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4832
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$39;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->resetMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4833
    return-void
.end method
