.class Lcom/android/protips/ProtipWidget$1;
.super Ljava/lang/Object;
.source "ProtipWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/protips/ProtipWidget;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/protips/ProtipWidget;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/protips/ProtipWidget;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/protips/ProtipWidget$1;->this$0:Lcom/android/protips/ProtipWidget;

    iput-object p2, p0, Lcom/android/protips/ProtipWidget$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/protips/ProtipWidget$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/protips/ProtipWidget$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/protips/ProtipWidget$1;->this$0:Lcom/android/protips/ProtipWidget;

    iget-object v1, p0, Lcom/android/protips/ProtipWidget$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/protips/ProtipWidget$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/protips/ProtipWidget;->onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V

    .line 111
    iget-object v0, p0, Lcom/android/protips/ProtipWidget$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 112
    return-void
.end method
