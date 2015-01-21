.class Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DialogModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DialogModeActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    iput-object p2, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1110
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 1118
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteMessageListener.onClick, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1124
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->removeMsg(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/DialogModeActivity;->access$300(Lcom/android/mms/ui/DialogModeActivity;Landroid/net/Uri;)V

    .line 1125
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1128
    return-void
.end method
