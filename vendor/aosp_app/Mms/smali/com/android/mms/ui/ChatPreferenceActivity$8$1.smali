.class Lcom/android/mms/ui/ChatPreferenceActivity$8$1;
.super Ljava/lang/Thread;
.source "ChatPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ChatPreferenceActivity$8;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8$1;->this$1:Lcom/android/mms/ui/ChatPreferenceActivity$8;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8$1;->this$1:Lcom/android/mms/ui/ChatPreferenceActivity$8;

    iget-object v1, v1, Lcom/android/mms/ui/ChatPreferenceActivity$8;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ChatPreferenceActivity;->clearWallpaperSingle()Z

    move-result v0

    .line 706
    .local v0, isClearSingle:Z
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$8$1;->this$1:Lcom/android/mms/ui/ChatPreferenceActivity$8;

    iget-object v1, v1, Lcom/android/mms/ui/ChatPreferenceActivity$8;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #calls: Lcom/android/mms/ui/ChatPreferenceActivity;->showSaveWallpaperResult(Z)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$1100(Lcom/android/mms/ui/ChatPreferenceActivity;Z)V

    .line 707
    return-void
.end method
