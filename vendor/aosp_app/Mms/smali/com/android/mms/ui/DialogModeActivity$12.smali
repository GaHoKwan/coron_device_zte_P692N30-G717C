.class Lcom/android/mms/ui/DialogModeActivity$12;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity;->notificationsReceived(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3215
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$12;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3218
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$12;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->showIpMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$900(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 3219
    return-void
.end method
