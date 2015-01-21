.class Lcom/android/mms/ui/ComposeMessageActivity$50;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Ljava/lang/String;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$append:Z

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6093
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->val$uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6095
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->val$uri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$50;->val$append:Z

    const/4 v3, 0x1

    const v4, 0x7f0b0019

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showConfirmDialog(Landroid/net/Uri;ZII)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11400(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZII)V

    .line 6096
    return-void
.end method
