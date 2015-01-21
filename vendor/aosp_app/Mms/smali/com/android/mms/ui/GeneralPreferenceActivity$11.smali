.class Lcom/android/mms/ui/GeneralPreferenceActivity$11;
.super Ljava/lang/Thread;
.source "GeneralPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromSys(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

.field final synthetic val$sourceId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GeneralPreferenceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$11;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    iput p2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$11;->val$sourceId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 948
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$11;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    iget v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$11;->val$sourceId:I

    #calls: Lcom/android/mms/ui/GeneralPreferenceActivity;->saveResourceWallpaperToMemory(I)Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$1500(Lcom/android/mms/ui/GeneralPreferenceActivity;I)Z

    move-result v0

    .line 949
    .local v0, isSaveForSystem:Z
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$11;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->showSaveWallpaperResult(Z)V

    .line 950
    return-void
.end method
