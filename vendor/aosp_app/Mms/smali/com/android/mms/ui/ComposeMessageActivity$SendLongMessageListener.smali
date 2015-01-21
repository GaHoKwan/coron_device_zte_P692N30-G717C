.class Lcom/android/mms/ui/ComposeMessageActivity$SendLongMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendLongMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 14926
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendLongMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14926
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SendLongMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 14928
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendLongMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendLongMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mbCheckEcmMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$22800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 14929
    return-void
.end method
