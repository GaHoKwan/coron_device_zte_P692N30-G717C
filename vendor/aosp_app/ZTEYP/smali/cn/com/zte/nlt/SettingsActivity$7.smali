.class Lcn/com/zte/nlt/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/nlt/SettingsActivity;->showNewVersionDialog(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/nlt/SettingsActivity;

.field final synthetic val$pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcn/com/zte/nlt/SettingsActivity$7;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    iput-object p2, p0, Lcn/com/zte/nlt/SettingsActivity$7;->val$pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 341
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$7;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #calls: Lcn/com/zte/nlt/SettingsActivity;->checkConnectivityAvailable()Z
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$300(Lcn/com/zte/nlt/SettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$7;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const v1, 0x7f080063

    const/4 v2, 0x0

    #calls: Lcn/com/zte/nlt/SettingsActivity;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcn/com/zte/nlt/SettingsActivity;->access$400(Lcn/com/zte/nlt/SettingsActivity;II)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$7;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity$7;->val$pkgInfo:Lcn/com/zte/nlt/down/UpdatePackageInfo;

    #calls: Lcn/com/zte/nlt/SettingsActivity;->startAsyncTaskForDownloadDb(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    invoke-static {v0, v1}, Lcn/com/zte/nlt/SettingsActivity;->access$1100(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    goto :goto_0
.end method
