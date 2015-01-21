.class Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
.super Landroid/os/AsyncTask;
.source "PrivacyGallaryBucketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listGallayBucketTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->initGallaryBucketBitmap()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$100(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->mListGallayBucketTask:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;->access$202(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;)Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$listGallayBucketTask;

    .line 126
    return-void
.end method
