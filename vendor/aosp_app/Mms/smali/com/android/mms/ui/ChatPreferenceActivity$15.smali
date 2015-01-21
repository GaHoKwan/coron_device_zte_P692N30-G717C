.class Lcom/android/mms/ui/ChatPreferenceActivity$15;
.super Ljava/lang/Object;
.source "ChatPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->notificationsReceived(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$15;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$15;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$15;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1088
    return-void
.end method
