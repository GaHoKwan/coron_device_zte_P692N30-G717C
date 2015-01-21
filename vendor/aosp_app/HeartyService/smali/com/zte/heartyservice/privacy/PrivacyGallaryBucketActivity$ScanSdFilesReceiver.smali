.class Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyGallaryBucketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanSdFilesReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$400(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    :cond_0
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$400(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$ScanSdFilesReceiver;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$400(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    :cond_3
    return-void
.end method
