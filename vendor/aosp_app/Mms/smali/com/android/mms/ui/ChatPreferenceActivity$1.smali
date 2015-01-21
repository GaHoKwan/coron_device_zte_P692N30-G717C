.class Lcom/android/mms/ui/ChatPreferenceActivity$1;
.super Ljava/lang/Object;
.source "ChatPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$1;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$1;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->showRefreshDialog()V
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$000(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    .line 283
    return-void
.end method
