.class Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
.super Lcom/android/mms/ui/AsyncDialog;
.source "MultiDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardMmsAsyncDialog"
.end annotation


# instance fields
.field private mTempMmsUri:Landroid/net/Uri;

.field private mTempThreadId:J

.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    .line 1791
    invoke-direct {p0, p2}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    .line 1792
    return-void
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempMmsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempMmsUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1786
    iget-wide v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempThreadId:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1786
    iput-wide p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;->mTempThreadId:J

    return-wide p1
.end method
