.class Lcom/android/mms/ui/ComposeMessageActivity$49;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->addImageAsync(Landroid/net/Uri;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$append:Z

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6027
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$uri:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6030
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowDialogForMultiImage:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 6031
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$uri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$append:Z

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Ljava/lang/String;Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 6032
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->saveAsMms(Z)V
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11300(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 6033
    return-void
.end method
