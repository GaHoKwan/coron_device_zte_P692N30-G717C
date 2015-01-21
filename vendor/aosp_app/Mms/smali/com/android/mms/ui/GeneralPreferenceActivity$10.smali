.class Lcom/android/mms/ui/GeneralPreferenceActivity$10;
.super Ljava/lang/Thread;
.source "GeneralPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromCamResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

.field final synthetic val$chatWallpaperCompressForCamera:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GeneralPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$10;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$10;->val$chatWallpaperCompressForCamera:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$10;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    iget-object v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$10;->val$chatWallpaperCompressForCamera:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/GeneralPreferenceActivity;->saveWallpaperToMemory(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$1400(Lcom/android/mms/ui/GeneralPreferenceActivity;Ljava/lang/String;)Z

    move-result v0

    .line 774
    .local v0, isSaveForCamera:Z
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$10;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->showSaveWallpaperResult(Z)V

    .line 775
    return-void
.end method
