.class Lcom/android/launcher2/HideAppsActivity$2;
.super Ljava/lang/Object;
.source "HideAppsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HideAppsActivity;->notifyDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HideAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HideAppsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/launcher2/HideAppsActivity$2;->this$0:Lcom/android/launcher2/HideAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity$2;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mAdapter:Lcom/android/launcher2/HideAppsActivity$AppsAdapter;
    invoke-static {v0}, Lcom/android/launcher2/HideAppsActivity;->access$100(Lcom/android/launcher2/HideAppsActivity;)Lcom/android/launcher2/HideAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 233
    return-void
.end method
