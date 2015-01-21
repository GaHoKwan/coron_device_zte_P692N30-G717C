.class Lcom/android/mms/ui/ChatPreferenceActivity$11;
.super Ljava/lang/Thread;
.source "ChatPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromSys(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

.field final synthetic val$sourceId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$11;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iput p2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$11;->val$sourceId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$11;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iget v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$11;->val$sourceId:I

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->saveResourceWallpaperToMemory(I)Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$1200(Lcom/android/mms/ui/ChatPreferenceActivity;I)Z

    move-result v0

    .line 747
    .local v0, isSaveForSystem:Z
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$11;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->showSaveWallpaperResult(Z)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$1100(Lcom/android/mms/ui/ChatPreferenceActivity;Z)V

    .line 748
    return-void
.end method
