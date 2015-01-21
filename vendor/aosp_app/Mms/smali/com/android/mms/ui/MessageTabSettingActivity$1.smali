.class Lcom/android/mms/ui/MessageTabSettingActivity$1;
.super Ljava/lang/Thread;
.source "MessageTabSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageTabSettingActivity;->restoreDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

.field final synthetic val$generalFragment:Lcom/android/mms/ui/ClassifyGeneralFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTabSettingActivity;Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/mms/ui/MessageTabSettingActivity$1;->this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessageTabSettingActivity$1;->val$generalFragment:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSettingActivity$1;->val$generalFragment:Lcom/android/mms/ui/ClassifyGeneralFragment;

    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity$1;->this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->clearWallpaperAll(Landroid/content/Context;)Z

    .line 348
    return-void
.end method
