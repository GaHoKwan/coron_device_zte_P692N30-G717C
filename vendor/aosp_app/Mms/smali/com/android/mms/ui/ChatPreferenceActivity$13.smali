.class Lcom/android/mms/ui/ChatPreferenceActivity$13;
.super Ljava/lang/Thread;
.source "ChatPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromCamResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

.field final synthetic val$chatWallpaperCompressForCamera:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$13;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$13;->val$chatWallpaperCompressForCamera:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 886
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$13;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$13;->val$chatWallpaperCompressForCamera:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->saveWallpaperToMemory(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$1300(Lcom/android/mms/ui/ChatPreferenceActivity;Ljava/lang/String;)Z

    move-result v0

    .line 887
    .local v0, isSaveForCamera:Z
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$13;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->showSaveWallpaperResult(Z)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$1100(Lcom/android/mms/ui/ChatPreferenceActivity;Z)V

    .line 888
    return-void
.end method