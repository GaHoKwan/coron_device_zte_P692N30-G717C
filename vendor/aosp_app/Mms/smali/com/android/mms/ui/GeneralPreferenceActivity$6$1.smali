.class Lcom/android/mms/ui/GeneralPreferenceActivity$6$1;
.super Ljava/lang/Thread;
.source "GeneralPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GeneralPreferenceActivity$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GeneralPreferenceActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6$1;->this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6$1;->this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$6;

    iget-object v1, v1, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/GeneralPreferenceActivity;->clearWallpaperAll()Z

    move-result v0

    .line 619
    .local v0, isClearAll:Z
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$6$1;->this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$6;

    iget-object v1, v1, Lcom/android/mms/ui/GeneralPreferenceActivity$6;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->showSaveWallpaperResult(Z)V

    .line 620
    return-void
.end method
