.class Lcom/android/mms/ui/CBMessageListActivity$8;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CBMessageListActivity;->confirmThreadDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CBMessageListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$8;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 802
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/CBMessageListActivity$8$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CBMessageListActivity$8$1;-><init>(Lcom/android/mms/ui/CBMessageListActivity$8;)V

    const-string v2, "DeleteThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 831
    return-void
.end method
