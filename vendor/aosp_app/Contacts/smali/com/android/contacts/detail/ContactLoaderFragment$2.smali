.class Lcom/android/contacts/detail/ContactLoaderFragment$2;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;->createLauncherShortcutWithContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$parentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 3
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 565
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 570
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$parentActivity:Landroid/app/Activity;

    const v1, 0x7f0c010a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 573
    return-void
.end method
